<?php
namespace App\Model\Logic;
use Cake\ORM\TableRegistry;
use Cake\Auth\DefaultPasswordHasher;
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
		])->toList();
	}
	public function addUser($data) {
		$userEntity = $this->userTb->newEntity();
		$user = new User();
		$user = $this->userTb->patchEntity($user, $data);
		$hash = new DefaultPasswordHasher();
		$user->password = $hash->hash($data['password']);
		$user->created = date('Y-m-d');
		$user->modified = date('Y-m-d');
		$user->delete_flg = 0;
		if($this->userTb->save($user)) return 1;
		else return -1;
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