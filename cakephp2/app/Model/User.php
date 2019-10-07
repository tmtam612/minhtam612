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
		$data['delete_flg'] = 0;
		// $data['password'] = Security::hash($data['password'], 'blowfish');
		$newData['Users'] = $data;
		return $this->save($newData);
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
				// 'password' => $this->matchPasswords($data['password']),
				'password' => $data['password'],
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
			'password' => array(
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
	public function checkPassword($data){
        if($this->data['User']['password']==$this->data['User']['confirmPass']){
            return true;
        }
        $this->invalidate('confirmPass', 'Không trùng khớp mật khẩu');
        return false;
    }
	public function validateAddUser($data) {
		$errors = [];
		$validate = array(
            'password' => array(
                
                'not empty' => array(
                    'rule' => 'notBlank',
                    'message' => 'Mật khẩu không được để trống'
				),
				'too long' => array(
                    'rule' => array('between', 1, 32),
                    'message' => 'Mật khẩu phải từ 1 ký tự đến 32 ký tự'
                ),
                'Match Password' => array(
                    'rule' => 'checkPassword',
                    'message' => 'Không trùng khớp mật khẩu'
                )
            ),
            'confirmPass' => array(
				'not empty' => array(
                    'rule' => 'notBlank',
                    'message' => 'Vui lòng xác nhận mật khẩu'
                ),
                'too long' => array(
                    'rule' => array('between', 1, 32),
                    'message' => 'Nhập 1 - 32 ký tự'
                )
            ),
            'email' => array(
				'not empty' => array(
					'rule' => 'notBlank',
					'message' => 'Vui lòng nhập email'
				),
                'valid email' => array(
                    'rule' => 'email',
                    'message' => 'Nhập địa chỉ email hợp lệ'
                ),
                'duplicate email' => array(
                    'rule'=>'isUnique',
                    'message' => 'email đã có người sử dụng'
                )
            ),
            'name' => array(
                'not empty' => array(
                    'rule' => 'notBlank',
                    'message' => 'Vui lòng nhập họ tên'
                )
            )
		);
		$this->set($data);
		$this->validate = $validate;
		//debug($this->validates($validate));exit;
		if(!$this->validates($validate)) {
			$errors = $this->validationErrors;
		}
		return $errors;
	}
}
?>