<?php
namespace App\Model\Table;
use Cake\ORM\Table;
use Cake\ORM\Query;
use Cake\Validation\Validator;
use Cake\ORM\RulesChecker;
use Cake\ORM\Rule\IsUnique;
class UsersTable extends Table {
	public function initialize(array $config)
	{
		parent::initialize($config);
 		$this->setTable('users');
		$this->setDisplayField('id');
		$this->setPrimaryKey('id'); 
		$this->addBehavior('Timestamp');
	}
	public function validationDefault(Validator $validator)
	{
		$validator
			->email('email')
			->add('email',[
				'notEmpty' => [
					'rule' => 'notEmpty',
					'last' => true,
					'message' => 'Please fill this field',
				],
				'maxLength' => [
					'rule' => ['maxLength' , 50],
					'last' => true,
					'message' => 'Email must be less than 50 characters',
				],
				'minLength' => [
					'rule' => ['minLength' , 8],
					'last' => true,
					'message' => 'Email must be more than 8 characters',
				],
				'unique' => [
					'rule' => 'validateUnique',
					'provider' => 'table',
					'message' => 'Email is already used',
				]
			]);

		$validator
			->add('password',[
				'notEmpty' => [
					'rule' => 'notEmpty',
					'last' => true,
					'message' => 'Please fill this field',
				],
				'maxLength' => [
					'rule' => ['maxLength' , 50],
					'last' => true,
					'message' => 'Password must be less than 50 characters',
				],
				'minLength' => [
					'rule' => ['minLength' , 8],
					'last' => true,
					'message' => 'Password must be more than 8 characters',
				],
			]);	
		$validator
			->sameas('password_confirm','password','Password confirm must be same as password')
			->add('password_confirm',[
				'notEmpty' => [
					'rule' => 'notEmpty',
					'last' => true,
					'message' => 'Please fill this field',
				],
				'maxLength' => [
					'rule' => ['maxLength' , 50],
					'last' => true,
					'message' => 'Password must be less than 50 characters',
				],
				'minLength' => [
					'rule' => ['minLength' , 8],
					'last' => true,
					'message' => 'Password must be more than 8 characters',
				],
			]);		
	    return $validator;
	}

}
?>