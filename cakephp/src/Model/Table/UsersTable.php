<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\ORM\Query;
use Cake\Validation\Validator;
class UsersTable extends Table {
	public function initialize(array $config)
	{
		parent::initialize($config);
 		$this->setTable('users');
		$this->setDisplayField('id');
		$this->setPrimaryKey('id'); 
		$this->addBehavior('Timestamp'); 
	}
	// public function validationDefault(Validator $validator)
	// {
	//     $validator
	//         ->allowEmptyString('email', false)
	//         ->maxLength('email', 255)
	//         ->allowEmptyString('password', false)
	//         ->minLength('password', 10)
	//         ->allowEmptyString('password_confirm', false)
	//         ->maxLength('password_confirm', 255);
	//     return $validator;
	// }
}
?>