<div class="modal-dialog">
<form class="login100-form validate-form" id="createUser">
	<div class="modal-content" style="width:100%">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h4 class="modal-title" id="myModal-label">User</h4>
			<?php echo $this->Flash->render(); ?>
			<span id="alert" role="alert"></span>
		</div>
		<div class="modal-body">
			<div align="center" class="wrap-input100" id="create-msg" style="display:none;margin-top: 30px;color:green;font-weight:bold;font-size: 15px;">

			</div>
			<div class="wrap-input100 error-msg" id="create-name-msg" style="display:none">

			</div>

			<div class="wrap-input100" style="margin-bottom:10px">
				<input class="input100" type="text" name="name" placeholder="Name" id="create-name">
				<span class="focus-input100"></span>
				<!-- <span class="symbol-input100">
					<span class="lnr lnr-envelope"></span>
				</span> -->
			</div>
			
			<!-- <div class="wrap-input100 error-msg" id="dateofbirth-msg" style="display:none">

			</div>

			<div class="wrap-input100" style="margin-bottom:10px" id='datetimepicker4'>
				<input type='text' class="input100" name="dateofbirth" placeholder="Date of Birth" id="Date of Birth"/>
				<span class="focus-input100"></span>
                 <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span>
			</div> -->
			<div class="wrap-input100 error-msg" id="create-email-msg" style="display:none">

			</div>

			<div class="wrap-input100" style="margin-bottom:10px">
				<input class="input100" type="text" name="email" placeholder="Email" id="create-email">
				<span class="focus-input100"></span>
				<!-- <span class="symbol-input100">
					<span class="lnr lnr-envelope"></span>
				</span> -->
			</div>
			<div class="wrap-input100 error-msg" id="create-password-msg" style="display:none">

			</div>
			<div class="wrap-input100" style="margin-bottom:10px">
				<input class="input100" type="password" name="password" placeholder="Password" id="create-password" >
				<span class="focus-input100"></span>
				<!-- <span class="symbol-input100">
					<span class="lnr lnr-lock"></span>
				</span> -->
			</div>
			<div class="wrap-input100 error-msg" id="create-confirmPass-msg" style="display:none">

			</div>
			<div class="wrap-input100">
				<input class="input100" type="password" name="confirmPass" placeholder="Confirm Password" id="create-confirmPass" >
				<span class="focus-input100"></span>
				<!-- <span class="symbol-input100">
					<span class="lnr lnr-lock"></span>
				</span> -->
			</div>
		</div>
		<div class="modal-footer">
			<button class="btn btn-primary" id="btnOK" >OK</button>
			<button class="btn btn-default" id="btnCancel" data-dismiss="modal">Cancel</button>
		</div>
	</div>
	</form>
</div>