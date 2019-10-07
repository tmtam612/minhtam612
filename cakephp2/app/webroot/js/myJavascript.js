
	window.fbAsyncInit = function() {
		FB.init({
            appId : '624680341634823',
            cookie : true,
            xfbml : true,
            version : 'v3.1'
		});
		FB.AppEvents.logPageView();
		FB.getLoginStatus(function(response) {
		statusChangeCallback(response);
		});
    };
    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
         
    function statusChangeCallback(response) {
        if (response.status === 'connected') {console.log('Đã xác thực thành công');} else if (response.status === 'not_authorized') {
        console.log('Xác thực chưa thành công');
        }
    }
	function loginFaceBook() {
		FB.login(function(response) {
			if(response.status==='connected') {
				getFbUserData();
			}
		}, {scope: 'public_profile,email'});
	}
	function getFbUserData(){
		FB.api('/me', {locale: 'en_US', fields: 'id,first_name,last_name,email,picture'},
		function (response) {
			saveUserData(response);
		});
	}
	function saveUserData(userData){
		$.post('users/loginFB',{oauth_provider:'facebook',userData: JSON.stringify(userData)},
			function(data){
				if(data === false){
					alert('Login failed');
				}else{
                    var url = $('#loginSuccess').attr('data-url');
                    window.location.href = url;
				}
			}
		);
    }
    function logout() {
        var url = $('#logout').attr('data-url');
        window.location.href = url;
	}
	function loginGoogleAccount() {
		window.location = '<?php echo $loginUrl ?>'
	}
	function loginNormal() {
		var data = $('#infoLogin').serialize();
		var url = $('#linkLogin').attr('data-url');
		$.ajax({
			url: url,
			data: data,
			type: 'POST',
			success: function(res) {
				resetDivError();
				if(res.type == 'fail') {
					if(typeof(res.msg) == 'string') {
						$('#email').closest('div').addClass('error-div');
						$('#password').closest('div').addClass('error-div');
						$('#login-msg').show();
						$('#login-msg').text(res.msg);
					}
					for(var key in res.msg) {
						var div = $('#'+key).closest('div');
						changeStatusDiv(div, key, res.msg[key]);
					}
				} else {
					var url = $('#loginSuccess').attr('data-url');
                    window.location.href = url;
				}
			}
		});
	}
	function resetDivError(){
		$('#email').closest('div').removeClass('error-div');
		$('#password').closest('div').removeClass('error-div');
		$('#login-msg').text('');
		$('#login-msg').hide();
		$('#email-msg').hide();
		$('#password-msg').hide();
		$('#email-msg').text('');
		$('#password-msg').text('');
	}
	function changeStatusDiv(object, key, msg) {
		$(object).removeClass('error-div');
		$(object).addClass('error-div');
		$('#'+key+'-msg').text('');
		$('#'+key+'-msg').show();
		$('#'+key+'-msg').text(msg);
	}
	function addUser(e) {
		e.preventDefault();
		$('#myModal').empty();
		var url = $('#linkCreateUser').attr('data-url');
		$.get({
			url: url,
			success: function(res) {
				console.log(res);
				$('#myModal').modal('show');
				$('#myModal').append(res);
			}
		});
	}
	$(document).on("click","#btnOK", function(e) {
		e.preventDefault();
		var url = $('#linkCreate').attr('data-url');
		var formData = $('#createUser').serialize();
		$.ajax({
			url: url,
			type: "POST",
			data: formData,
			success: function(res) {
				resetError();
				if(res.type == 'fail') {
					if(typeof(res.msg) == 'string') {
						$('#create-email').closest('div').addClass('error-div');
						$('#create-password').closest('div').addClass('error-div');
						$('#create-name').closest('div').addClass('error-div');
						$('#create-confirmPass').closest('div').addClass('error-div');
						$('#create-msg').show();
						$('#create-msg').text(res.msg);
					}
					for(var key in res.msg) {
						var div = $('#create-'+key).closest('div');
						changeStatusDiv(div,"create-"+ key, res.msg[key]);
					}
				} else {
					$('#create-msg').show();
					$('#create-msg').text(res.msg);
				}
			}
		});
	});
	function resetError() {
		$('#create-email').closest('div').removeClass('error-div');
		$('#create-password').closest('div').removeClass('error-div');
		$('#create-name').closest('div').removeClass('error-div');
		$('#create-confirmPass').closest('div').removeClass('error-div');
		$('#create-msg').text('');
		$('#create-msg').hide();
		$('#create-name-msg').hide();
		$('#create-name-msg').text('');
		$('#create-email-msg').hide();
		$('#create-email-msg').text('');
		$('#create-password-msg').hide();
		$('#create-password-msg').text('');
		$('#create-confirmPass-msg').hide();
		$('#create-confirmPass-msg').text('');
	}