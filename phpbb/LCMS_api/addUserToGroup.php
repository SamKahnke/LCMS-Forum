<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$user_id = $request->variable('user_id', 1);
$group_id = $request->variable('group_id', 1);
$group_leader = $request->variable('group_leader', 0);
$user_pending = $request->variable('user_pending', 0);

function add_user_to_group($user_id, $group_id, $group_leader, $user_pending)
{
    global $db;	

	$sql_1 = 'INSERT INTO ' . USER_GROUP_TABLE .
    ' (user_id, group_id, group_leader, user_pending) 
    VALUES (' . $user_id . ', ' . $group_id . ', ' . $group_leader . ', ' . $user_pending . ')';
    
    $sql_2 = 'UPDATE ' . USERS_TABLE . ' SET user_permissions = \'\' WHERE user_id = ' . $user_id;

    $result = $db->sql_query($sql_1);
    $db->sql_freeresult($result);
    $result = $db->sql_query($sql_2);

	http_response_code(200);
}

add_user_to_group($user_id, $group_id, $group_leader, $user_pending);