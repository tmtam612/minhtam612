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
	        ->notEmpty('email', 'Please fill this field')
	        ->maxLength('email', 255)
	        ->minLength('email', 10)
	        ->add('email', 'unique', [
                    'rule' => 'validateUnique',
                    'provider' => 'table',
                    'message' => 'Email is already used'
             ]);

	    return $validator;
	}
	public function buildRules(RulesChecker $rules)
    {
       $rules->add([$this, 'validateUnique'], 'validateUnique', [
    'errorField' => 'email',
    'message' => 'This invoice cannot be moved to that status.'
]);
        return $rules;
    }
}
?>