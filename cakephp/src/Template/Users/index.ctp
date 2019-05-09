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
 * @since         0.10.0
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */
use Cake\Cache\Cache;
use Cake\Core\Configure;
use Cake\Core\Plugin;
use Cake\Datasource\ConnectionManager;
use Cake\Error\Debugger;
use Cake\Network\Exception\NotFoundException;

$this->layout = false;

if (!Configure::read('debug')) :
    throw new NotFoundException(
        'Please replace src/Template/Pages/home.ctp with your own version or re-enable debug mode.'
    );
endif;
$userTable = (isset($result)) ? $result : [];
$cakeDescription = 'CakePHP: the rapid development PHP framework';
?>
<!DOCTYPE html>
<html>

</script>
<head>
    <?= $this->Html->charset() ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <?= $cakeDescription ?>
    </title>

    <?= $this->Html->meta('icon') ?>
    <?= $this->Html->css('bootstrap.min.css') ?>
    <?= $this->Html->css('base.css') ?>
    <?= $this->Html->css('style.css') ?>
    <?= $this->Html->css('home.css') ?>
    <?php echo $this->Html->script('jquery-3.4.1.min.js') ?>
	<?php echo $this->Html->script('bootstrap.min.js') ?>
    <link href="https://fonts.googleapis.com/css?family=Raleway:500i|Roboto:300,400,700|Roboto+Mono" rel="stylesheet">
</head>
<body class="home">

<header class="row">
    <div class="header-image"><?= $this->Html->image('cake.logo.svg') ?></div>
    <div class="header-title">
        <h1>Welcome to CakePHP <?= Configure::version() ?> Red Velvet. Build fast. Grow solid.</h1>
    </div>
</header>

<div class="row">
    <div class="columns large-12">
    	<input type="hidden" name="addNew" id="addNew" value="addNew">
    	<button type="button" class="btn btn-primary" id="btnAddUser">Add</button>
    	<div class="modal fade" data-id="new" id="myModal" role="dialog" data-url="<?php echo $this->Url->build(["controller" => "Users","action" => "addUser",]); ?>"></div>
    	<table class="table">
    		<thead>
	    		<tr>
	    			<th hidden="true"></th>
	    			<th><?php echo $this->Paginator->sort('email') ?></th>
	    			<th><?php echo $this->Paginator->sort('Created') ?></th>
	    		</tr>
    		</thead>
    		<tbody>
    		<?php foreach($userTable as $key => $value): ?>

    			<tr id="row" data-url="<?php echo $this->Url->build(["controller" => "Users","action" => "editUser",$value->id]); ?>">
    				<td hidden="true">
    					<?php echo $this->Form->input('',[
    						'type' => 'hidden',
    						'name' => 'id',
    						'value' => $value->id,
    					]);?>
    				</td>
    				<td>
						<?php echo $value->email ?>
    				</td>
    				<td>
    					<?php echo date('d/m/Y',strtotime($value->created)) ?>
    				</td>
    			</tr>
    		<?php endforeach?>
    		</tbody>
    	</table>
    	<div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
    </div>
</div>

</body>
</html>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btnAddUser').click(function() {
			var url = $('#myModal').data('url');
			$.get(url,function(data) {
				$('#myModal').html(data);
				$('#myModal').modal('show');
			});
		});
		$('tr#row').each(function(index){
			$(this).on("click", function(){
        		var url = $(this).data('url');
        		$.get(url,function(data) {
					$('#myModal').html(data);
					$('#myModal').modal('show');
				});
    		});
    	});
	});
</script>