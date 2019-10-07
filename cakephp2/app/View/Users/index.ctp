<?php echo $this->Html->script('myJavascript'); ?>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">
				<form class="login100-form validate-form" id="infoLogin">
					<span class="login100-form-title p-b-55">
						Login
					</span>
					
					<div class="wrap-input100 error-msg" id="login-msg" style="display:none;margin-top: -40px;">

					</div>
					<div class="wrap-input100 error-msg" id="email-msg" style="display:none">

					</div>
					
					<div class="wrap-input100" style="margin-bottom:10px">
						<input class="input100" type="text" name="email" placeholder="Email" id="email" value="<?php echo isset($emailSession) && !empty($emailSession) ? $emailSession : '';?>">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>
					<div class="wrap-input100 error-msg" id="password-msg" style="display:none">

					</div>
					<div class="wrap-input100">
						<input class="input100" type="password" name="password" placeholder="Password" id="password" value="<?php echo isset($passSession) && !empty($passSession) ? $passSession : '';?>">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="" style="margin-top:10px;width:50%">
						<input class="" id="ckb1" type="checkbox" name="remember-me" style="margin-right:5px;" id="saveSession" value="1"/>
						<label class="" for="ckb1" style="position:absolute;">Remember me</label>
					</div>
					
					<div class="container-login100-form-btn p-t-25">
						<input type="button" class="login100-form-btn" onclick="loginNormal();" value="Login"/>
					</div>

					<div class="text-center w-full p-t-42 p-b-22">
						<span class="txt1">
							Or login with
						</span>
					</div>

					<a onclick="loginFaceBook()" class="btn-face m-b-10">
						<i class="fa fa-facebook-official"></i>
						Facebook
					</a>

					<a onclick="loginGoogleAccount()" class="btn-google m-b-10">
						<?php echo $this->Html->image('icon-google.png', array('alt' => 'GOOGLE')); ?>
						Google
					</a>

					<div class="text-center w-full p-t-115">
						<span class="txt1">
							Not a member?
						</span>

						<a class="txt1 bo1 hov1" onClick="addUser(event);">
							Sign up now							
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<input type="hidden" id="linkCreate" data-url="<?php echo Router::url('add');?>" />
	<input type="hidden" id="linkCreateUser" data-url="<?php echo Router::url('addUser');?>" />
	<input type="hidden" id="linkLogin" data-url="<?php echo Router::url('loginNormal');?>" />
	<input type="hidden" id="loginSuccess" data-url="<?php echo Router::url(array(
													'controller' => 'users',
													'action' => 'loginSuccess'
												));?>" />
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
