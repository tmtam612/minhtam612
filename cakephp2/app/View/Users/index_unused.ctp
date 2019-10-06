<?php echo $this->Html->script('myJavascript'); ?>
<p>Hello there!</p>
<input type="hidden" id="logout" data-url="<?php echo Router::url(array(
													'controller' => 'users',
													'action' => 'logout'
												));?>" />
<input type="button" class="btn btn-danger" onclick="logout()" value="Go Back"/>