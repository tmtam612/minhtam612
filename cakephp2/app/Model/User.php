<?php
App::uses('AppModel', 'Model');
App::uses('Security', 'Utility');
class User extends Model {
	public $useTable = 'users';
	
	public function getAllUsers() {
		$user =  $this->find('all');
		return Hash::extract($user,'{n}.{s}');
	}
	public function addUser($data) {
		return $this->saveAll($data);
	}
	public function checkExistUser($data) {
		$sql = "email like '%"+$data['email']+"%'";
		$result = $this->User->find('first', array(
			'fields' => array('id','email', 'name'),
			'conditions'=>array($sql),
			'recursive' =>-1
		));
		return result;
	}
	public function loginNormal($data) {
		$result = $this->find('all', array(
			'fields' => 'email',
			'conditions' => [
				'delete_flg' => false,
				'email' => $data['email'],
				'password' => $this->matchPasswords($data['pass']),
			],
			'recursive' => -1
		));
		return count($result) > 0 ? true : false;
	}
	public function validateUser($data) {
		$errors = [];
		$validate = array(
			'email' => array(
				'not empty' => array(
					'rule' => 'notBlank',
					'message' => 'Vui lòng nhập email'
				),
				'valid email' => array(
					'rule' => 'email',
					'message' => 'Nhập địa chỉ email hợp lệ'
				)
			),
			'pass' => array(
				'not empty' => array(
					'rule' => 'notBlank',
					'message' => 'Mật khẩu không được để trống'
				)
			),
		);
		$this->set($data);
		$this->validate = $validate;
		//debug($this->validates($validate));exit;
		if(!$this->validates($validate)) {
			$errors = $this->validationErrors;
		}
		return $errors;
	}
	public function beforeSave($options = array()) {
        // Use bcrypt
        if (isset($this->data['User']['password'])) {
            $hash = Security::hash($this->data['User']['password'], 'blowfish');
            $this->data['User']['password'] = $hash;
        }
        return true;
    }
    public function matchPasswords($pass){
        if(isset($pass) && !empty($pass)) {
			return Security::hash($pass, 'blowfish');
		}
    }
}
?>