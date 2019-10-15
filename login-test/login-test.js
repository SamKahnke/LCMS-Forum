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

