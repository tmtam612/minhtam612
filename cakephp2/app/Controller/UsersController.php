<?php
App::uses('AppController', 'Controller');
App::uses('User','Model');
class UsersController extends AppController {
	public function index() {
		$emailSession = $this->Session->read('emailSession');
		$passSession = $this->Session->read('passSession');
		$this->set(compact('emailSession','passSession'));
	}
	public function addUser() {
		$this->layout = 'ajax';
		if($this->request->is('post')) {
			$data = $this->request->data;
			if($this->User->validateUser($data)) {
				$result = $this->User->addUser($data);
			} else {
				$result = false;
			}
			if( $result ) {
				$this->Flash->success('The User has been save successfully');
				return $this->redirect('addUser');
			}
			else {
				$this->Flash->error('The User has not been save successfully');
			}
		}
		$this->render('add_user');
	}
	public function loginFB() {
		$userData = array();
		$this->layout = 'ajax';
		$this->autoRender = false;
		$dataUserFB = json_decode($_POST['userData']);
		if(!empty($dataUserFB)){
			$userData['fb_id'] = $dataUserFB->id;
			$userData['name'] = $dataUserFB->first_name." ".$dataUserFB->last_name;
			$userData['email'] = $dataUserFB->email;
			$userData['avatar_face'] = "https://graph.facebook.com/".$userData['fb_id']."/picture?type=large";
			
			$now = date('Y:m:d H:i:s');
			$userData['date_created'] = $now;
			$userData['date_updated'] = $now;
			$userData['group_id'] = 3;
			$userDataInsert['User'] = $userData;
			$data = $this->User->checkExistUser($userData);
			if (!empty($data)) {
				debug(1);
				$this->Session->write('User',$data);
				return json_encode($data);
			} else {
				if($this->User->save($userDataInsert)){
					$this->Session->write('User',$userDataInsert);
					return json_encode($userData);
				} else {
					return false;
				}
			}
		}
	}
	public function loginSuccess() {
		$this->render("index_unused");
	} 
	public function logout(){
		$this->Session->delete('User');
		$this->redirect(array('action' => 'index'));
	}
	public function loginNormal() {
		$this->layout = false;
		$response = [];
		if($this->request->is('post')) {
			$data = $this->request->data;
			if(isset($data['remember-me']) && $data['remember-me'] == 1) {
				$this->Session->write('emailSession', $data['email']);
				$this->Session->write('passSession', $data['pass']);
			}
			$validateError = $this->User->validateUser($data);
			if (count($validateError) == 0) {
				$result = $this->User->loginNormal($data);
				if($result) {
					$this->Session->write('User',$data);
					$response['type'] = 'success';
				} else {
					$response['type'] = 'fail';
					$response['msg'] = 'Tài khoản không tồn tại hoặc mật khẩu sai';
				}
			} else {
				$response['type'] = 'fail';
				$response['msg'] = $validateError;
			}
		}
		$this->render(false);
		$this->response->body(json_encode($response));
		$this->response->type('application/json');
		return $this->response;
	}
}