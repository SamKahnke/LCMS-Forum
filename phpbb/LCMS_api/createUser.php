<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_user.' . $phpEx);

$username = $request->variable('username', '');
$user_password = $request->variable('user_password', '');

$sql_arr = array(
    'username' => $username,
    'user_password' => $user_password
);

function create_user($sql_arr, $cp_data, $notifications_data)
{
    global $db, $user, $auth, $config, $phpbb_root_path, $phpEx;
    global $phpbb_dispatcher, $phpbb_container;
    
    $user_row[$username] = $sql_arr[$username];
    $user_row[$user_password] = $sql_arr[$user_password];

    
    return user_add($user_row, $cp_data, $notifications_data);
    // global $db;
	
	// $sql = 'INSERT INTO ' . USERS_TABLE . ' ' . $db->sql_build_array('INSERT', $sql_arr);
	
	// echo $username;
	// $result = $db->sql_query($sql);

    http_response_code(200);
    
}

create_user($sql_arr, $cp_data, $notifications_data);