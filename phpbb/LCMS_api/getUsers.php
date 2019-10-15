<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

function get_users()
{
	global $db;
	$users_arr = array();

	$sql = 'SELECT *
	FROM ' . USERS_TABLE;
	$result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($users_arr, $row);
	}
	http_response_code(200);
	echo json_encode($users_arr);
}

get_users();