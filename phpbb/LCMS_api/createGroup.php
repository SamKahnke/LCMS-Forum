<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$group_type = $request->variable('group_type', 0);
$group_founder_manage = $request->variable('group_founder_manage', 0);
$group_skip_auth = $request->variable('group_skip_auth', 0);
$group_name = $request->variable('group_name', '\'\'');
$group_desc = $request->variable('group_desc', '\'\'');
$group_desc_bitfield = $request->variable('group_desc_bitfield', '\'\'');
$group_desc_options = $request->variable('group_desc_options', 7);
$group_desc_uid = $request->variable('group_desc_uid', '\'\'');
$group_display = $request->variable('group_display', 0);
$group_avatar = $request->variable('group_avatar', '\'\'');
$group_avatar_type = $request->variable('group_avatar_type', '\'\'');
$group_avatar_width = $request->variable('group_avatar_width', 0);
$group_avatar_height = $request->variable('group_avatar_height', 0);
$group_rank = $request->variable('group_rank', 0);
$group_colour = $request->variable('group_colour', '\'\'');
$group_sig_chars = $request->variable('group_sig_chars', 0);
$group_recieve_pm = $request->variable('group_recieve_pm', 0);
$group_message_limit = $request->variable('group_message_limit', 0);
$group_legend = $request->variable('group_legend', 0);
$group_max_recipients = $request->variable('group_max_recipients', 0);

function create_group($group_type, $group_founder_manage, $group_skip_auth,
					$group_name, $group_desc, $group_desc_bitfield,
					$group_desc_options, $group_desc_uid, $group_display,
					$group_avatar, $group_avatar_type, $group_avatar_width,
					$group_avatar_height, $group_rank, $group_colour,
					$group_sig_chars, $group_recieve_pm, $group_message_limit,
					$group_legend, $group_max_recipients)
{
    global $db;
	
	$sql = 'INSERT INTO ' . GROUPS_TABLE . ' 
	VALUES ('
	. $group_type . ', '
	. $group_founder_manage . ', '
	. $group_skip_auth . ',
	\'' . $group_name . '\',
	\'' . $group_desc . '\', '
	. $group_desc_bitfield . ', '
	. $group_desc_options . ', '
	. $group_desc_uid . ', '
	. $group_display . ', '
	. $group_avatar . ', '
	. $group_avatar_type . ', '
	. $group_avatar_width . ', '
	. $group_avatar_height . ', '
	. $group_rank . ', '
	. $group_colour . ', '
	. $group_sig_chars . ', '
	. $group_recieve_pm . ', '
	. $group_message_limit . ', '
	. $group_legend . ', '
	. $group_max_recipients
	. ')';

	$result = $db->sql_query($sql);

	http_response_code(200);
}

create_group($group_type, $group_founder_manage, $group_skip_auth,
			$group_name, $group_desc, $group_desc_bitfield,
			$group_desc_options, $group_desc_uid, $group_display,
			$group_avatar, $group_avatar_type, $group_avatar_width,
			$group_avatar_height, $group_rank, $group_colour,
			$group_sig_chars, $group_recieve_pm, $group_message_limit,
			$group_legend, $group_max_recipients);