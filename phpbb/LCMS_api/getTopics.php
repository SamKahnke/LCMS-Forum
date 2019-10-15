<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

function get_topics()
{
	global $db;
	$topics_arr = array();

	$sql = 'SELECT *
	FROM ' . TOPICS_TABLE;
	$result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($topics_arr, $row);
	}
	http_response_code(200);
	echo json_encode($topics_arr);
}

get_topics();