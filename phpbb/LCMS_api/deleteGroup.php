<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$group_id = $request->variable('group_id', 1);
function delete_group($group_id)
{
    global $db;
    
	$groups_arr = array();

	$sql = 'DELETE FROM ' . GROUPS_TABLE . ' WHERE group_id = ' . $group_id;
    $result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($groups_arr, $row);
	}
    http_response_code(200);
	echo json_encode($groups_arr);
}

delete_group($group_id);