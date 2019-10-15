<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$forum_id = $request->variable('forum_id', 1);
$user_id = $request->variable('user_id', 1);
$auth_option_id = $request->variable('auth_option_id', 1);
$auth_role_id = $request->variable('auth_role_id', 15);
$auth_setting = $request->variable('auth_setting', 1);

function add_user_to_forum($forum_id, $user_id, $auth_option_id, $auth_role_id, $auth_setting)
{
    global $db;	

	$sql_1 = 'INSERT INTO ' . ACL_USERS_TABLE .
    ' (forum_id, user_id, auth_option_id, auth_role_id, auth_setting) 
    VALUES (' . $forum_id . ', ' . $user_id . ', ' . $auth_option_id . ', ' . $auth_role_id . ', ' . $auth_setting . ')';
    
    $sql_2 = 'UPDATE ' . USERS_TABLE . ' SET user_permissions = \'\' WHERE user_id = ' . $user_id;
    
    $result = $db->sql_query($sql_1);
    $db->sql_freeresult($result);
    $result = $db->sql_query($sql_2);

	http_response_code(200);
}

add_user_to_forum($forum_id, $user_id, $auth_option_id, $auth_role_id, $auth_setting);