<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_display.' . $phpEx);

global $db;

	// Here we check permission consistency

	// Sometimes, it can happen permission tables having forums listed which do not exist
	$sql = 'SELECT *
		FROM ' . FORUMS_TABLE;
	$result = $db->sql_query($sql);

	echo $sql;
	echo "<br>";
	echo $result;
	while ($row = $db->sql_fetchrow($result)) {
		echo $row["forum_name"];
	}
// echo get_forum_list();