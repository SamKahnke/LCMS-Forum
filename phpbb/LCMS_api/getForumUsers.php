<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$forum_id = $request->variable('forum_id', 1);
function get_forum_users($forum_id)
{
    global $db;
    
	$users_arr = array();

    $sql = 'SELECT * FROM ' . USERS_TABLE . ' LEFT JOIN ' . ACL_USERS_TABLE
    . ' ON ' . USERS_TABLE . '.user_id = ' . ACL_USERS_TABLE . '.user_id 
    WHERE ' . ACL_USERS_TABLE . '.forum_id = ' . $forum_id ;
    
    $result = $db->sql_query($sql);
    
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($users_arr, $row);
	}
	http_response_code(200);
	echo json_encode($users_arr);
}

get_forum_users($forum_id);