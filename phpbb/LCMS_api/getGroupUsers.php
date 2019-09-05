<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

function get_group_users()
{
    global $db;
    $groups_arr = array();

	$sql = 'SELECT *
	FROM ' . USER_GROUP_TABLE . ' WHERE group_id=6';
	$result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($groups_arr, $row);
	}
	http_response_code(200);
	echo json_encode($groups_arr);
}

get_group_users();