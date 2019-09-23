<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$forum_id = $request->variable('forum_id', 1);
function get_forum_groups($forum_id)
{
    global $db;
    
	$groups_arr = array();

    $sql = 'SELECT * FROM ' . GROUPS_TABLE . ' LEFT JOIN ' . ACL_GROUPS_TABLE
    . ' ON ' . GROUPS_TABLE . '.group_id = ' . ACL_GROUPS_TABLE . '.group_id 
    WHERE ' . ACL_GROUPS_TABLE . '.forum_id = ' . $forum_id ;
    
    $result = $db->sql_query($sql);
    
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($groups_arr, $row);
	}
	http_response_code(200);
	echo json_encode($groups_arr);
}

get_forum_groups($forum_id);