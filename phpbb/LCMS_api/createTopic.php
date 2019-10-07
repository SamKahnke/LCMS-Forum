<?php
define('IN_PHPBB', true);
$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : '../';
$phpEx = substr(strrchr(__FILE__, '.'), 1);
include($phpbb_root_path . 'common.' . $phpEx);
include($phpbb_root_path . 'includes/functions_posting.' . $phpEx);

$message = $request->variable('message', '\'\'');
$subject = $request->variable('subject', '\'\'');
$user_id = $request->variable('user_id', 1);
$forum_id = $request->variable('forum_id', 1);
$mode = 'post';
$topic_type = 0;
$uid = $bitfield = $bbcode_options = '';
generate_text_for_storage($message, $uid, $bitfield, $bbcode_options, true, true, true);

$data = array( 
    // General Posting Settings
    'forum_id'            => 4,    // The forum ID in which the post will be placed. (int)
    'topic_id'            => 0,    // Post a new topic or in an existing one? Set to 0 to create a new one, if not, specify your topic ID here instead.
    'icon_id'            => false,    // The Icon ID in which the post will be displayed with on the viewforum, set to false for icon_id. (int)

    // Defining Post Options
    'enable_bbcode'    => true,    // Enable BBcode in this post. (bool)
    'enable_smilies'    => true,    // Enabe smilies in this post. (bool)
    'enable_urls'        => true,    // Enable self-parsing URL links in this post. (bool)
    'enable_sig'        => true,    // Enable the signature of the poster to be displayed in the post. (bool)

    // Message Body
    'message'            => $message,        // Your text you wish to have submitted. It should pass through generate_text_for_storage() before this. (string)
    'message_md5'    => md5($message),      // The md5 hash of your message

    // Values from generate_text_for_storage()
    'bbcode_bitfield'    => $bitfield,    // Value created from the generate_text_for_storage() function.
    'bbcode_uid'        => $uid,        // Value created from the generate_text_for_storage() function.

    // Other Options
    'post_edit_locked'    => 0,        // Disallow post editing? 1 = Yes, 0 = No
    'topic_title'        => $subject,    // Subject/Title of the topic. (string)

    // Email Notification Settings
    'notify_set'        => false,        // (bool)
    'notify'            => false,        // (bool)
    'post_time'         => 0,        // Set a specific time, use 0 to let submit_post() take care of getting the proper time
    'forum_name'        => '',        // For identifying the name of the forum in a notification email.

    // Indexing
    'enable_indexing'    => true,        // Allow indexing the post

    // 3.0.6
    'force_approved_state'    => true, // Allow the post to be submitted without going into unapproved queue

    // 3.1-dev, overwrites force_approve_state
    'force_visibility'            => true, // Allow the post to be submitted without going into unapproved queue, or make it be deleted
);

$poll = array(
    'poll_title'		=> '',
    'poll_length'		=> 0,
    'poll_max_options'	=> 1,
    'poll_option_text'	=> '',
    'poll_start'		=> 0,
    'poll_last_vote'	=> 0,
    'poll_vote_change'	=> 0,
    'enable_bbcode'		=> true,
    'enable_urls'		=> true,
    'enable_smilies'	=> true,
    'img_status'		=> true
);      

function create_topic($mode, $subject, $username, $topic_type, &$poll, &$data) {
    global $db, $auth, $user, $config, $phpEx, $template, $phpbb_root_path, $phpbb_container, $phpbb_dispatcher;
        $user->setup();
        $sql = 'SELECT * FROM ' . USERS_TABLE . ' WHERE user_id = 51';
        $result = $db->sql_query($sql);
        $row = $db->sql_fetchrow($result);
        $db->sql_freeresult($result);
        $user->data = array_merge($user->data, $row);

    submit_post($mode, $subject, $user->data['username'], $topic_type, $poll, $data);
}

create_topic($mode, $subject, $username, $topic_type, $poll, $data);
