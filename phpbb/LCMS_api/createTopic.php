<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);

$forum_id = $request->variable('forum_id', 0);
$icon_id = $request->variable('icon_id', 0);
$topic_attachment = $request->variable('topic_attachment', 0);
$topic_reported = $request->variable('topic_reported', 0);
$topic_title = $request->variable('topic_title', '\'\'');
$topic_poster = $request->variable('topic_poster', 0);
$topic_time = $request->variable('topic_time', 0);
$topic_time_limit = $request->variable('topic_time_limit', 0);
$topic_views = $request->variable('topic_views', 0);
$topic_status = $request->variable('topic_status', 0);
$topic_type = $request->variable('topic_type', 0);
$topic_first_post_id = $request->variable('topic_first_post_id', 0);
$topic_first_poster_name = $request->variable('topic_first_poster_name', '\'\'');
$topic_first_poster_colour = $request->variable('topic_first_poster_colour', '\'\'');
$topic_last_post_id = $request->variable('topic_last_post_id', 0);
$topic_last_poster_id = $request->variable('topic_last_poster_id', 0);
$topic_last_poster_name = $request->variable('topic_last_poster_name', '\'\'');
$topic_last_poster_colour = $request->variable('topic_last_poster_colour', '\'\'');
$topic_last_post_subject = $request->variable('topic_last_post_subject', 0);
$topic_last_post_time = $request->variable('topic_last_post_time', 0);
$topic_last_view_time = $request->variable('topic_last_view_time', 0);
$topic_moved_id = $request->variable('topic_moved_id', 0);
$topic_bumped = $request->variable('topic_bumped', 0);
$topic_bumper = $request->variable('topic_bumper', 0);
$poll_title = $request->variable('poll_title', '\'\'');
$poll_start = $request->variable('poll_start', 0);
$poll_length = $request->variable('poll_length', 0);
$poll_max_options = $request->variable('poll_max_options', 1);
$poll_last_vote = $request->variable('poll_last_vote', 0);
$poll_vote_change = $request->variable('poll_vote_change', 0);
$topic_visibility = $request->variable('topic_visibility', 1);
$topic_delete_time = $request->variable('topic_delete_time', 0);
$topic_delete_reason = $request->variable('topic_delete_reason', '\'\'');
$topic_delete_user = $request->variable('topic_delete_user', 0);
$topic_posts_approved = $request->variable('topic_posts_approved', 0);
$topic_posts_unapproved = $request->variable('topic_posts_unapproved', 0);
$topic_posts_softdeleted = $request->variable('topic_posts_softdeleted', 0);

function create_topic($forum_id, $icon_id, $topic_attachment, $topic_reported, $topic_title, $topic_poster, $topic_time, 
            $topic_time_limit, $topic_views, $topic_status, $topic_type, $topic_first_post_id, $topic_first_poster_name, 
            $topic_first_poster_colour, $topic_last_post_id, $topic_last_poster_id,
            $topic_last_poster_name, $topic_last_poster_colour, $topic_last_post_subject, $topic_last_post_time,
            $topic_last_view_time, $topic_moved_id, $topic_bumped, $topic_bumper, $poll_title, $poll_start, 
            $poll_length, $poll_max_options, $poll_last_vote, $poll_vote_change, $topic_visibility, $topic_delete_time, $topic_delete_reason,
            $topic_delete_user, $topic_posts_approved, $topic_posts_unapproved, $topic_posts_softdeleted)
{
    global $db;
	
	$sql = 'INSERT INTO ' . TOPICS_TABLE . ' 
	VALUES ('
    . $forum_id . ', '
    . $icon_id . ', '
    . $topic_attachment . ', '
    . $topic_reported . ', 
    \'' . $topic_title . '\', '
    . $topic_poster . ', '
    . $topic_time . ', ' 
    . $topic_time_limit . ', '
    . $topic_views . ', '
    . $topic_status . ', '
    . $topic_type . ', '
    . $topic_first_post_id . ', '
    . $topic_first_poster_name . ', ' 
    . $topic_first_poster_colour . ', '
    . $topic_last_post_id . ', '
    . $topic_last_poster_id . ', '
    . $topic_last_poster_name . ', '
    . $topic_last_poster_colour . ', '
    . $topic_last_post_subject . ', '
    . $topic_last_post_time . ', '
    . $topic_last_view_time . ', '
    . $topic_moved_id . ', '
    . $topic_bumped . ', '
    . $topic_bumper . ', '
    . $poll_title . ', '
    . $poll_start . ', ' 
    . $poll_length . ', '
    . $poll_max_options . ', '
    . $poll_last_vote . ', '
    . $poll_vote_change . ', '
    . $topic_visibility . ', '
    . $topic_delete_time . ', '
    . $topic_delete_reason . ', '
    . $topic_delete_user . ', '
    . $topic_posts_approved . ', '
    . $topic_posts_unapproved . ', '
    . $topic_posts_softdeleted
    . ')';
	
	$result = $db->sql_query($sql);

	http_response_code(200);
}

create_topic($forum_id, $icon_id, $topic_attachment, $topic_reported, $topic_title, $topic_poster, $topic_time, 
            $topic_time_limit, $topic_views, $topic_status, $topic_type, $topic_first_post_id, $topic_first_poster_name, 
            $topic_first_poster_colour, $topic_last_post_id, $topic_last_poster_id,
            $topic_last_poster_name, $topic_last_poster_colour, $topic_last_post_subject, $topic_last_post_time,
            $topic_last_view_time, $topic_moved_id, $topic_bumped, $topic_bumper, $poll_title, $poll_start, 
            $poll_length, $poll_max_options, $poll_last_vote, $poll_vote_change, $topic_visibility, $topic_delete_time, $topic_delete_reason,
            $topic_delete_user, $topic_posts_approved, $topic_posts_unapproved, $topic_posts_softdeleted);