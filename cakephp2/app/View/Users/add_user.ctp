<div class="modal-dialog">
<?php echo $this->Form->create('User'); ?>
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h4 class="modal-title" id="myModal-label">User</h4>
			<?php echo $this->Flash->render(); ?>
			<span id="alert" role="alert"></span>
		</div>
		<div class="modal-body">
			<div class="form-group">
				<?php echo $this->Form->input('email',[
					'label' => 'Email',
					'type' => 'email',
				]); ?>
			</div>
			<div class="form-group">
				<?php echo $this->Form->input('password',[
					'label' => 'Password',
					'type' => 'password',
				]); ?>
			</div>
			<div class="form-group">
				<?php echo $this->Form->input('password_confirm',[
					'label' => 'Password Confirm',
					'type' => 'password',
				]); ?>
			</div>
		</div>
		<div class="modal-footer">
			<button class="btn btn-primary" id="btnOK" >OK</button>
			<button class="btn btn-default" id="btnCancel" data-dismiss="modal">Cancel</button>
		</div>
	</div>
	<?php echo $this->Form->end(); ?>
</div>
<script type="text/javascript">
	$("#btnOK").click(function(e) {
		e.preventDefault();
		var formData = $('form').serialize();
		$.ajax({
			url: "<?php echo Router::url('addUser'); ?>",
			type: "POST",
	 		dataType: "HTML",
			data: formData,
		}).done(function(res) {
			alert('<?php echo $this->Flash->render(); ?>');
			$('#alert').text('<?php echo $this->Flash->render(); ?>');
		});
	});
</script>