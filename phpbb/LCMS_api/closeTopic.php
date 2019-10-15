<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$topic_id = $request->variable('topic_id', 1);
function close_topic($topic_id)
{
    global $db;
    
	$topics_arr = array();

	$sql = 'UPDATE ' . TOPICS_TABLE . ' SET topic_status = 1 WHERE topic_id = ' . $topic_id;
    $result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		array_push($topics_arr, $row);
	}
    http_response_code(200);
	echo json_encode($topics_arr);
}

close_topic($topic_id);