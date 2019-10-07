<?php
/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = __d('cake_dev', 'CakePHP: the rapid development php framework');
$cakeVersion = __d('cake_dev', 'CakePHP %s', Configure::version())
?>
<!DOCTYPE html>
<html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeDescription ?>:
		<?php echo $this->fetch('title'); ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->css('bootstrap.min');
		// echo $this->Html->css('font-awesome.min');
		echo $this->Html->css('icon-font.min');
		echo $this->Html->css('animate');
		echo $this->Html->css('hamburgers.min');
		// echo $this->Html->css('select2.min');
		echo $this->Html->css('util');
		echo $this->Html->css('main');
		
		echo $this->Html->script('jquery-3.4.1.min');
		echo $this->Html->script('jquery.min');
		echo $this->Html->script('bootstrap.min');
		echo $this->Html->script('jquery-ui');
		//echo $this->Html->css('cake.generic');
		
		echo $this->Html->script('popper');
		echo $this->Html->script('select2.min');
		echo $this->Html->script('main');
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
</head>
<body>
	<div id="container">
		<!-- <div id="content"> -->
			<?php echo $this->Flash->render(); ?>
			<?php echo $this->fetch('content'); ?>
		<!-- </div> -->
	</div>
</body>
</html>
