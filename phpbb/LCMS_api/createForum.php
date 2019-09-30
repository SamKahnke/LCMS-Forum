<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$parent_id = $request->variable('parent_id', 1);
$left_id = $request->variable('left_id', 1);
$right_id = $request->variable('right_id', 2);
$forum_parents = $request->variable('forum_parents', '\'\'');
$forum_name = $request->variable('forum_name', '\'\'');
$forum_desc = $request->variable('forum_desc', '\'\'');
$forum_desc_bitfield = $request->variable('forum_desc_bitfield', '\'\'');
$forum_desc_options = $request->variable('forum_desc_options', 7);
$forum_desc_uid = $request->variable('forum_desc_uid', '\'\'');
$forum_link = $request->variable('forum_link', '\'\'');
$forum_password = $request->variable('forum_password', '\'\'');
$forum_style = $request->variable('forum_style', 0);
$forum_image = $request->variable('forum_image', '\'\'');
$forum_rules = $request->variable('forum_rules', '\'\'');
$forum_rules_link = $request->variable('forum_rules_link', '\'\'');
$forum_rules_bitfield = $request->variable('forum_rules_bitfield', '\'\'');
$forum_rules_options = $request->variable('forum_rules_options', 7);
$forum_rules_uid = $request->variable('forum_rules_uid', '\'\'');
$forum_topics_per_page = $request->variable('forum_topics_per_page', 0);
$forum_type = $request->variable('forum_type', 1);
$forum_status = $request->variable('forum_status', 0);
$forum_last_post_id = $request->variable('forum_last_post_id', 0);
$forum_last_poster_id = $request->variable('forum_last_poster_id', 0);
$forum_last_post_subject = $request->variable('forum_last_post_subject', 0);
$forum_last_post_time = $request->variable('forum_last_post_time', 0);
$forum_last_poster_name = $request->variable('forum_last_poster_name', '\'\'');
$forum_last_poster_colour = $request->variable('forum_last_poster_colour', '\'AA0000\'');
$forum_flags = $request->variable('forum_flags', 48);
$display_on_index = $request->variable('display_on_index', 0);
$enable_indexing = $request->variable('enable_indexing', 1);
$enable_icons = $request->variable('enable_icons', 1);
$enable_prune = $request->variable('enable_prune', 0);
$prune_next = $request->variable('prune_next', 0);
$prune_days = $request->variable('prune_days', 7);
$prune_viewed = $request->variable('prune_viewed', 7);
$prune_freq = $request->variable('prune_freq', 1);
$display_subforum_list = $request->variable('display_subforum_list', 1);
$forum_options = $request->variable('forum_options', 0);
$enable_shadow_prune = $request->variable('enable_shadow_prune', 0);
$prune_shadow_days = $request->variable('prune_shadow_days', 7);
$prune_shadow_freq = $request->variable('prune_shadow_freq', 1);
$prune_shadow_next = $request->variable('prune_shadow_next', 0);
$forum_posts_approved = $request->variable('forum_posts_approved', 0);
$forum_posts_unapproved = $request->variable('forum_posts_unapproved', 0);
$forum_posts_softdeleted = $request->variable('forum_posts_softdeleted', 0);
$forum_topics_approved = $request->variable('forum_topics_approved', 0);
$forum_topics_unapproved = $request->variable('forum_topics_unapproved', 0);
$forum_topics_softdeleted = $request->variable('forum_topics_softdeleted', 0);

function create_forum($parent_id, $left_id, $right_id, $forum_parents,
                    $forum_name, $forum_desc, $forum_desc_bitfield, $forum_desc_options,
                    $forum_desc_uid, $forum_link, $forum_password, $forum_style,
                    $forum_image, $forum_rules, $forum_rules_link, $forum_rules_bitfield,
                    $forum_rules_options, $forum_rules_uid, $forum_topics_per_page, $forum_type,
                    $forum_status, $forum_last_post_id, $forum_last_poster_id, $forum_last_post_subject,
                    $forum_last_post_time, $forum_last_poster_name, $forum_last_poster_colour,
                    $forum_flags, $display_on_index, $enable_indexing, $enable_icons,
                    $enable_prune, $prune_next, $prune_days, $prune_viewed, $prune_freq,
                    $display_subforum_list, $forum_options, $enable_shadow_prune,
                    $prune_shadow_days, $prune_shadow_freq, $prune_shadow_next,
                    $forum_posts_approved, $forum_posts_unapproved,  $forum_posts_softdeleted,
                    $forum_topics_approved, $forum_topics_unapproved, $forum_topics_softdeleted)
{
    global $db;
	
	$sql = 'INSERT INTO ' . FORUMS_TABLE . ' 
	VALUES ('
	. $parent_id . ', '
    . $left_id . ', '
    . $right_id . ', 
    \'' . $forum_parents . '\',
    \'' . $forum_name . '\',
	\''. $forum_desc . '\', '
	. $forum_desc_bitfield . ', '
    . $forum_desc_options . ', '
    . $forum_desc_uid . ', '
    . $forum_link . ', '
    . $forum_password . ', '
    . $forum_style . ', '
    . $forum_image . ', '
    . $forum_rules . ', '
    . $forum_rules_link . ', '
    . $forum_rules_bitfield . ', '
    . $forum_rules_options . ', '
    . $forum_rules_uid . ', '
    . $forum_topics_per_page . ', '
    . $forum_type . ', '
    . $forum_status . ', '
    . $forum_last_post_id . ', '
    . $forum_last_poster_id . ', '
    . $forum_last_post_subject . ', '
    . $forum_last_post_time . ', '
    . $forum_last_poster_name . ', '
    . $forum_last_poster_colour . ', '
    . $forum_flags . ', '
    . $display_on_index . ', '
    . $enable_indexing . ', '
    . $enable_icons . ', '
    . $enable_prune . ', '
    . $prune_next . ', '
    . $prune_days . ', '
    . $prune_viewed . ', '
    . $prune_freq . ', '
    . $display_subforum_list . ', '
    . $forum_options . ', '
    . $enable_shadow_prune . ', '
    . $prune_shadow_days . ', '
    . $prune_shadow_freq . ', '
    . $prune_shadow_next . ', '
    . $forum_posts_approved . ', '
    . $forum_posts_unapproved . ', '
    . $forum_posts_softdeleted . ', '
    . $forum_topics_approved . ', '
    . $forum_topics_unapproved . ', '
    . $forum_topics_softdeleted
    . ')'; 

	echo $sql;
	$result = $db->sql_query($sql);

	http_response_code(200);
}

create_forum($parent_id, $left_id, $right_id, $forum_parents,
            $forum_name, $forum_desc, $forum_desc_bitfield, $forum_desc_options,
            $forum_desc_uid, $forum_link, $forum_password, $forum_style,
            $forum_image, $forum_rules, $forum_rules_link, $forum_rules_bitfield,
            $forum_rules_options, $forum_rules_uid, $forum_topics_per_page, $forum_type,
            $forum_status, $forum_last_post_id, $forum_last_poster_id, $forum_last_post_subject,
            $forum_last_post_time, $forum_last_poster_name, $forum_last_poster_colour,
            $forum_flags, $display_on_index, $enable_indexing, $enable_icons,
            $enable_prune, $prune_next, $prune_days, $prune_viewed, $prune_freq,
            $display_subforum_list, $forum_options, $enable_shadow_prune,
            $prune_shadow_days, $prune_shadow_freq, $prune_shadow_next,
            $forum_posts_approved, $forum_posts_unapproved,  $forum_posts_softdeleted,
            $forum_topics_approved, $forum_topics_unapproved, $forum_topics_softdeleted);