<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$group_name = $request->variable('group_name', '');
$sql_arr = array(
	'group_name' => $group_name
);

function create_group($sql_arr)
{
    global $db;
	
	$sql = 'INSERT INTO ' . GROUPS_TABLE . ' ' . $db->sql_build_array('INSERT', $sql_arr);
	echo $sql_arr;
	echo $group_name;
	$result = $db->sql_query($sql);

	http_response_code(200);
}

create_group($sql_arr);