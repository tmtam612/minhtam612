<?php
namespace App\Model\Entity;
use Cake\ORM\Entity;
class User extends Entity {
	protected $_accessible = [
		'id' => true,
		'email' => true,
		'modified' => true,
	];
}
?>