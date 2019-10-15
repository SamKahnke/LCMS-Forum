<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$user_id = $request->variable('user_id', 1);
function delete_user($user_id)
{
    global $db;
    
	$users_arr = array();

	$sql = 'DELETE FROM ' . USERS_TABLE . ' WHERE user_id = ' . $user_id;
    $result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($users_arr, $row);
	}
    http_response_code(200);
	echo json_encode($users_arr);
}

delete_user($user_id);