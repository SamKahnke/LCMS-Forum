const PHPBB_ROOT = '../phpbb/';
// var SessionID = 'dffffc0c8c002bf14e1da49fcdb1c49d';
var UserName = 'jsargent';
var Password = 'jsargent';
// var LoginURL = PHPBB_ROOT + 'ucp.php?mode=login&amp;sid='+SessionID;
// var TopicURL = PHPBB_ROOT + 'viewtopic.php?f=4&t=3&sid='+SessionID;
var LoginURL = PHPBB_ROOT + 'ucp.php?mode=login';
var TopicURL = PHPBB_ROOT + 'LCMS_api/function-test.php';
// var TopicURL = PHPBB_ROOT + 'LCMS_api/hello.php?puppies=Doberman';
// var puppies = "Doberman";

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

