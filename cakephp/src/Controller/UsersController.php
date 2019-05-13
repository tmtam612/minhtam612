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
		$saveResult = [];
		$user = new User();
		if($this->request->is('post')) {
			$userObject = new UsersLogic();
			$data = $this->request->getData();
			$saveResult = $userObject->addUser($user,$data);
		}
		$this->set(compact('saveResult','user'));
		$this->set('_serialize','saveResult');
		
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