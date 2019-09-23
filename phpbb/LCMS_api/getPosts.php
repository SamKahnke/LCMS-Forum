<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

function get_posts()
{
	global $db;
	$posts_arr = array();

	$sql = 'SELECT *
	FROM ' . POSTS_TABLE;
	$result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($posts_arr, $row);
	}
	http_response_code(200);
	echo json_encode($posts_arr);
}

get_posts();