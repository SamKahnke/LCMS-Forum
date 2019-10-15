const PHPBB_ROOT = '../phpbb/';
var UserName = 'JessicaAdmin';
var Password = 'baxter42';
// var LoginURL = 'ucp.php?mode=login&amp;';
var LoginURL = 'http://localhost:2500/login';
var TopicURL = 'rivertown/phpbb/viewtopic.php?f=4&t=3';
// username=jsargent&password=jsargent

function FormSetup(){
    var a = document.getElementById("form1");
    var b = document.getElementById("username");
    var c = document.getElementById("password");
    var d = document.getElementById("redirect");
    
    a.action = LoginURL;
    b.value = UserName;
    c.value = Password;
    d.value = TopicURL;
}

/*function LoadURL(TheURL) {
    console.log(TheURL);
    location.href = TheURL;
}

function DoLogin() {
    var TheURL = 'ucp.php?mode=login&amp;sid='+SessionID;
    var TheRedirect = 'index.php?sid='+SessionID;
    var TopicURL = 'viewtopic.php?f=4&t=3&sid='+SessionID;
	$.ajax({
  		url: TheURL,  
  		type: 'GET',
  		data:	{username: UserName, 
                password: Password,
                login: 'Login',
                redirect: TheRedirect},
  		success: function(result){
			console.log(result);
            setTimeout('LoadURL("'+TopicURL+'")',2000);
		}
	});
}

function DoLogout() {
    var TheURL = 'ucp.php?mode=logout&amp;sid='+SessionID;
    LoadURL(TheURL);
}*/