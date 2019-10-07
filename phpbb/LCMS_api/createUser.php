<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_user.' . $phpEx);

// $username = $request->variable('username', '');
// $user_password = $request->variable('user_password', '');

// In this example, the $data array should contain the validated input fields for
// username, password, email, timezone (tz) and the user’s chosen language (lang).
$username = 'testuser3';
$password = 'testpassword3';
$email = 'test3@gmail.com';
$tz = 'UTC';
$lang = 'en';

$data = array(  
    'username'            => $username,    // The forum ID in which the post will be placed. (int)
    'password'            => $password,    // Post a new topic or in an existing one? Set to 0 to create a new one, if not, specify your topic ID here instead.
    'email'            => $email,
    'tz'            => $tz,
    'lang'            => $lang, 
);

function create_user($data)
{
    global $db, $user, $auth, $config, $phpbb_root_path, $phpEx;
    global $phpbb_dispatcher, $phpbb_container;

    $user_row = array(
        'username'              => $data['username'],
        'user_password'         => phpbb_hash($data['password']),
        'user_email'            => $data['email'],
        'group_id'              => 2, // by default, the REGISTERED user group is id 2
        'user_timezone'         => $data['tz'],
        'user_lang'             => $data['lang'],
        'user_type'             => USER_NORMAL,
        'user_ip'               => $user->ip,
        'user_regdate'          => time(),
    );
    
    // Register user...
    $user_id = user_add($user_row);

    http_response_code(200);
    
}

create_user($data);