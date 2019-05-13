<?php
namespace App\Model\Entity;
use Cake\ORM\Entity;
use Cake\Auth\DefaultPasswordHasher;
class User extends Entity {
	public function _setPassword($password) {
		$hash = new DefaultPasswordHasher();
		return $hash->hash($password);
	}
	// public function _setDeleteFlg() {
	// 	return 'false';
	// }
}
?>