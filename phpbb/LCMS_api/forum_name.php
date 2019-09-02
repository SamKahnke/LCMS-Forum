<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

function get_forum_names()
{
	global $db;

	$sql = 'SELECT *
	FROM ' . FORUMS_TABLE;
	$result = $db->sql_query($sql);
	while ($row = $db->sql_fetchrow($result))
	{
		echo $row["forum_name"] . "<br>";
	}
}

get_forum_names();
