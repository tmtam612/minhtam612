<?php
namespace App\Model\Logic;
use Cake\ORM\TableRegistry;
use Cake\ORM\Table;
use App\Model\Table\UserTable;
use App\Model\Entity\User;
class UsersLogic {
	public function __construct() {
		$this->userTb = TableRegistry::get('Users');
	}
	public function getAllUsers() {
		return $this->userTb->find('all',[
			'conditions' => [
				'delete_flg' => 0,
			]
		])->where(["delete_flg" => 0]);
	}
	public function addUser($user,$data) {
		$user = $this->userTb->patchEntity($user, $data);
		if($this->userTb->save($user)) {
			return $result = ['status' => 'success', 'msg' => 'The user has been saved'];
		}
		return $result = [ 'status' => 'danger' , 'msg' => $user->errors() ];
	}
	public function getUser($id) {
		return $this->userTb->get($id);
	}
	public function editUser($user,$data) {
		$user = $this->userTb->patchEntity($user, $data);
		$hash = new DefaultPasswordHasher();
		$user->password = $hash->hash($data['password']);
		$user->modified = date('Y-m-d');
		if($this->userTb->save($user)) return 1;
		else return -1;
	}
	public function deleteUser($user) {
		$user->delete_flg = 1;
		if($this->userTb->save($user)) return 1;
		else return -1;
	}
}
?>