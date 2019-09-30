<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$forum_id = $request->variable('forum_id', 1);
function delete_forum($forum_id)
{
    global $db;
    
	$forums_arr = array();

	$sql = 'DELETE FROM ' . FORUMS_TABLE . ' WHERE forum_id = ' . $forum_id;
    $result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($forums_arr, $row);
	}
    http_response_code(200);
	echo json_encode($forums_arr);
}

delete_forum($forum_id);