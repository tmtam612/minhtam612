
<div class="container">
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="modal-dialog">
			<?php echo $this->Form->create($user); ?>
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModal-label">User</h4>
					<div id="alert" style="display: none">
					</div>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<?php echo $this->Form->control('id',[
							'type' => 'hidden',
						]); ?>
					</div>
					<div class="form-group">
						<?php echo $this->Form->control('email',[
							'label' => 'Email',
							'type' => 'email',
						]); ?>
					</div>
					<div class="form-group">
						<?php echo $this->Form->control('password',[
							'label' => 'Password',
							'type' => 'password',
						]); ?>
					</div>
					<div class="form-group">
						<?php echo $this->Form->control('password_confirm',[
							'label' => 'Password Confirm',
							'type' => 'password',
						]); ?>
					</div>
				</div>
				<input type="hidden" id="hiddenCheckDelete" name="checkDelete">
				<div class="modal-footer">
					<button class="btn btn-primary" id="btnOK">OK</button>
					<button class="btn btn-danger" id="btnDelete">Delete</button>
					<button class="btn btn-default" id="btnCancel" data-dismiss="modal">Cancel</button>
				</div>
				<?php echo $this->Form->end(); ?>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$("#btnOK").click(function(e) {
		e.preventDefault();
		var formData = $('form').serialize();
		$.ajax({
			url: "<?php echo $this->Url->build(["controller" => "Users","action" => "editUser",$user->id]); ?>",
			type: "PUT",
			dataType: "json",
			data: formData,
		}).done(function(res) {
			$('#alert').addClass("alert alert-dismissible alert-"+res.type);
			$("#alert").removeAttr('style');
			$('#alert').text(res.message);
		});
	});
	$('#alert').click(function(e) {
		$('#alert').css("display","none");
	});
	$('#btnCancel').click(function(e) {
		location.reload();
	});
	$("#btnDelete").click(function(e) {
		e.preventDefault();
		$('#hiddenCheckDelete').val('delete');
		var formData = $('form').serialize();
		$.ajax({
			url: "<?php echo $this->Url->build(["controller" => "Users","action" => "editUser",$user->id]); ?>",
			type: "PUT",
			dataType: "json",
			data: formData,
		}).done(function(res) {
			$('#alert').addClass("alert alert-dismissible alert-"+res.type);
			$("#alert").removeAttr('style');
			$('#alert').text(res.message);
		});
	});
</script>