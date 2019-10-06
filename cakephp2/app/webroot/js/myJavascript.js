
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
		$.ajax({
			url: "http://localhost:8080/cakephp2/Users/loginNormal",
			data: data,
			type: 'POST',
			success: function(res) {
				resetDivError();
				if(res.type == 'fail') {
					if(typeof(res.msg) == 'string') {
						$('#email').closest('div').addClass('error-div');
						$('#pass').closest('div').addClass('error-div');
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
		$('#pass').closest('div').removeClass('error-div');
		$('#login-msg').text('');
		$('#login-msg').hide();
		$('#email-msg').hide();
		$('#pass-msg').hide();
		$('#email-msg').text('');
		$('#pass-msg').text('');
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
		$('#myModal').modal();
		$.get({
			url: 'http://localhost:8080/cakephp2/Users/addUser',
			success: function(res) {
				$('#myModal').append(res);
			}
		});
	}