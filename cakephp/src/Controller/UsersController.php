<?php
namespace App\Controller;
use App\Controller\AppController;
use App\Model\Logic\UsersLogic;
use App\Model\Entity\User;
class UsersController extends AppController {
	public function index() {
		$user = new UsersLogic();
		$result = $user->getAllUsers();
		$result = $this->paginate($result);
		$this->set(compact('result'));
	}
	public function addUser($item = null) {
		$this->layout = "ajax";
		$data = [];
		$result = [];
		$userObject = new UsersLogic();
		$user = new User();
		if($this->request->is('post')) {
			$data = $this->request->getData();
			$saveResult = $userObject->addUser($data);
			debug($saveResult);exit;
			if($saveResult == 1) {
				$result['type'] = 'success';
				$result['message'] = 'The user has been saved';
			}
			else {
				$result['type'] = 'danger';
				$result['message'] = 'The user has errors';
			}
		}
		$this->set(compact('result','user'));
		$this->set('_serialize','result');
		
	}
	public function editUser($item = null) {
		$this->layout = "ajax";
		$data = [];
		$result = [];
		$userObject = new UsersLogic();
		$user = $userObject->getUser($item);
		if($this->request->is(['patch', 'post', 'put'])) {
			$data = $this->request->getData();
			$checkDelete = $this->request->getData('checkDelete');
			if(isset($checkDelete) && $checkDelete !='') {
				$saveResult = $userObject->deleteUser($user);
				if($saveResult == 1) {
					$result['type'] = 'success';
					$result['message'] = 'The user has been deleted successfully';
				}
				else {
					$result['type'] = 'danger';
					$result['message'] = 'The user has not edited edited';
				}
			}
			else {
				$saveResult = $userObject->editUser($user,$data);
				if($saveResult == 1) {
					$this->Flash->success("abc");
				}
				else {
					$result['type'] = 'danger';
					$result['message'] = 'The user has not been edited';
				}
			}
		}
		$this->set(compact('result','user'));
		$this->set('_serialize','result');
	}
}
?>