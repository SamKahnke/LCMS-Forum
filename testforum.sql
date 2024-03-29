USE [testforum]
GO
/****** Object:  User [testforum]    Script Date: 07/09/2019 17:07:37 ******/
CREATE USER [testforum] FOR LOGIN [testforum] WITH DEFAULT_SCHEMA=[testforum]
GO
/****** Object:  Schema [testforum]    Script Date: 07/09/2019 17:07:37 ******/
CREATE SCHEMA [testforum] AUTHORIZATION [testforum]
GO
/****** Object:  Table [testforum].[phpbb_zebra]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_zebra](
	[user_id] [int] NOT NULL,
	[zebra_id] [int] NOT NULL,
	[friend] [int] NOT NULL,
	[foe] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_zebra] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[zebra_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_words]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_words](
	[word_id] [int] IDENTITY(1,1) NOT NULL,
	[word] [varchar](255) NOT NULL,
	[replacement] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_words] PRIMARY KEY CLUSTERED 
(
	[word_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [testforum].[phpbb_warnings]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_warnings](
	[warning_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[post_id] [int] NOT NULL,
	[log_id] [int] NOT NULL,
	[warning_time] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_warnings] PRIMARY KEY CLUSTERED 
(
	[warning_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_users]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_type] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[user_permissions] [text] NOT NULL,
	[user_perm_from] [int] NOT NULL,
	[user_ip] [varchar](40) NOT NULL,
	[user_regdate] [int] NOT NULL,
	[username] [varchar](255) NOT NULL,
	[username_clean] [varchar](255) NOT NULL,
	[user_password] [varchar](255) NOT NULL,
	[user_passchg] [int] NOT NULL,
	[user_email] [varchar](100) NOT NULL,
	[user_email_hash] [float] NOT NULL,
	[user_birthday] [varchar](10) NOT NULL,
	[user_lastvisit] [int] NOT NULL,
	[user_lastmark] [int] NOT NULL,
	[user_lastpost_time] [int] NOT NULL,
	[user_lastpage] [varchar](200) NOT NULL,
	[user_last_confirm_key] [varchar](10) NOT NULL,
	[user_last_search] [int] NOT NULL,
	[user_warnings] [int] NOT NULL,
	[user_last_warning] [int] NOT NULL,
	[user_login_attempts] [int] NOT NULL,
	[user_inactive_reason] [int] NOT NULL,
	[user_inactive_time] [int] NOT NULL,
	[user_posts] [int] NOT NULL,
	[user_lang] [varchar](30) NOT NULL,
	[user_timezone] [varchar](100) NOT NULL,
	[user_dateformat] [varchar](64) NOT NULL,
	[user_style] [int] NOT NULL,
	[user_rank] [int] NOT NULL,
	[user_colour] [varchar](6) NOT NULL,
	[user_new_privmsg] [int] NOT NULL,
	[user_unread_privmsg] [int] NOT NULL,
	[user_last_privmsg] [int] NOT NULL,
	[user_message_rules] [int] NOT NULL,
	[user_full_folder] [int] NOT NULL,
	[user_emailtime] [int] NOT NULL,
	[user_topic_show_days] [int] NOT NULL,
	[user_topic_sortby_type] [varchar](1) NOT NULL,
	[user_topic_sortby_dir] [varchar](1) NOT NULL,
	[user_post_show_days] [int] NOT NULL,
	[user_post_sortby_type] [varchar](1) NOT NULL,
	[user_post_sortby_dir] [varchar](1) NOT NULL,
	[user_notify] [int] NOT NULL,
	[user_notify_pm] [int] NOT NULL,
	[user_notify_type] [int] NOT NULL,
	[user_allow_pm] [int] NOT NULL,
	[user_allow_viewonline] [int] NOT NULL,
	[user_allow_viewemail] [int] NOT NULL,
	[user_allow_massemail] [int] NOT NULL,
	[user_options] [int] NOT NULL,
	[user_avatar] [varchar](255) NOT NULL,
	[user_avatar_type] [varchar](255) NOT NULL,
	[user_avatar_width] [int] NOT NULL,
	[user_avatar_height] [int] NOT NULL,
	[user_sig] [text] NOT NULL,
	[user_sig_bbcode_uid] [varchar](8) NOT NULL,
	[user_sig_bbcode_bitfield] [varchar](255) NOT NULL,
	[user_jabber] [varchar](255) NOT NULL,
	[user_actkey] [varchar](32) NOT NULL,
	[user_newpasswd] [varchar](255) NOT NULL,
	[user_form_salt] [varchar](32) NOT NULL,
	[user_new] [int] NOT NULL,
	[user_reminded] [int] NOT NULL,
	[user_reminded_time] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [user_birthday] ON [testforum].[phpbb_users] 
(
	[user_birthday] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_email_hash] ON [testforum].[phpbb_users] 
(
	[user_email_hash] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_type] ON [testforum].[phpbb_users] 
(
	[user_type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [username_clean] ON [testforum].[phpbb_users] 
(
	[username_clean] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_users] ON
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (1, 2, 1, N'00000000000g13ydq8
i1cjyo000000
i1cjyo000000', 0, N'', 1560532966, N'Anonymous', N'anonymous', N'', 0, N'', 0, N'', 0, 0, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'', N'd M Y H:i', 16, 0, N'', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 1, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'2062b8a4a9c03073', 1, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (2, 3, 5, N'zik0zjzik0zjzik0zg
i1cjyo000000
zik0zjzi8sg0

zik0zj000000
zik0zj000000', 0, N'96.3.29.1', 1560532966, N'JessicaAdmin', N'jessicaadmin', N'$2y$10$CEjCINHvJDzKnhzy85r91eLAPM6pu/eaMMK9GthTLh5EjqgSvMFwe', 0, N'jessica@rivertown-inc.com', 51356604425, N'', 1561132327, 0, 1560889472, N'viewforum.php?f=5', N'', 1560819994, 0, 0, 0, 0, 0, 5, N'en', N'', N'D M d, Y g:i a', 1, 1, N'AA0000', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 1, 1, 1, 1, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'7051efd7b6de9fd1', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (3, 2, 6, N'', 0, N'', 1560532997, N'AdsBot [Google]', N'adsbot [google]', N'', 1560532997, N'', 0, N'', 0, 1560532997, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'1f2d3efa87012998', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (4, 2, 6, N'', 0, N'', 1560532997, N'Alexa [Bot]', N'alexa [bot]', N'', 1560532997, N'', 0, N'', 0, 1560532997, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'08c2bbed9492cda5', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (5, 2, 6, N'', 0, N'', 1560532997, N'Alta Vista [Bot]', N'alta vista [bot]', N'', 1560532997, N'', 0, N'', 0, 1560532997, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'264ab1d7c7013edb', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (6, 2, 6, N'', 0, N'', 1560532998, N'Ask Jeeves [Bot]', N'ask jeeves [bot]', N'', 1560532998, N'', 0, N'', 0, 1560532998, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'87b56064d3d49cec', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (7, 2, 6, N'', 0, N'', 1560532998, N'Baidu [Spider]', N'baidu [spider]', N'', 1560532998, N'', 0, N'', 0, 1560532998, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'a0b11fbd0c591f33', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (8, 2, 6, N'', 0, N'', 1560532998, N'Bing [Bot]', N'bing [bot]', N'', 1560532998, N'', 0, N'', 0, 1560532998, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'f4459baa5db0220a', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (9, 2, 6, N'', 0, N'', 1560532998, N'Exabot [Bot]', N'exabot [bot]', N'', 1560532998, N'', 0, N'', 0, 1560532998, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'92d5eb84ed6e7e9d', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (10, 2, 6, N'', 0, N'', 1560532998, N'FAST Enterprise [Crawler]', N'fast enterprise [crawler]', N'', 1560532998, N'', 0, N'', 0, 1560532998, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'edb5138942c26c7e', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (11, 2, 6, N'', 0, N'', 1560532998, N'FAST WebCrawler [Crawler]', N'fast webcrawler [crawler]', N'', 1560532998, N'', 0, N'', 0, 1560532998, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'6efb82207bfb5198', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (12, 2, 6, N'', 0, N'', 1560532998, N'Francis [Bot]', N'francis [bot]', N'', 1560532998, N'', 0, N'', 0, 1560532998, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'9aa51fd58065211c', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (13, 2, 6, N'', 0, N'', 1560532998, N'Gigabot [Bot]', N'gigabot [bot]', N'', 1560532998, N'', 0, N'', 0, 1560532998, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'330205b772615e21', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (14, 2, 6, N'', 0, N'', 1560532998, N'Google Adsense [Bot]', N'google adsense [bot]', N'', 1560532998, N'', 0, N'', 0, 1560532998, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'71d655a84aabc318', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (15, 2, 6, N'', 0, N'', 1560532999, N'Google Desktop', N'google desktop', N'', 1560532999, N'', 0, N'', 0, 1560532999, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'2d549fed52b128b8', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (16, 2, 6, N'', 0, N'', 1560532999, N'Google Feedfetcher', N'google feedfetcher', N'', 1560532999, N'', 0, N'', 0, 1560532999, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'b217299f4049fbfd', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (17, 2, 6, N'', 0, N'', 1560532999, N'Google [Bot]', N'google [bot]', N'', 1560532999, N'', 0, N'', 0, 1560532999, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'46fb89ed104b438d', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (18, 2, 6, N'', 0, N'', 1560532999, N'Heise IT-Markt [Crawler]', N'heise it-markt [crawler]', N'', 1560532999, N'', 0, N'', 0, 1560532999, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'2c318e263ddb5f5e', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (19, 2, 6, N'', 0, N'', 1560532999, N'Heritrix [Crawler]', N'heritrix [crawler]', N'', 1560532999, N'', 0, N'', 0, 1560532999, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'8e82b5a346692e1a', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (20, 2, 6, N'', 0, N'', 1560532999, N'IBM Research [Bot]', N'ibm research [bot]', N'', 1560532999, N'', 0, N'', 0, 1560532999, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'91b5421c70e98a09', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (21, 2, 6, N'', 0, N'', 1560532999, N'ICCrawler - ICjobs', N'iccrawler - icjobs', N'', 1560532999, N'', 0, N'', 0, 1560532999, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'847fbb8c57a7cda7', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (22, 2, 6, N'', 0, N'', 1560532999, N'ichiro [Crawler]', N'ichiro [crawler]', N'', 1560532999, N'', 0, N'', 0, 1560532999, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'2492e817477fbe56', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (23, 2, 6, N'', 0, N'', 1560533000, N'Majestic-12 [Bot]', N'majestic-12 [bot]', N'', 1560533000, N'', 0, N'', 0, 1560533000, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'237088084d22e321', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (24, 2, 6, N'', 0, N'', 1560533000, N'Metager [Bot]', N'metager [bot]', N'', 1560533000, N'', 0, N'', 0, 1560533000, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'14faf4ec48fd9d59', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (25, 2, 6, N'', 0, N'', 1560533000, N'MSN NewsBlogs', N'msn newsblogs', N'', 1560533000, N'', 0, N'', 0, 1560533000, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'4d45e473b8377e87', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (26, 2, 6, N'', 0, N'', 1560533000, N'MSN [Bot]', N'msn [bot]', N'', 1560533000, N'', 0, N'', 0, 1560533000, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'8ac774fdc62d2394', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (27, 2, 6, N'', 0, N'', 1560533000, N'MSNbot Media', N'msnbot media', N'', 1560533000, N'', 0, N'', 0, 1560533000, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'3d8f3a05d99b667d', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (28, 2, 6, N'', 0, N'', 1560533001, N'Nutch [Bot]', N'nutch [bot]', N'', 1560533001, N'', 0, N'', 0, 1560533001, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'e77ba5332854c1c0', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (29, 2, 6, N'', 0, N'', 1560533001, N'Online link [Validator]', N'online link [validator]', N'', 1560533001, N'', 0, N'', 0, 1560533001, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'949aeaef0fee3db2', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (30, 2, 6, N'', 0, N'', 1560533001, N'psbot [Picsearch]', N'psbot [picsearch]', N'', 1560533001, N'', 0, N'', 0, 1560533001, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'4d4aa4195d5fc8eb', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (31, 2, 6, N'', 0, N'', 1560533001, N'Sensis [Crawler]', N'sensis [crawler]', N'', 1560533001, N'', 0, N'', 0, 1560533001, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'9856b0adff4b7e11', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (32, 2, 6, N'', 0, N'', 1560533001, N'SEO Crawler', N'seo crawler', N'', 1560533001, N'', 0, N'', 0, 1560533001, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'f665e3d903e0e544', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (33, 2, 6, N'', 0, N'', 1560533002, N'Seoma [Crawler]', N'seoma [crawler]', N'', 1560533002, N'', 0, N'', 0, 1560533002, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'a33feb4db7c9511b', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (34, 2, 6, N'', 0, N'', 1560533002, N'SEOSearch [Crawler]', N'seosearch [crawler]', N'', 1560533002, N'', 0, N'', 0, 1560533002, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'c917ec23952226b3', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (35, 2, 6, N'', 0, N'', 1560533002, N'Snappy [Bot]', N'snappy [bot]', N'', 1560533002, N'', 0, N'', 0, 1560533002, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'5dcb5ef2b49e4cd2', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (36, 2, 6, N'', 0, N'', 1560533002, N'Steeler [Crawler]', N'steeler [crawler]', N'', 1560533002, N'', 0, N'', 0, 1560533002, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'f210573d1f6e2a23', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (37, 2, 6, N'', 0, N'', 1560533002, N'Telekom [Bot]', N'telekom [bot]', N'', 1560533002, N'', 0, N'', 0, 1560533002, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'96b1fee062a94ab5', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (38, 2, 6, N'', 0, N'', 1560533002, N'TurnitinBot [Bot]', N'turnitinbot [bot]', N'', 1560533002, N'', 0, N'', 0, 1560533002, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'0cb94550293788ba', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (39, 2, 6, N'', 0, N'', 1560533002, N'Voyager [Bot]', N'voyager [bot]', N'', 1560533002, N'', 0, N'', 0, 1560533002, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'd535e5ee9acb572d', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (40, 2, 6, N'', 0, N'', 1560533003, N'W3 [Sitesearch]', N'w3 [sitesearch]', N'', 1560533003, N'', 0, N'', 0, 1560533003, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'e77916651428f4ae', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (41, 2, 6, N'', 0, N'', 1560533003, N'W3C [Linkcheck]', N'w3c [linkcheck]', N'', 1560533003, N'', 0, N'', 0, 1560533003, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'33ee56cef6b2a26d', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (42, 2, 6, N'', 0, N'', 1560533003, N'W3C [Validator]', N'w3c [validator]', N'', 1560533003, N'', 0, N'', 0, 1560533003, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'2748b24a954af4e5', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (43, 2, 6, N'', 0, N'', 1560533003, N'YaCy [Bot]', N'yacy [bot]', N'', 1560533003, N'', 0, N'', 0, 1560533003, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'e7b4db42f0a0c2b1', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (44, 2, 6, N'', 0, N'', 1560533003, N'Yahoo MMCrawler [Bot]', N'yahoo mmcrawler [bot]', N'', 1560533003, N'', 0, N'', 0, 1560533003, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'14cabc26ca056efa', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (45, 2, 6, N'', 0, N'', 1560533003, N'Yahoo Slurp [Bot]', N'yahoo slurp [bot]', N'', 1560533003, N'', 0, N'', 0, 1560533003, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'956b0466e2b309ae', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (46, 2, 6, N'', 0, N'', 1560533003, N'Yahoo [Bot]', N'yahoo [bot]', N'', 1560533003, N'', 0, N'', 0, 1560533003, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'cbb55782736e59a4', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (47, 2, 6, N'', 0, N'', 1560533004, N'YahooSeeker [Bot]', N'yahooseeker [bot]', N'', 1560533004, N'', 0, N'', 0, 1560533004, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'UTC', N'D M d, Y g:i a', 1, 0, N'9E8DA7', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 0, 1, 1, 0, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'f38243e4a76ed749', 0, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (48, 0, 2, N'00000000000v667wt0
i1cjyo000000
qlaq53000000

zik0zj000000', 0, N'97.127.81.172', 1560801509, N'jsargent', N'jsargent', N'$2y$10$l6B5tCQ3X6j1174.40e8Le0QSv6oHSo/4.5vTBYA.vsU1u5X6/5re', 1560801509, N'jothan@rivertown-inc.com', 191554856024, N'', 1562696518, 1560801509, 0, N'', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'America/Atikokan', N'D M d, Y g:i a', 1, 0, N'', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 1, 1, 1, 1, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'8a1686211bf9ab8b', 1, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (49, 0, 2, N'', 0, N'24.177.209.147', 1560887394, N'Micah', N'micah', N'$2y$10$r1/fYkH3kP89k.4zA0cI7.70JGGgOwSfplUFFNFSKOj6gV7yCTG7u', 1560887394, N'micah@rivertown-inc.com', 9923005223, N'', 1560887473, 1560887394, 1560887462, N'viewtopic.php?f=2&t=2', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'America/Atikokan', N'D M d, Y g:i a', 16, 0, N'', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 1, 1, 1, 1, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'66cc7f38df62eaa8', 1, 0, 0)
INSERT [testforum].[phpbb_users] ([user_id], [user_type], [group_id], [user_permissions], [user_perm_from], [user_ip], [user_regdate], [username], [username_clean], [user_password], [user_passchg], [user_email], [user_email_hash], [user_birthday], [user_lastvisit], [user_lastmark], [user_lastpost_time], [user_lastpage], [user_last_confirm_key], [user_last_search], [user_warnings], [user_last_warning], [user_login_attempts], [user_inactive_reason], [user_inactive_time], [user_posts], [user_lang], [user_timezone], [user_dateformat], [user_style], [user_rank], [user_colour], [user_new_privmsg], [user_unread_privmsg], [user_last_privmsg], [user_message_rules], [user_full_folder], [user_emailtime], [user_topic_show_days], [user_topic_sortby_type], [user_topic_sortby_dir], [user_post_show_days], [user_post_sortby_type], [user_post_sortby_dir], [user_notify], [user_notify_pm], [user_notify_type], [user_allow_pm], [user_allow_viewonline], [user_allow_viewemail], [user_allow_massemail], [user_options], [user_avatar], [user_avatar_type], [user_avatar_width], [user_avatar_height], [user_sig], [user_sig_bbcode_uid], [user_sig_bbcode_bitfield], [user_jabber], [user_actkey], [user_newpasswd], [user_form_salt], [user_new], [user_reminded], [user_reminded_time]) VALUES (50, 0, 2, N'00000000000v667wt0
i1cjyo000000
qlaq53000000


zik0zj000000', 0, N'96.3.29.1', 1561132036, N'Michelle Roberts', N'michelle roberts', N'$2y$10$QlxHC1LLg75MuCsX81TAtel/nOJh7bIzhrN.CLpycT1Mf.sz5R1Sa', 1561132036, N'michelle.roberts@dcyf.wa.gov', 416313632328, N'', 1562619384, 1561132036, 1562619376, N'viewforum.php?f=2', N'', 0, 0, 0, 0, 0, 0, 0, N'en', N'America/Atikokan', N'D M d, Y g:i a', 16, 0, N'', 0, 0, 0, 0, -3, 0, 0, N't', N'd', 0, N't', N'a', 0, 1, 0, 1, 1, 1, 1, 230271, N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', N'ede42640924fb779', 1, 0, 0)
SET IDENTITY_INSERT [testforum].[phpbb_users] OFF
/****** Object:  Table [testforum].[phpbb_user_notifications]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_user_notifications](
	[item_type] [varchar](255) NOT NULL,
	[item_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[method] [varchar](255) NOT NULL,
	[notify] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_user_notifications] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [testforum].[phpbb_user_notifications] ON
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 2, N'', 1, 1)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 2, N'notification.method.email', 1, 2)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 2, N'', 1, 3)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 2, N'notification.method.email', 1, 4)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 3, N'', 1, 5)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 3, N'notification.method.email', 1, 6)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 3, N'', 1, 7)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 3, N'notification.method.email', 1, 8)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 4, N'', 1, 9)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 4, N'notification.method.email', 1, 10)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 4, N'', 1, 11)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 4, N'notification.method.email', 1, 12)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 5, N'', 1, 13)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 5, N'notification.method.email', 1, 14)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 5, N'', 1, 15)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 5, N'notification.method.email', 1, 16)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 6, N'', 1, 17)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 6, N'notification.method.email', 1, 18)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 6, N'', 1, 19)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 6, N'notification.method.email', 1, 20)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 7, N'', 1, 21)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 7, N'notification.method.email', 1, 22)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 7, N'', 1, 23)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 7, N'notification.method.email', 1, 24)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 8, N'', 1, 25)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 8, N'notification.method.email', 1, 26)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 8, N'', 1, 27)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 8, N'notification.method.email', 1, 28)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 9, N'', 1, 29)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 9, N'notification.method.email', 1, 30)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 9, N'', 1, 31)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 9, N'notification.method.email', 1, 32)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 10, N'', 1, 33)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 10, N'notification.method.email', 1, 34)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 10, N'', 1, 35)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 10, N'notification.method.email', 1, 36)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 11, N'', 1, 37)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 11, N'notification.method.email', 1, 38)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 11, N'', 1, 39)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 11, N'notification.method.email', 1, 40)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 12, N'', 1, 41)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 12, N'notification.method.email', 1, 42)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 12, N'', 1, 43)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 12, N'notification.method.email', 1, 44)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 13, N'', 1, 45)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 13, N'notification.method.email', 1, 46)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 13, N'', 1, 47)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 13, N'notification.method.email', 1, 48)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 14, N'', 1, 49)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 14, N'notification.method.email', 1, 50)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 14, N'', 1, 51)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 14, N'notification.method.email', 1, 52)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 15, N'', 1, 53)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 15, N'notification.method.email', 1, 54)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 15, N'', 1, 55)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 15, N'notification.method.email', 1, 56)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 16, N'', 1, 57)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 16, N'notification.method.email', 1, 58)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 16, N'', 1, 59)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 16, N'notification.method.email', 1, 60)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 17, N'', 1, 61)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 17, N'notification.method.email', 1, 62)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 17, N'', 1, 63)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 17, N'notification.method.email', 1, 64)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 18, N'', 1, 65)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 18, N'notification.method.email', 1, 66)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 18, N'', 1, 67)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 18, N'notification.method.email', 1, 68)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 19, N'', 1, 69)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 19, N'notification.method.email', 1, 70)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 19, N'', 1, 71)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 19, N'notification.method.email', 1, 72)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 20, N'', 1, 73)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 20, N'notification.method.email', 1, 74)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 20, N'', 1, 75)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 20, N'notification.method.email', 1, 76)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 21, N'', 1, 77)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 21, N'notification.method.email', 1, 78)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 21, N'', 1, 79)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 21, N'notification.method.email', 1, 80)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 22, N'', 1, 81)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 22, N'notification.method.email', 1, 82)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 22, N'', 1, 83)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 22, N'notification.method.email', 1, 84)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 23, N'', 1, 85)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 23, N'notification.method.email', 1, 86)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 23, N'', 1, 87)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 23, N'notification.method.email', 1, 88)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 24, N'', 1, 89)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 24, N'notification.method.email', 1, 90)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 24, N'', 1, 91)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 24, N'notification.method.email', 1, 92)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 25, N'', 1, 93)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 25, N'notification.method.email', 1, 94)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 25, N'', 1, 95)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 25, N'notification.method.email', 1, 96)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 26, N'', 1, 97)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 26, N'notification.method.email', 1, 98)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 26, N'', 1, 99)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 26, N'notification.method.email', 1, 100)
GO
print 'Processed 100 total records'
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 27, N'', 1, 101)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 27, N'notification.method.email', 1, 102)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 27, N'', 1, 103)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 27, N'notification.method.email', 1, 104)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 28, N'', 1, 105)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 28, N'notification.method.email', 1, 106)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 28, N'', 1, 107)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 28, N'notification.method.email', 1, 108)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 29, N'', 1, 109)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 29, N'notification.method.email', 1, 110)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 29, N'', 1, 111)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 29, N'notification.method.email', 1, 112)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 30, N'', 1, 113)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 30, N'notification.method.email', 1, 114)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 30, N'', 1, 115)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 30, N'notification.method.email', 1, 116)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 31, N'', 1, 117)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 31, N'notification.method.email', 1, 118)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 31, N'', 1, 119)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 31, N'notification.method.email', 1, 120)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 32, N'', 1, 121)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 32, N'notification.method.email', 1, 122)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 32, N'', 1, 123)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 32, N'notification.method.email', 1, 124)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 33, N'', 1, 125)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 33, N'notification.method.email', 1, 126)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 33, N'', 1, 127)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 33, N'notification.method.email', 1, 128)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 34, N'', 1, 129)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 34, N'notification.method.email', 1, 130)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 34, N'', 1, 131)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 34, N'notification.method.email', 1, 132)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 35, N'', 1, 133)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 35, N'notification.method.email', 1, 134)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 35, N'', 1, 135)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 35, N'notification.method.email', 1, 136)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 36, N'', 1, 137)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 36, N'notification.method.email', 1, 138)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 36, N'', 1, 139)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 36, N'notification.method.email', 1, 140)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 37, N'', 1, 141)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 37, N'notification.method.email', 1, 142)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 37, N'', 1, 143)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 37, N'notification.method.email', 1, 144)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 38, N'', 1, 145)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 38, N'notification.method.email', 1, 146)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 38, N'', 1, 147)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 38, N'notification.method.email', 1, 148)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 39, N'', 1, 149)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 39, N'notification.method.email', 1, 150)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 39, N'', 1, 151)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 39, N'notification.method.email', 1, 152)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 40, N'', 1, 153)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 40, N'notification.method.email', 1, 154)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 40, N'', 1, 155)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 40, N'notification.method.email', 1, 156)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 41, N'', 1, 157)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 41, N'notification.method.email', 1, 158)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 41, N'', 1, 159)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 41, N'notification.method.email', 1, 160)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 42, N'', 1, 161)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 42, N'notification.method.email', 1, 162)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 42, N'', 1, 163)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 42, N'notification.method.email', 1, 164)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 43, N'', 1, 165)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 43, N'notification.method.email', 1, 166)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 43, N'', 1, 167)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 43, N'notification.method.email', 1, 168)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 44, N'', 1, 169)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 44, N'notification.method.email', 1, 170)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 44, N'', 1, 171)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 44, N'notification.method.email', 1, 172)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 45, N'', 1, 173)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 45, N'notification.method.email', 1, 174)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 45, N'', 1, 175)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 45, N'notification.method.email', 1, 176)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 46, N'', 1, 177)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 46, N'notification.method.email', 1, 178)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 46, N'', 1, 179)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 46, N'notification.method.email', 1, 180)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 47, N'', 1, 181)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 47, N'notification.method.email', 1, 182)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 47, N'', 1, 183)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 47, N'notification.method.email', 1, 184)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 48, N'', 1, 185)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 48, N'notification.method.email', 1, 186)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 48, N'', 1, 187)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 48, N'notification.method.email', 1, 188)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 49, N'', 1, 189)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 49, N'notification.method.email', 1, 190)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 49, N'', 1, 191)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 49, N'notification.method.email', 1, 192)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 50, N'', 1, 193)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.post', 0, 50, N'notification.method.email', 1, 194)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 50, N'', 1, 195)
INSERT [testforum].[phpbb_user_notifications] ([item_type], [item_id], [user_id], [method], [notify], [mssqlindex]) VALUES (N'notification.type.topic', 0, 50, N'notification.method.email', 1, 196)
SET IDENTITY_INSERT [testforum].[phpbb_user_notifications] OFF
/****** Object:  Table [testforum].[phpbb_user_group]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_user_group](
	[group_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[group_leader] [int] NOT NULL,
	[user_pending] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_user_group] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [group_id] ON [testforum].[phpbb_user_group] 
(
	[group_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [group_leader] ON [testforum].[phpbb_user_group] 
(
	[group_leader] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [testforum].[phpbb_user_group] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_user_group] ON
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (1, 1, 0, 0, 1)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (2, 2, 0, 0, 2)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (4, 2, 0, 0, 3)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (5, 2, 1, 0, 4)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 3, 0, 0, 5)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 4, 0, 0, 6)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 5, 0, 0, 7)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 6, 0, 0, 8)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 7, 0, 0, 9)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 8, 0, 0, 10)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 9, 0, 0, 11)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 10, 0, 0, 12)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 11, 0, 0, 13)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 12, 0, 0, 14)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 13, 0, 0, 15)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 14, 0, 0, 16)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 15, 0, 0, 17)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 16, 0, 0, 18)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 17, 0, 0, 19)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 18, 0, 0, 20)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 19, 0, 0, 21)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 20, 0, 0, 22)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 21, 0, 0, 23)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 22, 0, 0, 24)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 23, 0, 0, 25)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 24, 0, 0, 26)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 25, 0, 0, 27)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 26, 0, 0, 28)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 27, 0, 0, 29)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 28, 0, 0, 30)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 29, 0, 0, 31)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 30, 0, 0, 32)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 31, 0, 0, 33)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 32, 0, 0, 34)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 33, 0, 0, 35)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 34, 0, 0, 36)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 35, 0, 0, 37)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 36, 0, 0, 38)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 37, 0, 0, 39)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 38, 0, 0, 40)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 39, 0, 0, 41)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 40, 0, 0, 42)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 41, 0, 0, 43)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 42, 0, 0, 44)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 43, 0, 0, 45)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 44, 0, 0, 46)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 45, 0, 0, 47)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 46, 0, 0, 48)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (6, 47, 0, 0, 49)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (2, 48, 0, 0, 50)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (7, 48, 0, 0, 51)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (8, 2, 0, 0, 52)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (8, 48, 0, 0, 53)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (2, 49, 0, 0, 54)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (7, 49, 0, 0, 55)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (8, 49, 0, 0, 56)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (9, 2, 0, 0, 57)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (2, 50, 0, 0, 58)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (7, 50, 0, 0, 59)
INSERT [testforum].[phpbb_user_group] ([group_id], [user_id], [group_leader], [user_pending], [mssqlindex]) VALUES (9, 50, 0, 0, 60)
SET IDENTITY_INSERT [testforum].[phpbb_user_group] OFF
/****** Object:  Table [testforum].[phpbb_topics_watch]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_topics_watch](
	[topic_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[notify_status] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_topics_watch] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [notify_stat] ON [testforum].[phpbb_topics_watch] 
(
	[notify_status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [topic_id] ON [testforum].[phpbb_topics_watch] 
(
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [testforum].[phpbb_topics_watch] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_topics_track]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_topics_track](
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[forum_id] [int] NOT NULL,
	[mark_time] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_topics_track] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [forum_id] ON [testforum].[phpbb_topics_track] 
(
	[forum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [topic_id] ON [testforum].[phpbb_topics_track] 
(
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [testforum].[phpbb_topics_track] ([user_id], [topic_id], [forum_id], [mark_time]) VALUES (2, 2, 2, 1560819709)
INSERT [testforum].[phpbb_topics_track] ([user_id], [topic_id], [forum_id], [mark_time]) VALUES (2, 3, 4, 1560869849)
INSERT [testforum].[phpbb_topics_track] ([user_id], [topic_id], [forum_id], [mark_time]) VALUES (2, 4, 5, 1560889472)
INSERT [testforum].[phpbb_topics_track] ([user_id], [topic_id], [forum_id], [mark_time]) VALUES (49, 2, 2, 1560887462)
INSERT [testforum].[phpbb_topics_track] ([user_id], [topic_id], [forum_id], [mark_time]) VALUES (50, 2, 2, 1562619377)
/****** Object:  Table [testforum].[phpbb_topics_posted]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_topics_posted](
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[topic_posted] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_topics_posted] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [testforum].[phpbb_topics_posted] ([user_id], [topic_id], [topic_posted]) VALUES (2, 1, 1)
INSERT [testforum].[phpbb_topics_posted] ([user_id], [topic_id], [topic_posted]) VALUES (2, 2, 1)
INSERT [testforum].[phpbb_topics_posted] ([user_id], [topic_id], [topic_posted]) VALUES (2, 3, 1)
INSERT [testforum].[phpbb_topics_posted] ([user_id], [topic_id], [topic_posted]) VALUES (2, 4, 1)
INSERT [testforum].[phpbb_topics_posted] ([user_id], [topic_id], [topic_posted]) VALUES (49, 2, 1)
INSERT [testforum].[phpbb_topics_posted] ([user_id], [topic_id], [topic_posted]) VALUES (50, 2, 1)
/****** Object:  Table [testforum].[phpbb_topics]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_topics](
	[topic_id] [int] IDENTITY(1,1) NOT NULL,
	[forum_id] [int] NOT NULL,
	[icon_id] [int] NOT NULL,
	[topic_attachment] [int] NOT NULL,
	[topic_reported] [int] NOT NULL,
	[topic_title] [varchar](255) NOT NULL,
	[topic_poster] [int] NOT NULL,
	[topic_time] [int] NOT NULL,
	[topic_time_limit] [int] NOT NULL,
	[topic_views] [int] NOT NULL,
	[topic_status] [int] NOT NULL,
	[topic_type] [int] NOT NULL,
	[topic_first_post_id] [int] NOT NULL,
	[topic_first_poster_name] [varchar](255) NOT NULL,
	[topic_first_poster_colour] [varchar](6) NOT NULL,
	[topic_last_post_id] [int] NOT NULL,
	[topic_last_poster_id] [int] NOT NULL,
	[topic_last_poster_name] [varchar](255) NOT NULL,
	[topic_last_poster_colour] [varchar](6) NOT NULL,
	[topic_last_post_subject] [varchar](255) NOT NULL,
	[topic_last_post_time] [int] NOT NULL,
	[topic_last_view_time] [int] NOT NULL,
	[topic_moved_id] [int] NOT NULL,
	[topic_bumped] [int] NOT NULL,
	[topic_bumper] [int] NOT NULL,
	[poll_title] [varchar](255) NOT NULL,
	[poll_start] [int] NOT NULL,
	[poll_length] [int] NOT NULL,
	[poll_max_options] [int] NOT NULL,
	[poll_last_vote] [int] NOT NULL,
	[poll_vote_change] [int] NOT NULL,
	[topic_visibility] [int] NOT NULL,
	[topic_delete_time] [int] NOT NULL,
	[topic_delete_reason] [varchar](255) NOT NULL,
	[topic_delete_user] [int] NOT NULL,
	[topic_posts_approved] [int] NOT NULL,
	[topic_posts_unapproved] [int] NOT NULL,
	[topic_posts_softdeleted] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_topics] PRIMARY KEY CLUSTERED 
(
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [fid_time_moved] ON [testforum].[phpbb_topics] 
(
	[forum_id] ASC,
	[topic_last_post_time] ASC,
	[topic_moved_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [forum_id] ON [testforum].[phpbb_topics] 
(
	[forum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [forum_id_type] ON [testforum].[phpbb_topics] 
(
	[forum_id] ASC,
	[topic_type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [forum_vis_last] ON [testforum].[phpbb_topics] 
(
	[forum_id] ASC,
	[topic_visibility] ASC,
	[topic_last_post_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [last_post_time] ON [testforum].[phpbb_topics] 
(
	[topic_last_post_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [latest_topics] ON [testforum].[phpbb_topics] 
(
	[forum_id] ASC,
	[topic_last_post_time] ASC,
	[topic_last_post_id] ASC,
	[topic_moved_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [topic_visibility] ON [testforum].[phpbb_topics] 
(
	[topic_visibility] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_topics] ON
INSERT [testforum].[phpbb_topics] ([topic_id], [forum_id], [icon_id], [topic_attachment], [topic_reported], [topic_title], [topic_poster], [topic_time], [topic_time_limit], [topic_views], [topic_status], [topic_type], [topic_first_post_id], [topic_first_poster_name], [topic_first_poster_colour], [topic_last_post_id], [topic_last_poster_id], [topic_last_poster_name], [topic_last_poster_colour], [topic_last_post_subject], [topic_last_post_time], [topic_last_view_time], [topic_moved_id], [topic_bumped], [topic_bumper], [poll_title], [poll_start], [poll_length], [poll_max_options], [poll_last_vote], [poll_vote_change], [topic_visibility], [topic_delete_time], [topic_delete_reason], [topic_delete_user], [topic_posts_approved], [topic_posts_unapproved], [topic_posts_softdeleted]) VALUES (1, 2, 0, 0, 0, N'Welcome to phpBB3', 2, 1560532966, 0, 1, 0, 0, 1, N'JessicaAdmin', N'AA0000', 1, 2, N'JessicaAdmin', N'AA0000', N'Welcome to phpBB3', 1560532966, 1562615385, 0, 0, 0, N'', 0, 0, 1, 0, 0, 1, 0, N'', 0, 1, 0, 0)
INSERT [testforum].[phpbb_topics] ([topic_id], [forum_id], [icon_id], [topic_attachment], [topic_reported], [topic_title], [topic_poster], [topic_time], [topic_time_limit], [topic_views], [topic_status], [topic_type], [topic_first_post_id], [topic_first_poster_name], [topic_first_poster_colour], [topic_last_post_id], [topic_last_poster_id], [topic_last_poster_name], [topic_last_poster_colour], [topic_last_post_subject], [topic_last_post_time], [topic_last_view_time], [topic_moved_id], [topic_bumped], [topic_bumper], [poll_title], [poll_start], [poll_length], [poll_max_options], [poll_last_vote], [poll_vote_change], [topic_visibility], [topic_delete_time], [topic_delete_reason], [topic_delete_user], [topic_posts_approved], [topic_posts_unapproved], [topic_posts_softdeleted]) VALUES (2, 2, 8, 1, 0, N'Trying a new topic', 2, 1560819234, 0, 10, 0, 0, 2, N'JessicaAdmin', N'AA0000', 3, 2, N'JessicaAdmin', N'AA0000', N'Re: Trying a new topic', 1560819709, 1562619376, 0, 0, 0, N'', 0, 0, 1, 0, 0, 1, 0, N'', 0, 2, 3, 0)
INSERT [testforum].[phpbb_topics] ([topic_id], [forum_id], [icon_id], [topic_attachment], [topic_reported], [topic_title], [topic_poster], [topic_time], [topic_time_limit], [topic_views], [topic_status], [topic_type], [topic_first_post_id], [topic_first_poster_name], [topic_first_poster_colour], [topic_last_post_id], [topic_last_poster_id], [topic_last_poster_name], [topic_last_poster_colour], [topic_last_post_subject], [topic_last_post_time], [topic_last_view_time], [topic_moved_id], [topic_bumped], [topic_bumper], [poll_title], [poll_start], [poll_length], [poll_max_options], [poll_last_vote], [poll_vote_change], [topic_visibility], [topic_delete_time], [topic_delete_reason], [topic_delete_user], [topic_posts_approved], [topic_posts_unapproved], [topic_posts_softdeleted]) VALUES (3, 4, 0, 0, 0, N'Trying a new topic a second time', 2, 1560869849, 0, 2, 0, 0, 4, N'JessicaAdmin', N'AA0000', 4, 2, N'JessicaAdmin', N'AA0000', N'Trying a new topic a second time', 1560869849, 1562696294, 0, 0, 0, N'', 0, 0, 1, 0, 0, 1, 0, N'', 0, 1, 0, 0)
INSERT [testforum].[phpbb_topics] ([topic_id], [forum_id], [icon_id], [topic_attachment], [topic_reported], [topic_title], [topic_poster], [topic_time], [topic_time_limit], [topic_views], [topic_status], [topic_type], [topic_first_post_id], [topic_first_poster_name], [topic_first_poster_colour], [topic_last_post_id], [topic_last_poster_id], [topic_last_poster_name], [topic_last_poster_colour], [topic_last_post_subject], [topic_last_post_time], [topic_last_view_time], [topic_moved_id], [topic_bumped], [topic_bumper], [poll_title], [poll_start], [poll_length], [poll_max_options], [poll_last_vote], [poll_vote_change], [topic_visibility], [topic_delete_time], [topic_delete_reason], [topic_delete_user], [topic_posts_approved], [topic_posts_unapproved], [topic_posts_softdeleted]) VALUES (4, 5, 0, 0, 0, N'Welcome to the Disussion Board', 2, 1560889472, 0, 5, 0, 0, 6, N'JessicaAdmin', N'AA0000', 6, 2, N'JessicaAdmin', N'AA0000', N'Welcome to the Disussion Board', 1560889472, 1562616132, 0, 0, 0, N'', 0, 0, 1, 0, 0, 1, 0, N'', 0, 1, 0, 0)
SET IDENTITY_INSERT [testforum].[phpbb_topics] OFF
/****** Object:  Table [testforum].[phpbb_teampage]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_teampage](
	[teampage_id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[teampage_name] [varchar](255) NOT NULL,
	[teampage_position] [int] NOT NULL,
	[teampage_parent] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_teampage] PRIMARY KEY CLUSTERED 
(
	[teampage_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [testforum].[phpbb_teampage] ON
INSERT [testforum].[phpbb_teampage] ([teampage_id], [group_id], [teampage_name], [teampage_position], [teampage_parent]) VALUES (1, 5, N'', 1, 0)
INSERT [testforum].[phpbb_teampage] ([teampage_id], [group_id], [teampage_name], [teampage_position], [teampage_parent]) VALUES (2, 4, N'', 2, 0)
INSERT [testforum].[phpbb_teampage] ([teampage_id], [group_id], [teampage_name], [teampage_position], [teampage_parent]) VALUES (3, 8, N'', 3, 0)
SET IDENTITY_INSERT [testforum].[phpbb_teampage] OFF
/****** Object:  Table [testforum].[phpbb_styles]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_styles](
	[style_id] [int] IDENTITY(1,1) NOT NULL,
	[style_name] [varchar](255) NOT NULL,
	[style_copyright] [varchar](255) NOT NULL,
	[style_active] [int] NOT NULL,
	[style_path] [varchar](100) NOT NULL,
	[bbcode_bitfield] [varchar](255) NOT NULL,
	[style_parent_id] [int] NOT NULL,
	[style_parent_tree] [varchar](8000) NOT NULL,
 CONSTRAINT [PK_phpbb_styles] PRIMARY KEY CLUSTERED 
(
	[style_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [style_name] ON [testforum].[phpbb_styles] 
(
	[style_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_styles] ON
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (1, N'prosilver', N'&copy; phpBB Limited', 1, N'prosilver', N'kNg=', 0, N'')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (2, N'Basic', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/, Modified by Gabriel Fischer', 1, N'basic', N'+Ng=', 1, N'prosilver')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (4, N'Green-Style', N'Â© phpBB Limited, 2016', 1, N'Green-Style', N'+Ng=', 1, N'prosilver')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (5, N'Absolution', N'Â© PlanetStyles.net - Premium phpBB3 Styles', 1, N'Absolution', N'+Ng=', 1, N'prosilver')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (7, N'Elegance', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'elegance', N'+Ng=', 1, N'prosilver')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (8, N'Basic (Aqua)', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'basic_aqua', N'+Ng=', 2, N'prosilver/basic')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (9, N'Basic (Dark Blue)', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'basic_darkblue', N'+Ng=', 2, N'prosilver/basic')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (10, N'Basic (Orange)', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'basic_orange', N'+Ng=', 2, N'prosilver/basic')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (11, N'CleanSilver', N'Â© MannixMD, @MannixMD', 1, N'CleanSilver', N'+Ng=', 1, N'prosilver')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (12, N'Elegance (Aqua)', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'elegance_aqua', N'+Ng=', 7, N'prosilver/elegance')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (13, N'Elegance (Light Blue)', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'elegance_lightblue', N'+Ng=', 7, N'prosilver/elegance')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (14, N'Elegance (Soft Blue)', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'elegance_softblue', N'+Ng=', 7, N'prosilver/elegance')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (15, N'Elegance (Steel Blue)', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'elegance_steelblue', N'+Ng=', 7, N'prosilver/elegance')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (16, N'proFormell', N'Â© Marc Alexander, 2007-2015', 1, N'proFormell', N'+Ng=', 1, N'prosilver')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (17, N'Simplicity', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'simplicity', N'+Ng=', 1, N'prosilver')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (18, N'Elegance (Green)', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'elegance_green', N'+Ng=', 7, N'prosilver/elegance')
INSERT [testforum].[phpbb_styles] ([style_id], [style_name], [style_copyright], [style_active], [style_path], [bbcode_bitfield], [style_parent_id], [style_parent_tree]) VALUES (19, N'Elegance (Soft Green)', N'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/', 1, N'elegance_softgreen', N'+Ng=', 7, N'prosilver/elegance')
SET IDENTITY_INSERT [testforum].[phpbb_styles] OFF
/****** Object:  Table [testforum].[phpbb_smilies]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_smilies](
	[smiley_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[emotion] [varchar](255) NOT NULL,
	[smiley_url] [varchar](50) NOT NULL,
	[smiley_width] [int] NOT NULL,
	[smiley_height] [int] NOT NULL,
	[smiley_order] [int] NOT NULL,
	[display_on_posting] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_smilies] PRIMARY KEY CLUSTERED 
(
	[smiley_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [display_on_post] ON [testforum].[phpbb_smilies] 
(
	[display_on_posting] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_smilies] ON
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (1, N':D', N'Very Happy', N'icon_e_biggrin.gif', 15, 17, 1, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (2, N':-D', N'Very Happy', N'icon_e_biggrin.gif', 15, 17, 2, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (3, N':grin:', N'Very Happy', N'icon_e_biggrin.gif', 15, 17, 3, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (4, N':)', N'Smile', N'icon_e_smile.gif', 15, 17, 4, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (5, N':-)', N'Smile', N'icon_e_smile.gif', 15, 17, 5, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (6, N':smile:', N'Smile', N'icon_e_smile.gif', 15, 17, 6, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (7, N';)', N'Wink', N'icon_e_wink.gif', 15, 17, 7, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (8, N';-)', N'Wink', N'icon_e_wink.gif', 15, 17, 8, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (9, N':wink:', N'Wink', N'icon_e_wink.gif', 15, 17, 9, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (10, N':(', N'Sad', N'icon_e_sad.gif', 15, 17, 10, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (11, N':-(', N'Sad', N'icon_e_sad.gif', 15, 17, 11, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (12, N':sad:', N'Sad', N'icon_e_sad.gif', 15, 17, 12, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (13, N':o', N'Surprised', N'icon_e_surprised.gif', 15, 17, 13, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (14, N':-o', N'Surprised', N'icon_e_surprised.gif', 15, 17, 14, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (15, N':eek:', N'Surprised', N'icon_e_surprised.gif', 15, 17, 15, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (16, N':shock:', N'Shocked', N'icon_eek.gif', 15, 17, 16, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (17, N':?', N'Confused', N'icon_e_confused.gif', 15, 17, 17, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (18, N':-?', N'Confused', N'icon_e_confused.gif', 15, 17, 18, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (19, N':???:', N'Confused', N'icon_e_confused.gif', 15, 17, 19, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (20, N'8-)', N'Cool', N'icon_cool.gif', 15, 17, 20, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (21, N':cool:', N'Cool', N'icon_cool.gif', 15, 17, 21, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (22, N':lol:', N'Laughing', N'icon_lol.gif', 15, 17, 22, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (23, N':x', N'Mad', N'icon_mad.gif', 15, 17, 23, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (24, N':-x', N'Mad', N'icon_mad.gif', 15, 17, 24, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (25, N':mad:', N'Mad', N'icon_mad.gif', 15, 17, 25, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (26, N':P', N'Razz', N'icon_razz.gif', 15, 17, 26, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (27, N':-P', N'Razz', N'icon_razz.gif', 15, 17, 27, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (28, N':razz:', N'Razz', N'icon_razz.gif', 15, 17, 28, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (29, N':oops:', N'Embarrassed', N'icon_redface.gif', 15, 17, 29, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (30, N':cry:', N'Crying or Very Sad', N'icon_cry.gif', 15, 17, 30, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (31, N':evil:', N'Evil or Very Mad', N'icon_evil.gif', 15, 17, 31, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (32, N':twisted:', N'Twisted Evil', N'icon_twisted.gif', 15, 17, 32, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (33, N':roll:', N'Rolling Eyes', N'icon_rolleyes.gif', 15, 17, 33, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (34, N':!:', N'Exclamation', N'icon_exclaim.gif', 15, 17, 34, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (35, N':?:', N'Question', N'icon_question.gif', 15, 17, 35, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (36, N':idea:', N'Idea', N'icon_idea.gif', 15, 17, 36, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (37, N':arrow:', N'Arrow', N'icon_arrow.gif', 15, 17, 37, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (38, N':|', N'Neutral', N'icon_neutral.gif', 15, 17, 38, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (39, N':-|', N'Neutral', N'icon_neutral.gif', 15, 17, 39, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (40, N':mrgreen:', N'Mr. Green', N'icon_mrgreen.gif', 15, 17, 40, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (41, N':geek:', N'Geek', N'icon_e_geek.gif', 17, 17, 41, 1)
INSERT [testforum].[phpbb_smilies] ([smiley_id], [code], [emotion], [smiley_url], [smiley_width], [smiley_height], [smiley_order], [display_on_posting]) VALUES (42, N':ugeek:', N'Uber Geek', N'icon_e_ugeek.gif', 17, 18, 42, 1)
SET IDENTITY_INSERT [testforum].[phpbb_smilies] OFF
/****** Object:  Table [testforum].[phpbb_sitelist]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_sitelist](
	[site_id] [int] IDENTITY(1,1) NOT NULL,
	[site_ip] [varchar](40) NOT NULL,
	[site_hostname] [varchar](255) NOT NULL,
	[ip_exclude] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_sitelist] PRIMARY KEY CLUSTERED 
(
	[site_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [testforum].[phpbb_sessions_keys]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_sessions_keys](
	[key_id] [char](32) NOT NULL,
	[user_id] [int] NOT NULL,
	[last_ip] [varchar](40) NOT NULL,
	[last_login] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_sessions_keys] PRIMARY KEY CLUSTERED 
(
	[key_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [last_login] ON [testforum].[phpbb_sessions_keys] 
(
	[last_login] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [testforum].[phpbb_sessions_keys] ([key_id], [user_id], [last_ip], [last_login]) VALUES (N'dd64b1043f6df1d82018a843354509e1', 2, N'96.3.29.1', 1560816013)
/****** Object:  Table [testforum].[phpbb_sessions]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_sessions](
	[session_id] [char](32) NOT NULL,
	[session_user_id] [int] NOT NULL,
	[session_last_visit] [int] NOT NULL,
	[session_start] [int] NOT NULL,
	[session_time] [int] NOT NULL,
	[session_ip] [varchar](40) NOT NULL,
	[session_browser] [varchar](150) NOT NULL,
	[session_forwarded_for] [varchar](255) NOT NULL,
	[session_page] [varchar](255) NOT NULL,
	[session_viewonline] [int] NOT NULL,
	[session_autologin] [int] NOT NULL,
	[session_admin] [int] NOT NULL,
	[session_forum_id] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_sessions] PRIMARY KEY CLUSTERED 
(
	[session_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [session_fid] ON [testforum].[phpbb_sessions] 
(
	[session_forum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [session_time] ON [testforum].[phpbb_sessions] 
(
	[session_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [session_user_id] ON [testforum].[phpbb_sessions] 
(
	[session_user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [testforum].[phpbb_sessions] ([session_id], [session_user_id], [session_last_visit], [session_start], [session_time], [session_ip], [session_browser], [session_forwarded_for], [session_page], [session_viewonline], [session_autologin], [session_admin], [session_forum_id]) VALUES (N'587eb3c38ba56c8f7d9056e77b00460f', 1, 1562697203, 1562697203, 1562697203, N'96.3.29.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', N'', N'Index.php', 1, 0, 0, 0)
INSERT [testforum].[phpbb_sessions] ([session_id], [session_user_id], [session_last_visit], [session_start], [session_time], [session_ip], [session_browser], [session_forwarded_for], [session_page], [session_viewonline], [session_autologin], [session_admin], [session_forum_id]) VALUES (N'cb05b787e697ee379eaf197bb4e5d147', 1, 1562696538, 1562696538, 1562696539, N'97.127.81.172', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', N'', N'index.php', 1, 0, 0, 0)
INSERT [testforum].[phpbb_sessions] ([session_id], [session_user_id], [session_last_visit], [session_start], [session_time], [session_ip], [session_browser], [session_forwarded_for], [session_page], [session_viewonline], [session_autologin], [session_admin], [session_forum_id]) VALUES (N'd47c51d38dd938e5384e2db56baea8a1', 2, 1561132327, 1562697319, 1562698260, N'96.3.29.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', N'', N'adm/index.php?i=acp_attachments&icat=9&mode=attach', 1, 0, 1, 0)
/****** Object:  Table [testforum].[phpbb_search_wordmatch]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_search_wordmatch](
	[post_id] [int] NOT NULL,
	[word_id] [int] NOT NULL,
	[title_match] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_search_wordmatch] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_id] ON [testforum].[phpbb_search_wordmatch] 
(
	[post_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [un_mtch] ON [testforum].[phpbb_search_wordmatch] 
(
	[word_id] ASC,
	[post_id] ASC,
	[title_match] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [word_id] ON [testforum].[phpbb_search_wordmatch] 
(
	[word_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_search_wordmatch] ON
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 1, 0, 51)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 1, 0, 165)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 2, 0, 22)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 3, 0, 41)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 3, 0, 148)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 3, 0, 181)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 4, 0, 57)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 5, 0, 40)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 5, 1, 58)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 6, 0, 33)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 7, 0, 21)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 8, 0, 47)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 8, 0, 157)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 9, 0, 55)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 10, 0, 56)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 10, 0, 95)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 11, 0, 35)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 12, 0, 19)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 13, 0, 34)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 14, 0, 4)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 14, 0, 105)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 14, 0, 178)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 15, 0, 14)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 16, 0, 48)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 17, 0, 9)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 17, 1, 96)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 17, 0, 109)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 18, 0, 20)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 19, 0, 49)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 19, 0, 94)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 19, 1, 98)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 19, 0, 163)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 20, 0, 43)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 21, 0, 23)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (3, 21, 0, 67)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 22, 0, 12)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 23, 0, 26)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 24, 0, 6)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 24, 0, 106)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 25, 0, 8)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 26, 0, 5)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 27, 0, 39)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 28, 0, 24)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 28, 0, 128)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 29, 0, 42)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 30, 0, 52)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 31, 0, 1)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 32, 0, 10)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 33, 0, 30)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 34, 0, 36)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 35, 0, 31)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 36, 0, 45)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 36, 0, 151)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 37, 0, 53)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 38, 0, 15)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 39, 0, 3)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 39, 0, 104)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 40, 0, 13)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 41, 0, 38)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 41, 0, 143)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 42, 0, 25)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 43, 0, 7)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 44, 0, 2)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 44, 0, 103)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 45, 0, 50)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 46, 0, 37)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (2, 46, 0, 62)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (2, 46, 1, 64)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (3, 46, 1, 70)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 46, 0, 73)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 46, 1, 78)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (5, 46, 1, 86)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 46, 1, 174)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 46, 1, 187)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 47, 0, 11)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 48, 0, 27)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 49, 0, 17)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 50, 0, 44)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 51, 0, 46)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 52, 0, 16)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 53, 0, 28)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 54, 0, 54)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 55, 0, 18)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 56, 0, 32)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 57, 0, 29)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (1, 58, 1, 59)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 58, 1, 99)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (2, 59, 0, 61)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (5, 59, 0, 84)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 59, 0, 91)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (2, 60, 0, 63)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (2, 60, 1, 65)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (3, 60, 0, 69)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (3, 60, 1, 71)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 60, 0, 76)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 60, 1, 81)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (5, 60, 1, 87)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 60, 1, 175)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 60, 1, 188)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (2, 61, 0, 60)
GO
print 'Processed 100 total records'
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (2, 62, 1, 66)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (3, 62, 1, 72)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 62, 0, 77)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 62, 1, 82)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (5, 62, 1, 88)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 62, 1, 176)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 62, 0, 186)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 62, 1, 189)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (3, 63, 0, 68)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 64, 0, 74)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 64, 1, 79)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 65, 0, 75)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (4, 65, 1, 80)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (5, 66, 0, 83)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (5, 67, 0, 85)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 67, 0, 153)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 67, 0, 182)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 68, 0, 89)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 68, 0, 112)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 69, 0, 93)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 70, 0, 92)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 71, 0, 90)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (6, 72, 1, 97)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 73, 0, 122)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 74, 0, 123)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 75, 0, 117)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 76, 0, 129)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 77, 0, 170)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 78, 0, 132)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 79, 0, 171)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 80, 0, 130)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 81, 0, 134)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 82, 0, 155)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 82, 0, 183)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 83, 0, 124)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 84, 0, 119)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 85, 0, 142)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 86, 0, 127)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 87, 0, 114)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 88, 0, 141)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 89, 0, 108)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 90, 0, 116)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 91, 0, 140)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 92, 0, 120)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 93, 0, 137)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 94, 0, 172)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 95, 0, 144)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 96, 0, 115)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 97, 0, 164)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 98, 0, 150)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 99, 0, 110)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 100, 0, 169)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 101, 0, 160)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 102, 0, 158)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 103, 0, 118)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 104, 0, 131)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 105, 0, 162)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 106, 0, 167)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 107, 0, 159)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 108, 0, 136)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 109, 0, 154)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 110, 0, 152)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 111, 0, 139)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 112, 0, 100)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 113, 0, 107)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 114, 0, 126)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 115, 0, 135)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 116, 0, 102)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 117, 0, 147)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 118, 0, 149)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 119, 0, 156)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 120, 0, 138)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 121, 0, 111)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 122, 0, 166)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 122, 0, 185)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 123, 0, 101)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 124, 0, 146)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 125, 0, 173)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 126, 0, 121)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 127, 0, 161)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 128, 0, 133)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 129, 0, 125)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 130, 0, 168)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 131, 0, 145)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (7, 132, 0, 113)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 133, 0, 180)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 134, 0, 184)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 135, 0, 179)
INSERT [testforum].[phpbb_search_wordmatch] ([post_id], [word_id], [title_match], [mssqlindex]) VALUES (8, 136, 0, 177)
SET IDENTITY_INSERT [testforum].[phpbb_search_wordmatch] OFF
/****** Object:  Table [testforum].[phpbb_search_wordlist]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_search_wordlist](
	[word_id] [int] IDENTITY(1,1) NOT NULL,
	[word_text] [varchar](255) NOT NULL,
	[word_common] [int] NOT NULL,
	[word_count] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_search_wordlist] PRIMARY KEY CLUSTERED 
(
	[word_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [wrd_cnt] ON [testforum].[phpbb_search_wordlist] 
(
	[word_count] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [wrd_txt] ON [testforum].[phpbb_search_wordlist] 
(
	[word_text] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_search_wordlist] ON
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (1, N'this', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (2, N'example', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (3, N'post', 0, 3)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (4, N'your', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (5, N'phpbb3', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (6, N'installation', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (7, N'everything', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (8, N'seems', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (9, N'working', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (10, N'you', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (11, N'may', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (12, N'delete', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (13, N'like', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (14, N'and', 0, 3)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (15, N'continue', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (16, N'set', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (17, N'board', 0, 3)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (18, N'during', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (19, N'the', 0, 4)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (20, N'process', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (21, N'first', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (22, N'category', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (23, N'forum', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (24, N'are', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (25, N'assigned', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (26, N'appropriate', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (27, N'permissions', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (28, N'for', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (29, N'predefined', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (30, N'usergroups', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (31, N'administrators', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (32, N'bots', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (33, N'global', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (34, N'moderators', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (35, N'guests', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (36, N'registered', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (37, N'users', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (38, N'coppa', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (39, N'also', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (40, N'choose', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (41, N'not', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (42, N'forget', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (43, N'assign', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (44, N'all', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (45, N'these', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (46, N'new', 0, 9)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (47, N'categories', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (48, N'forums', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (49, N'create', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (50, N'recommended', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (51, N'rename', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (52, N'copy', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (53, N'from', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (54, N'while', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (55, N'creating', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (56, N'have', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (57, N'fun', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (58, N'welcome', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (59, N'here', 0, 3)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (60, N'topic', 0, 9)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (61, N'bla', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (62, N'trying', 0, 8)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (63, N'replay', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (64, N'second', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (65, N'time', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (66, N'great', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (67, N'reply', 0, 3)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (68, N'can', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (69, N'test', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (70, N'out', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (71, N'features', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (72, N'disussion', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (73, N'easy', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (74, N'enough', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (75, N'curious', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (76, N'how', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (77, N'will', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (78, N'interface', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (79, N'with', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (80, N'inspire', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (81, N'jump', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (82, N'right', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (83, N'exact', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (84, N'discussion', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (85, N'need', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (86, N'find', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (87, N'correct', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (88, N'menu', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (89, N'based', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (90, N'courses', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (91, N'many', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (92, N'discussions', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (93, N'live', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (94, N'within', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (95, N'one', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (96, N'course', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (97, N'there', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (98, N'private', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (99, N'boards', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (100, N'where', 0, 1)
GO
print 'Processed 100 total records'
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (101, N'submit', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (102, N'something', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (103, N'directly', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (104, N'instructor', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (105, N'that', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (106, N'viewed', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (107, N'students', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (108, N'least', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (109, N'required', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (110, N'replies', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (111, N'love', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (112, N'ability', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (113, N'attach', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (114, N'file', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (115, N'just', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (116, N'added', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (117, N'photo', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (118, N'practice', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (119, N'see', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (120, N'looks', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (121, N'but', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (122, N'tried', 0, 2)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (123, N'add', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (124, N'pdf', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (125, N'word', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (126, N'doc', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (127, N'tells', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (128, N'invalid', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (129, N'extension', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (130, N'what', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (131, N'our', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (132, N'choices', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (133, N'didn', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (134, N'show', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (135, N'away', 0, 1)
INSERT [testforum].[phpbb_search_wordlist] ([word_id], [word_text], [word_common], [word_count]) VALUES (136, N'again', 0, 1)
SET IDENTITY_INSERT [testforum].[phpbb_search_wordlist] OFF
/****** Object:  Table [testforum].[phpbb_search_results]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_search_results](
	[search_key] [varchar](32) NOT NULL,
	[search_time] [int] NOT NULL,
	[search_keywords] [text] NOT NULL,
	[search_authors] [text] NOT NULL,
 CONSTRAINT [PK_phpbb_search_results] PRIMARY KEY CLUSTERED 
(
	[search_key] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [testforum].[phpbb_reports_reasons]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_reports_reasons](
	[reason_id] [int] IDENTITY(1,1) NOT NULL,
	[reason_title] [varchar](255) NOT NULL,
	[reason_description] [text] NOT NULL,
	[reason_order] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_reports_reasons] PRIMARY KEY CLUSTERED 
(
	[reason_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [testforum].[phpbb_reports_reasons] ON
INSERT [testforum].[phpbb_reports_reasons] ([reason_id], [reason_title], [reason_description], [reason_order]) VALUES (1, N'warez', N'The post contains links to illegal or pirated software.', 1)
INSERT [testforum].[phpbb_reports_reasons] ([reason_id], [reason_title], [reason_description], [reason_order]) VALUES (2, N'spam', N'The reported post has the only purpose to advertise for a website or another product.', 2)
INSERT [testforum].[phpbb_reports_reasons] ([reason_id], [reason_title], [reason_description], [reason_order]) VALUES (3, N'off_topic', N'The reported post is off topic.', 3)
INSERT [testforum].[phpbb_reports_reasons] ([reason_id], [reason_title], [reason_description], [reason_order]) VALUES (4, N'other', N'The reported post does not fit into any other category, please use the further information field.', 4)
SET IDENTITY_INSERT [testforum].[phpbb_reports_reasons] OFF
/****** Object:  Table [testforum].[phpbb_reports]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_reports](
	[report_id] [int] IDENTITY(1,1) NOT NULL,
	[reason_id] [int] NOT NULL,
	[post_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[user_notify] [int] NOT NULL,
	[report_closed] [int] NOT NULL,
	[report_time] [int] NOT NULL,
	[report_text] [text] NOT NULL,
	[pm_id] [int] NOT NULL,
	[reported_post_enable_bbcode] [int] NOT NULL,
	[reported_post_enable_smilies] [int] NOT NULL,
	[reported_post_enable_magic_url] [int] NOT NULL,
	[reported_post_text] [text] NOT NULL,
	[reported_post_uid] [varchar](8) NOT NULL,
	[reported_post_bitfield] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_reports] PRIMARY KEY CLUSTERED 
(
	[report_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pm_id] ON [testforum].[phpbb_reports] 
(
	[pm_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_id] ON [testforum].[phpbb_reports] 
(
	[post_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_ranks]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_ranks](
	[rank_id] [int] IDENTITY(1,1) NOT NULL,
	[rank_title] [varchar](255) NOT NULL,
	[rank_min] [int] NOT NULL,
	[rank_special] [int] NOT NULL,
	[rank_image] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_ranks] PRIMARY KEY CLUSTERED 
(
	[rank_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [testforum].[phpbb_ranks] ON
INSERT [testforum].[phpbb_ranks] ([rank_id], [rank_title], [rank_min], [rank_special], [rank_image]) VALUES (1, N'Site Admin', 0, 1, N'')
SET IDENTITY_INSERT [testforum].[phpbb_ranks] OFF
/****** Object:  Table [testforum].[phpbb_profile_lang]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_profile_lang](
	[field_id] [int] NOT NULL,
	[lang_id] [int] NOT NULL,
	[lang_name] [varchar](255) NOT NULL,
	[lang_explain] [varchar](4000) NOT NULL,
	[lang_default_value] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_profile_lang] PRIMARY KEY CLUSTERED 
(
	[field_id] ASC,
	[lang_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (1, 1, N'LOCATION', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (2, 1, N'WEBSITE', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (3, 1, N'INTERESTS', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (4, 1, N'OCCUPATION', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (5, 1, N'AOL', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (6, 1, N'ICQ', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (7, 1, N'WLM', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (8, 1, N'YAHOO', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (9, 1, N'FACEBOOK', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (10, 1, N'TWITTER', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (11, 1, N'SKYPE', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (12, 1, N'YOUTUBE', N'', N'')
INSERT [testforum].[phpbb_profile_lang] ([field_id], [lang_id], [lang_name], [lang_explain], [lang_default_value]) VALUES (13, 1, N'GOOGLEPLUS', N'', N'')
/****** Object:  Table [testforum].[phpbb_profile_fields_lang]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_profile_fields_lang](
	[field_id] [int] NOT NULL,
	[lang_id] [int] NOT NULL,
	[option_id] [int] NOT NULL,
	[field_type] [varchar](100) NOT NULL,
	[lang_value] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_profile_fields_lang] PRIMARY KEY CLUSTERED 
(
	[field_id] ASC,
	[lang_id] ASC,
	[option_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [testforum].[phpbb_profile_fields_data]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_profile_fields_data](
	[user_id] [int] NOT NULL,
	[pf_phpbb_interests] [text] NOT NULL,
	[pf_phpbb_occupation] [text] NOT NULL,
	[pf_phpbb_facebook] [varchar](255) NOT NULL,
	[pf_phpbb_googleplus] [varchar](255) NOT NULL,
	[pf_phpbb_icq] [varchar](255) NOT NULL,
	[pf_phpbb_location] [varchar](255) NOT NULL,
	[pf_phpbb_skype] [varchar](255) NOT NULL,
	[pf_phpbb_twitter] [varchar](255) NOT NULL,
	[pf_phpbb_website] [varchar](255) NOT NULL,
	[pf_phpbb_wlm] [varchar](255) NOT NULL,
	[pf_phpbb_yahoo] [varchar](255) NOT NULL,
	[pf_phpbb_youtube] [varchar](255) NOT NULL,
	[pf_phpbb_aol] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_profile_fields_data] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [testforum].[phpbb_profile_fields]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_profile_fields](
	[field_id] [int] IDENTITY(1,1) NOT NULL,
	[field_name] [varchar](255) NOT NULL,
	[field_type] [varchar](100) NOT NULL,
	[field_ident] [varchar](20) NOT NULL,
	[field_length] [varchar](20) NOT NULL,
	[field_minlen] [varchar](255) NOT NULL,
	[field_maxlen] [varchar](255) NOT NULL,
	[field_novalue] [varchar](255) NOT NULL,
	[field_default_value] [varchar](255) NOT NULL,
	[field_validation] [varchar](64) NOT NULL,
	[field_required] [int] NOT NULL,
	[field_show_on_reg] [int] NOT NULL,
	[field_hide] [int] NOT NULL,
	[field_no_view] [int] NOT NULL,
	[field_active] [int] NOT NULL,
	[field_order] [int] NOT NULL,
	[field_show_profile] [int] NOT NULL,
	[field_show_on_vt] [int] NOT NULL,
	[field_show_novalue] [int] NOT NULL,
	[field_show_on_pm] [int] NOT NULL,
	[field_show_on_ml] [int] NOT NULL,
	[field_is_contact] [int] NOT NULL,
	[field_contact_desc] [varchar](255) NOT NULL,
	[field_contact_url] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_profile_fields] PRIMARY KEY CLUSTERED 
(
	[field_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [fld_ordr] ON [testforum].[phpbb_profile_fields] 
(
	[field_order] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [fld_type] ON [testforum].[phpbb_profile_fields] 
(
	[field_type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_profile_fields] ON
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (1, N'phpbb_location', N'profilefields.type.string', N'phpbb_location', N'20', N'2', N'100', N'', N'', N'.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, N'', N'')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (2, N'phpbb_website', N'profilefields.type.url', N'phpbb_website', N'40', N'12', N'255', N'', N'', N'', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, N'VISIT_WEBSITE', N'%s')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (3, N'phpbb_interests', N'profilefields.type.text', N'phpbb_interests', N'3|30', N'2', N'500', N'', N'', N'.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, N'', N'')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (4, N'phpbb_occupation', N'profilefields.type.text', N'phpbb_occupation', N'3|30', N'2', N'500', N'', N'', N'.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, N'', N'')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (5, N'phpbb_aol', N'profilefields.type.string', N'phpbb_aol', N'40', N'5', N'255', N'', N'', N'.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, N'', N'')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (6, N'phpbb_icq', N'profilefields.type.string', N'phpbb_icq', N'20', N'3', N'15', N'', N'', N'[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, N'SEND_ICQ_MESSAGE', N'https://www.icq.com/people/%s/')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (7, N'phpbb_wlm', N'profilefields.type.string', N'phpbb_wlm', N'40', N'5', N'255', N'', N'', N'.*', 0, 0, 0, 0, 0, 7, 1, 1, 0, 1, 1, 1, N'', N'')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (8, N'phpbb_yahoo', N'profilefields.type.string', N'phpbb_yahoo', N'40', N'5', N'255', N'', N'', N'.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, N'SEND_YIM_MESSAGE', N'ymsgr:sendim?%s')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (9, N'phpbb_facebook', N'profilefields.type.string', N'phpbb_facebook', N'20', N'5', N'50', N'', N'', N'[\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, N'VIEW_FACEBOOK_PROFILE', N'http://facebook.com/%s/')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (10, N'phpbb_twitter', N'profilefields.type.string', N'phpbb_twitter', N'20', N'1', N'15', N'', N'', N'[\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, N'VIEW_TWITTER_PROFILE', N'http://twitter.com/%s')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (11, N'phpbb_skype', N'profilefields.type.string', N'phpbb_skype', N'20', N'6', N'32', N'', N'', N'[a-zA-Z][\w\.,\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, N'VIEW_SKYPE_PROFILE', N'skype:%s?userinfo')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (12, N'phpbb_youtube', N'profilefields.type.string', N'phpbb_youtube', N'20', N'3', N'60', N'', N'', N'[a-zA-Z][\w\.,\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, N'VIEW_YOUTUBE_CHANNEL', N'http://youtube.com/user/%s')
INSERT [testforum].[phpbb_profile_fields] ([field_id], [field_name], [field_type], [field_ident], [field_length], [field_minlen], [field_maxlen], [field_novalue], [field_default_value], [field_validation], [field_required], [field_show_on_reg], [field_hide], [field_no_view], [field_active], [field_order], [field_show_profile], [field_show_on_vt], [field_show_novalue], [field_show_on_pm], [field_show_on_ml], [field_is_contact], [field_contact_desc], [field_contact_url]) VALUES (13, N'phpbb_googleplus', N'profilefields.type.googleplus', N'phpbb_googleplus', N'20', N'3', N'255', N'', N'', N'[\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, N'VIEW_GOOGLEPLUS_PROFILE', N'http://plus.google.com/%s')
SET IDENTITY_INSERT [testforum].[phpbb_profile_fields] OFF
/****** Object:  Table [testforum].[phpbb_privmsgs_to]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_privmsgs_to](
	[msg_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[pm_deleted] [int] NOT NULL,
	[pm_new] [int] NOT NULL,
	[pm_unread] [int] NOT NULL,
	[pm_replied] [int] NOT NULL,
	[pm_marked] [int] NOT NULL,
	[pm_forwarded] [int] NOT NULL,
	[folder_id] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_privmsgs_to] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [author_id] ON [testforum].[phpbb_privmsgs_to] 
(
	[author_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [msg_id] ON [testforum].[phpbb_privmsgs_to] 
(
	[msg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [usr_flder_id] ON [testforum].[phpbb_privmsgs_to] 
(
	[user_id] ASC,
	[folder_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_privmsgs_rules]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_privmsgs_rules](
	[rule_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[rule_check] [int] NOT NULL,
	[rule_connection] [int] NOT NULL,
	[rule_string] [varchar](255) NOT NULL,
	[rule_user_id] [int] NOT NULL,
	[rule_group_id] [int] NOT NULL,
	[rule_action] [int] NOT NULL,
	[rule_folder_id] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_privmsgs_rules] PRIMARY KEY CLUSTERED 
(
	[rule_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [user_id] ON [testforum].[phpbb_privmsgs_rules] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_privmsgs_folder]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_privmsgs_folder](
	[folder_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[folder_name] [varchar](255) NOT NULL,
	[pm_count] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_privmsgs_folder] PRIMARY KEY CLUSTERED 
(
	[folder_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [user_id] ON [testforum].[phpbb_privmsgs_folder] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_privmsgs]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_privmsgs](
	[msg_id] [int] IDENTITY(1,1) NOT NULL,
	[root_level] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[icon_id] [int] NOT NULL,
	[author_ip] [varchar](40) NOT NULL,
	[message_time] [int] NOT NULL,
	[enable_bbcode] [int] NOT NULL,
	[enable_smilies] [int] NOT NULL,
	[enable_magic_url] [int] NOT NULL,
	[enable_sig] [int] NOT NULL,
	[message_subject] [varchar](255) NOT NULL,
	[message_text] [text] NOT NULL,
	[message_edit_reason] [varchar](255) NOT NULL,
	[message_edit_user] [int] NOT NULL,
	[message_attachment] [int] NOT NULL,
	[bbcode_bitfield] [varchar](255) NOT NULL,
	[bbcode_uid] [varchar](8) NOT NULL,
	[message_edit_time] [int] NOT NULL,
	[message_edit_count] [int] NOT NULL,
	[to_address] [varchar](4000) NOT NULL,
	[bcc_address] [varchar](4000) NOT NULL,
	[message_reported] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_privmsgs] PRIMARY KEY CLUSTERED 
(
	[msg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [author_id] ON [testforum].[phpbb_privmsgs] 
(
	[author_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [author_ip] ON [testforum].[phpbb_privmsgs] 
(
	[author_ip] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [message_time] ON [testforum].[phpbb_privmsgs] 
(
	[message_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [root_level] ON [testforum].[phpbb_privmsgs] 
(
	[root_level] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_posts]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_posts](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[topic_id] [int] NOT NULL,
	[forum_id] [int] NOT NULL,
	[poster_id] [int] NOT NULL,
	[icon_id] [int] NOT NULL,
	[poster_ip] [varchar](40) NOT NULL,
	[post_time] [int] NOT NULL,
	[post_reported] [int] NOT NULL,
	[enable_bbcode] [int] NOT NULL,
	[enable_smilies] [int] NOT NULL,
	[enable_magic_url] [int] NOT NULL,
	[enable_sig] [int] NOT NULL,
	[post_username] [varchar](255) NOT NULL,
	[post_subject] [varchar](255) NOT NULL,
	[post_text] [text] NOT NULL,
	[post_checksum] [varchar](32) NOT NULL,
	[post_attachment] [int] NOT NULL,
	[bbcode_bitfield] [varchar](255) NOT NULL,
	[bbcode_uid] [varchar](8) NOT NULL,
	[post_postcount] [int] NOT NULL,
	[post_edit_time] [int] NOT NULL,
	[post_edit_reason] [varchar](255) NOT NULL,
	[post_edit_user] [int] NOT NULL,
	[post_edit_count] [int] NOT NULL,
	[post_edit_locked] [int] NOT NULL,
	[post_visibility] [int] NOT NULL,
	[post_delete_time] [int] NOT NULL,
	[post_delete_reason] [varchar](255) NOT NULL,
	[post_delete_user] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_posts] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [forum_id] ON [testforum].[phpbb_posts] 
(
	[forum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_username] ON [testforum].[phpbb_posts] 
(
	[post_username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_visibility] ON [testforum].[phpbb_posts] 
(
	[post_visibility] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [poster_id] ON [testforum].[phpbb_posts] 
(
	[poster_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [poster_ip] ON [testforum].[phpbb_posts] 
(
	[poster_ip] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [tid_post_time] ON [testforum].[phpbb_posts] 
(
	[topic_id] ASC,
	[post_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [topic_id] ON [testforum].[phpbb_posts] 
(
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_posts] ON
INSERT [testforum].[phpbb_posts] ([post_id], [topic_id], [forum_id], [poster_id], [icon_id], [poster_ip], [post_time], [post_reported], [enable_bbcode], [enable_smilies], [enable_magic_url], [enable_sig], [post_username], [post_subject], [post_text], [post_checksum], [post_attachment], [bbcode_bitfield], [bbcode_uid], [post_postcount], [post_edit_time], [post_edit_reason], [post_edit_user], [post_edit_count], [post_edit_locked], [post_visibility], [post_delete_time], [post_delete_reason], [post_delete_user]) VALUES (1, 1, 2, 2, 0, N'96.3.29.1', 1560532966, 0, 1, 1, 1, 1, N'', N'Welcome to phpBB3', N'This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!', N'5dd683b17f641daf84c040bfefc58ce9', 0, N'', N'', 1, 0, N'', 0, 0, 0, 1, 0, N'', 0)
INSERT [testforum].[phpbb_posts] ([post_id], [topic_id], [forum_id], [poster_id], [icon_id], [poster_ip], [post_time], [post_reported], [enable_bbcode], [enable_smilies], [enable_magic_url], [enable_sig], [post_username], [post_subject], [post_text], [post_checksum], [post_attachment], [bbcode_bitfield], [bbcode_uid], [post_postcount], [post_edit_time], [post_edit_reason], [post_edit_user], [post_edit_count], [post_edit_locked], [post_visibility], [post_delete_time], [post_delete_reason], [post_delete_user]) VALUES (2, 2, 2, 2, 8, N'96.3.29.1', 1560819234, 0, 1, 1, 1, 1, N'', N'Trying a new topic', N'Here is a NEW topic. [list:1j6qsjq1]Bla Bla Bla[/list:u:1j6qsjq1]', N'366b4f8d19a648d8bf9a04f18a6fdf27', 0, N'AEA=', N'1j6qsjq1', 1, 0, N'', 0, 0, 0, 1, 0, N'', 0)
INSERT [testforum].[phpbb_posts] ([post_id], [topic_id], [forum_id], [poster_id], [icon_id], [poster_ip], [post_time], [post_reported], [enable_bbcode], [enable_smilies], [enable_magic_url], [enable_sig], [post_username], [post_subject], [post_text], [post_checksum], [post_attachment], [bbcode_bitfield], [bbcode_uid], [post_postcount], [post_edit_time], [post_edit_reason], [post_edit_user], [post_edit_count], [post_edit_locked], [post_visibility], [post_delete_time], [post_delete_reason], [post_delete_user]) VALUES (3, 2, 2, 2, 0, N'96.3.29.1', 1560819709, 0, 1, 1, 1, 1, N'', N'Re: Trying a new topic', N'Replay to first topic <!-- s:lol: --><img src="{SMILIES_PATH}/icon_lol.gif" alt=":lol:" title="Laughing" /><!-- s:lol: -->', N'fe9fa16787f307f9567efca9a3965275', 0, N'', N'3151xcsp', 1, 0, N'', 0, 0, 0, 1, 0, N'', 0)
INSERT [testforum].[phpbb_posts] ([post_id], [topic_id], [forum_id], [poster_id], [icon_id], [poster_ip], [post_time], [post_reported], [enable_bbcode], [enable_smilies], [enable_magic_url], [enable_sig], [post_username], [post_subject], [post_text], [post_checksum], [post_attachment], [bbcode_bitfield], [bbcode_uid], [post_postcount], [post_edit_time], [post_edit_reason], [post_edit_user], [post_edit_count], [post_edit_locked], [post_visibility], [post_delete_time], [post_delete_reason], [post_delete_user]) VALUES (4, 3, 4, 2, 0, N'96.3.29.1', 1560869849, 0, 1, 1, 1, 1, N'', N'Trying a new topic a second time', N'Trying a new topic a second time <!-- s:idea: --><img src="{SMILIES_PATH}/icon_idea.gif" alt=":idea:" title="Idea" /><!-- s:idea: -->', N'a4d94c15ff044daa58914d9fd0d2db0d', 0, N'', N'yjfibe3t', 1, 0, N'', 0, 0, 0, 1, 0, N'', 0)
INSERT [testforum].[phpbb_posts] ([post_id], [topic_id], [forum_id], [poster_id], [icon_id], [poster_ip], [post_time], [post_reported], [enable_bbcode], [enable_smilies], [enable_magic_url], [enable_sig], [post_username], [post_subject], [post_text], [post_checksum], [post_attachment], [bbcode_bitfield], [bbcode_uid], [post_postcount], [post_edit_time], [post_edit_reason], [post_edit_user], [post_edit_count], [post_edit_locked], [post_visibility], [post_delete_time], [post_delete_reason], [post_delete_user]) VALUES (5, 2, 2, 49, 0, N'24.177.209.147', 1560887462, 0, 1, 1, 1, 1, N'', N'Re: Trying a new topic', N'Here is my great reply!', N'41c119faf6b8f9889fe48cdc8ca86f7e', 0, N'', N'33ot93ft', 1, 0, N'', 0, 0, 0, 0, 0, N'', 0)
INSERT [testforum].[phpbb_posts] ([post_id], [topic_id], [forum_id], [poster_id], [icon_id], [poster_ip], [post_time], [post_reported], [enable_bbcode], [enable_smilies], [enable_magic_url], [enable_sig], [post_username], [post_subject], [post_text], [post_checksum], [post_attachment], [bbcode_bitfield], [bbcode_uid], [post_postcount], [post_edit_time], [post_edit_reason], [post_edit_user], [post_edit_count], [post_edit_locked], [post_visibility], [post_delete_time], [post_delete_reason], [post_delete_user]) VALUES (6, 4, 5, 2, 0, N'96.3.29.1', 1560889472, 0, 1, 1, 1, 1, N'', N'Welcome to the Disussion Board', N'Here you can [color=#8080FF:1ear29d0]test[/color:1ear29d0] out the features.', N'e36036a6eb0adcfff11dc60a5d3dae41', 0, N'Ag==', N'1ear29d0', 1, 0, N'', 0, 0, 0, 1, 0, N'', 0)
INSERT [testforum].[phpbb_posts] ([post_id], [topic_id], [forum_id], [poster_id], [icon_id], [poster_ip], [post_time], [post_reported], [enable_bbcode], [enable_smilies], [enable_magic_url], [enable_sig], [post_username], [post_subject], [post_text], [post_checksum], [post_attachment], [bbcode_bitfield], [bbcode_uid], [post_postcount], [post_edit_time], [post_edit_reason], [post_edit_user], [post_edit_count], [post_edit_locked], [post_visibility], [post_delete_time], [post_delete_reason], [post_delete_user]) VALUES (7, 2, 2, 50, 0, N'198.238.3.193', 1562616079, 0, 1, 1, 1, 1, N'', N'Re: Trying a new topic', N'this seems easy enough to reply/post - and I am curious how it will interface with Inspire - will it jump right to the exact discussion board, or will I need to find the correct discussion in a menu based on courses I am registered for or how many discussions live within one course.
also - can there be private boards - where I submit something directly to the instructor that is not viewed by all students? (or at least not required to be viewed by all students/replies required)

I love the ability to attach a file!  <!-- s:D --><img src="{SMILIES_PATH}/icon_e_biggrin.gif" alt=":D" title="Very Happy" /><!-- s:D -->
I just added a photo for practice/to see how it looks.
[color=#40BFFF:1fmugf60]but I tried to add a PDF or word doc and it tells me that it is an invalid file extension - what are our choices?[/color:1fmugf60]', N'5a0125a5482348c627838714be3aab86', 1, N'Ag==', N'1fmugf60', 1, 0, N'', 0, 0, 0, 0, 0, N'', 0)
INSERT [testforum].[phpbb_posts] ([post_id], [topic_id], [forum_id], [poster_id], [icon_id], [poster_ip], [post_time], [post_reported], [enable_bbcode], [enable_smilies], [enable_magic_url], [enable_sig], [post_username], [post_subject], [post_text], [post_checksum], [post_attachment], [bbcode_bitfield], [bbcode_uid], [post_postcount], [post_edit_time], [post_edit_reason], [post_edit_user], [post_edit_count], [post_edit_locked], [post_visibility], [post_delete_time], [post_delete_reason], [post_delete_user]) VALUES (8, 2, 2, 50, 0, N'198.238.3.193', 1562619376, 0, 1, 1, 1, 1, N'', N'Re: Trying a new topic', N'I tried to post a reply and didn''t show up right away - trying again.', N'5c353b7401388d69da6dd6ac98af9937', 0, N'', N'3mmyk08t', 1, 0, N'', 0, 0, 0, 0, 0, N'', 0)
SET IDENTITY_INSERT [testforum].[phpbb_posts] OFF
/****** Object:  Table [testforum].[phpbb_poll_votes]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_poll_votes](
	[topic_id] [int] NOT NULL,
	[poll_option_id] [int] NOT NULL,
	[vote_user_id] [int] NOT NULL,
	[vote_user_ip] [varchar](40) NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_poll_votes] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [topic_id] ON [testforum].[phpbb_poll_votes] 
(
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [vote_user_id] ON [testforum].[phpbb_poll_votes] 
(
	[vote_user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [vote_user_ip] ON [testforum].[phpbb_poll_votes] 
(
	[vote_user_ip] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_poll_options]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_poll_options](
	[poll_option_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[poll_option_text] [varchar](4000) NOT NULL,
	[poll_option_total] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_poll_options] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [poll_opt_id] ON [testforum].[phpbb_poll_options] 
(
	[poll_option_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [topic_id] ON [testforum].[phpbb_poll_options] 
(
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_oauth_tokens]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_oauth_tokens](
	[user_id] [int] NOT NULL,
	[session_id] [char](32) NOT NULL,
	[provider] [varchar](255) NOT NULL,
	[oauth_token] [text] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_oauth_tokens] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [provider] ON [testforum].[phpbb_oauth_tokens] 
(
	[provider] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [testforum].[phpbb_oauth_tokens] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_oauth_accounts]    Script Date: 07/09/2019 17:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_oauth_accounts](
	[user_id] [int] NOT NULL,
	[provider] [varchar](255) NOT NULL,
	[oauth_provider_id] [varchar](4000) NOT NULL,
 CONSTRAINT [PK_phpbb_oauth_accounts] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[provider] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [testforum].[phpbb_notifications]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_notifications](
	[notification_id] [int] IDENTITY(1,1) NOT NULL,
	[notification_type_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[item_parent_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[notification_read] [int] NOT NULL,
	[notification_time] [int] NOT NULL,
	[notification_data] [varchar](4000) NOT NULL,
 CONSTRAINT [PK_phpbb_notifications] PRIMARY KEY CLUSTERED 
(
	[notification_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [item_ident] ON [testforum].[phpbb_notifications] 
(
	[notification_type_id] ASC,
	[item_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user] ON [testforum].[phpbb_notifications] 
(
	[user_id] ASC,
	[notification_read] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_notifications] ON
INSERT [testforum].[phpbb_notifications] ([notification_id], [notification_type_id], [item_id], [item_parent_id], [user_id], [notification_read], [notification_time], [notification_data]) VALUES (1, 8, 5, 2, 2, 0, 1560887462, N'a:6:{s:9:"poster_id";i:49;s:11:"topic_title";s:18:"Trying a new topic";s:12:"post_subject";s:22:"Re: Trying a new topic";s:13:"post_username";s:0:"";s:8:"forum_id";i:2;s:10:"forum_name";s:16:"Your first forum";}')
INSERT [testforum].[phpbb_notifications] ([notification_id], [notification_type_id], [item_id], [item_parent_id], [user_id], [notification_read], [notification_time], [notification_data]) VALUES (2, 8, 7, 2, 2, 0, 1562616081, N'a:6:{s:9:"poster_id";i:50;s:11:"topic_title";s:18:"Trying a new topic";s:12:"post_subject";s:22:"Re: Trying a new topic";s:13:"post_username";s:0:"";s:8:"forum_id";i:2;s:10:"forum_name";s:16:"Your first forum";}')
INSERT [testforum].[phpbb_notifications] ([notification_id], [notification_type_id], [item_id], [item_parent_id], [user_id], [notification_read], [notification_time], [notification_data]) VALUES (3, 8, 8, 2, 2, 0, 1562619377, N'a:6:{s:9:"poster_id";i:50;s:11:"topic_title";s:18:"Trying a new topic";s:12:"post_subject";s:22:"Re: Trying a new topic";s:13:"post_username";s:0:"";s:8:"forum_id";i:2;s:10:"forum_name";s:16:"Your first forum";}')
SET IDENTITY_INSERT [testforum].[phpbb_notifications] OFF
/****** Object:  Table [testforum].[phpbb_notification_types]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_notification_types](
	[notification_type_id] [int] IDENTITY(1,1) NOT NULL,
	[notification_type_name] [varchar](255) NOT NULL,
	[notification_type_enabled] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_notification_types] PRIMARY KEY CLUSTERED 
(
	[notification_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [type] ON [testforum].[phpbb_notification_types] 
(
	[notification_type_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_notification_types] ON
INSERT [testforum].[phpbb_notification_types] ([notification_type_id], [notification_type_name], [notification_type_enabled]) VALUES (1, N'notification.type.topic', 1)
INSERT [testforum].[phpbb_notification_types] ([notification_type_id], [notification_type_name], [notification_type_enabled]) VALUES (2, N'notification.type.approve_topic', 1)
INSERT [testforum].[phpbb_notification_types] ([notification_type_id], [notification_type_name], [notification_type_enabled]) VALUES (3, N'notification.type.quote', 1)
INSERT [testforum].[phpbb_notification_types] ([notification_type_id], [notification_type_name], [notification_type_enabled]) VALUES (4, N'notification.type.bookmark', 1)
INSERT [testforum].[phpbb_notification_types] ([notification_type_id], [notification_type_name], [notification_type_enabled]) VALUES (5, N'notification.type.post', 1)
INSERT [testforum].[phpbb_notification_types] ([notification_type_id], [notification_type_name], [notification_type_enabled]) VALUES (6, N'notification.type.approve_post', 1)
INSERT [testforum].[phpbb_notification_types] ([notification_type_id], [notification_type_name], [notification_type_enabled]) VALUES (7, N'notification.type.group_request', 1)
INSERT [testforum].[phpbb_notification_types] ([notification_type_id], [notification_type_name], [notification_type_enabled]) VALUES (8, N'notification.type.post_in_queue', 1)
SET IDENTITY_INSERT [testforum].[phpbb_notification_types] OFF
/****** Object:  Table [testforum].[phpbb_modules]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_modules](
	[module_id] [int] IDENTITY(1,1) NOT NULL,
	[module_enabled] [int] NOT NULL,
	[module_display] [int] NOT NULL,
	[module_basename] [varchar](255) NOT NULL,
	[module_class] [varchar](10) NOT NULL,
	[parent_id] [int] NOT NULL,
	[left_id] [int] NOT NULL,
	[right_id] [int] NOT NULL,
	[module_langname] [varchar](255) NOT NULL,
	[module_mode] [varchar](255) NOT NULL,
	[module_auth] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_modules] PRIMARY KEY CLUSTERED 
(
	[module_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [class_left_id] ON [testforum].[phpbb_modules] 
(
	[module_class] ASC,
	[left_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [left_right_id] ON [testforum].[phpbb_modules] 
(
	[left_id] ASC,
	[right_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [module_enabled] ON [testforum].[phpbb_modules] 
(
	[module_enabled] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_modules] ON
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (1, 1, 1, N'', N'acp', 0, 1, 66, N'ACP_CAT_GENERAL', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (2, 1, 1, N'', N'acp', 1, 4, 17, N'ACP_QUICK_ACCESS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (3, 1, 1, N'', N'acp', 1, 18, 43, N'ACP_BOARD_CONFIGURATION', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (4, 1, 1, N'', N'acp', 1, 44, 51, N'ACP_CLIENT_COMMUNICATION', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (5, 1, 1, N'', N'acp', 1, 52, 65, N'ACP_SERVER_CONFIGURATION', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (6, 1, 1, N'', N'acp', 0, 67, 86, N'ACP_CAT_FORUMS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (7, 1, 1, N'', N'acp', 6, 68, 73, N'ACP_MANAGE_FORUMS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (8, 1, 1, N'', N'acp', 6, 74, 85, N'ACP_FORUM_BASED_PERMISSIONS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (9, 1, 1, N'', N'acp', 0, 87, 114, N'ACP_CAT_POSTING', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (10, 1, 1, N'', N'acp', 9, 88, 101, N'ACP_MESSAGES', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (11, 1, 1, N'', N'acp', 9, 102, 113, N'ACP_ATTACHMENTS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (12, 1, 1, N'', N'acp', 0, 115, 172, N'ACP_CAT_USERGROUP', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (13, 1, 1, N'', N'acp', 12, 116, 151, N'ACP_CAT_USERS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (14, 1, 1, N'', N'acp', 12, 152, 161, N'ACP_GROUPS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (15, 1, 1, N'', N'acp', 12, 162, 171, N'ACP_USER_SECURITY', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (16, 1, 1, N'', N'acp', 0, 173, 222, N'ACP_CAT_PERMISSIONS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (17, 1, 1, N'', N'acp', 16, 176, 185, N'ACP_GLOBAL_PERMISSIONS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (18, 1, 1, N'', N'acp', 16, 186, 197, N'ACP_FORUM_BASED_PERMISSIONS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (19, 1, 1, N'', N'acp', 16, 198, 207, N'ACP_PERMISSION_ROLES', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (20, 1, 1, N'', N'acp', 16, 208, 221, N'ACP_PERMISSION_MASKS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (21, 1, 1, N'', N'acp', 0, 223, 238, N'ACP_CAT_CUSTOMISE', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (22, 1, 1, N'', N'acp', 21, 228, 233, N'ACP_STYLE_MANAGEMENT', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (23, 1, 1, N'', N'acp', 21, 224, 227, N'ACP_EXTENSION_MANAGEMENT', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (24, 1, 1, N'', N'acp', 21, 234, 237, N'ACP_LANGUAGE', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (25, 1, 1, N'', N'acp', 0, 239, 258, N'ACP_CAT_MAINTENANCE', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (26, 1, 1, N'', N'acp', 25, 240, 249, N'ACP_FORUM_LOGS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (27, 1, 1, N'', N'acp', 25, 250, 257, N'ACP_CAT_DATABASE', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (28, 1, 1, N'', N'acp', 0, 259, 282, N'ACP_CAT_SYSTEM', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (29, 1, 1, N'', N'acp', 28, 260, 263, N'ACP_AUTOMATION', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (30, 1, 1, N'', N'acp', 28, 264, 273, N'ACP_GENERAL_TASKS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (31, 1, 1, N'', N'acp', 28, 274, 281, N'ACP_MODULE_MANAGEMENT', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (32, 1, 1, N'', N'acp', 0, 283, 284, N'ACP_CAT_DOT_MODS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (33, 1, 1, N'acp_attachments', N'acp', 3, 19, 20, N'ACP_ATTACHMENT_SETTINGS', N'attach', N'acl_a_attach')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (34, 1, 1, N'acp_attachments', N'acp', 11, 103, 104, N'ACP_ATTACHMENT_SETTINGS', N'attach', N'acl_a_attach')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (35, 1, 1, N'acp_attachments', N'acp', 11, 105, 106, N'ACP_MANAGE_EXTENSIONS', N'extensions', N'acl_a_attach')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (36, 1, 1, N'acp_attachments', N'acp', 11, 107, 108, N'ACP_EXTENSION_GROUPS', N'ext_groups', N'acl_a_attach')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (37, 1, 1, N'acp_attachments', N'acp', 11, 109, 110, N'ACP_ORPHAN_ATTACHMENTS', N'orphan', N'acl_a_attach')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (38, 1, 1, N'acp_attachments', N'acp', 11, 111, 112, N'ACP_MANAGE_ATTACHMENTS', N'manage', N'acl_a_attach')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (39, 1, 1, N'acp_ban', N'acp', 15, 163, 164, N'ACP_BAN_EMAILS', N'email', N'acl_a_ban')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (40, 1, 1, N'acp_ban', N'acp', 15, 165, 166, N'ACP_BAN_IPS', N'ip', N'acl_a_ban')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (41, 1, 1, N'acp_ban', N'acp', 15, 167, 168, N'ACP_BAN_USERNAMES', N'user', N'acl_a_ban')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (42, 1, 1, N'acp_bbcodes', N'acp', 10, 89, 90, N'ACP_BBCODES', N'bbcodes', N'acl_a_bbcode')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (43, 1, 1, N'acp_board', N'acp', 3, 21, 22, N'ACP_BOARD_SETTINGS', N'settings', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (44, 1, 1, N'acp_board', N'acp', 3, 23, 24, N'ACP_BOARD_FEATURES', N'features', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (45, 1, 1, N'acp_board', N'acp', 3, 25, 26, N'ACP_AVATAR_SETTINGS', N'avatar', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (46, 1, 1, N'acp_board', N'acp', 3, 27, 28, N'ACP_MESSAGE_SETTINGS', N'message', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (47, 1, 1, N'acp_board', N'acp', 10, 91, 92, N'ACP_MESSAGE_SETTINGS', N'message', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (48, 1, 1, N'acp_board', N'acp', 3, 29, 30, N'ACP_POST_SETTINGS', N'post', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (49, 1, 1, N'acp_board', N'acp', 10, 93, 94, N'ACP_POST_SETTINGS', N'post', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (50, 1, 1, N'acp_board', N'acp', 3, 31, 32, N'ACP_SIGNATURE_SETTINGS', N'signature', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (51, 1, 1, N'acp_board', N'acp', 3, 33, 34, N'ACP_FEED_SETTINGS', N'feed', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (52, 1, 1, N'acp_board', N'acp', 3, 35, 36, N'ACP_REGISTER_SETTINGS', N'registration', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (53, 1, 1, N'acp_board', N'acp', 4, 45, 46, N'ACP_AUTH_SETTINGS', N'auth', N'acl_a_server')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (54, 1, 1, N'acp_board', N'acp', 4, 47, 48, N'ACP_EMAIL_SETTINGS', N'email', N'acl_a_server')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (55, 1, 1, N'acp_board', N'acp', 5, 53, 54, N'ACP_COOKIE_SETTINGS', N'cookie', N'acl_a_server')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (56, 1, 1, N'acp_board', N'acp', 5, 55, 56, N'ACP_SERVER_SETTINGS', N'server', N'acl_a_server')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (57, 1, 1, N'acp_board', N'acp', 5, 57, 58, N'ACP_SECURITY_SETTINGS', N'security', N'acl_a_server')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (58, 1, 1, N'acp_board', N'acp', 5, 59, 60, N'ACP_LOAD_SETTINGS', N'load', N'acl_a_server')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (59, 1, 1, N'acp_bots', N'acp', 30, 265, 266, N'ACP_BOTS', N'bots', N'acl_a_bots')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (60, 1, 1, N'acp_captcha', N'acp', 3, 37, 38, N'ACP_VC_SETTINGS', N'visual', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (61, 1, 0, N'acp_captcha', N'acp', 3, 39, 40, N'ACP_VC_CAPTCHA_DISPLAY', N'img', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (62, 1, 1, N'acp_contact', N'acp', 3, 41, 42, N'ACP_CONTACT_SETTINGS', N'contact', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (63, 1, 1, N'acp_database', N'acp', 27, 251, 252, N'ACP_BACKUP', N'backup', N'acl_a_backup')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (64, 1, 1, N'acp_database', N'acp', 27, 253, 254, N'ACP_RESTORE', N'restore', N'acl_a_backup')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (65, 1, 1, N'acp_disallow', N'acp', 15, 169, 170, N'ACP_DISALLOW_USERNAMES', N'usernames', N'acl_a_names')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (66, 1, 1, N'acp_email', N'acp', 30, 267, 268, N'ACP_MASS_EMAIL', N'email', N'acl_a_email && cfg_email_enable')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (67, 1, 1, N'acp_extensions', N'acp', 23, 225, 226, N'ACP_EXTENSIONS', N'main', N'acl_a_extensions')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (68, 1, 1, N'acp_forums', N'acp', 7, 69, 70, N'ACP_MANAGE_FORUMS', N'manage', N'acl_a_forum')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (69, 1, 1, N'acp_groups', N'acp', 14, 153, 154, N'ACP_GROUPS_MANAGE', N'manage', N'acl_a_group')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (70, 1, 1, N'acp_groups', N'acp', 14, 155, 156, N'ACP_GROUPS_POSITION', N'position', N'acl_a_group')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (71, 1, 1, N'acp_icons', N'acp', 10, 95, 96, N'ACP_ICONS', N'icons', N'acl_a_icons')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (72, 1, 1, N'acp_icons', N'acp', 10, 97, 98, N'ACP_SMILIES', N'smilies', N'acl_a_icons')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (73, 1, 1, N'acp_inactive', N'acp', 13, 117, 118, N'ACP_INACTIVE_USERS', N'list', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (74, 1, 1, N'acp_jabber', N'acp', 4, 49, 50, N'ACP_JABBER_SETTINGS', N'settings', N'acl_a_jabber')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (75, 1, 1, N'acp_language', N'acp', 24, 235, 236, N'ACP_LANGUAGE_PACKS', N'lang_packs', N'acl_a_language')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (76, 1, 1, N'acp_logs', N'acp', 26, 241, 242, N'ACP_ADMIN_LOGS', N'admin', N'acl_a_viewlogs')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (77, 1, 1, N'acp_logs', N'acp', 26, 243, 244, N'ACP_MOD_LOGS', N'mod', N'acl_a_viewlogs')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (78, 1, 1, N'acp_logs', N'acp', 26, 245, 246, N'ACP_USERS_LOGS', N'users', N'acl_a_viewlogs')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (79, 1, 1, N'acp_logs', N'acp', 26, 247, 248, N'ACP_CRITICAL_LOGS', N'critical', N'acl_a_viewlogs')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (80, 1, 1, N'acp_main', N'acp', 1, 2, 3, N'ACP_INDEX', N'main', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (81, 1, 1, N'acp_modules', N'acp', 31, 275, 276, N'ACP', N'acp', N'acl_a_modules')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (82, 1, 1, N'acp_modules', N'acp', 31, 277, 278, N'UCP', N'ucp', N'acl_a_modules')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (83, 1, 1, N'acp_modules', N'acp', 31, 279, 280, N'MCP', N'mcp', N'acl_a_modules')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (84, 1, 1, N'acp_permission_roles', N'acp', 19, 199, 200, N'ACP_ADMIN_ROLES', N'admin_roles', N'acl_a_roles && acl_a_aauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (85, 1, 1, N'acp_permission_roles', N'acp', 19, 201, 202, N'ACP_USER_ROLES', N'user_roles', N'acl_a_roles && acl_a_uauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (86, 1, 1, N'acp_permission_roles', N'acp', 19, 203, 204, N'ACP_MOD_ROLES', N'mod_roles', N'acl_a_roles && acl_a_mauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (87, 1, 1, N'acp_permission_roles', N'acp', 19, 205, 206, N'ACP_FORUM_ROLES', N'forum_roles', N'acl_a_roles && acl_a_fauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (88, 1, 1, N'acp_permissions', N'acp', 16, 174, 175, N'ACP_PERMISSIONS', N'intro', N'acl_a_authusers || acl_a_authgroups || acl_a_viewauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (89, 1, 0, N'acp_permissions', N'acp', 20, 209, 210, N'ACP_PERMISSION_TRACE', N'trace', N'acl_a_viewauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (90, 1, 1, N'acp_permissions', N'acp', 18, 187, 188, N'ACP_FORUM_PERMISSIONS', N'setting_forum_local', N'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (91, 1, 1, N'acp_permissions', N'acp', 18, 189, 190, N'ACP_FORUM_PERMISSIONS_COPY', N'setting_forum_copy', N'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (92, 1, 1, N'acp_permissions', N'acp', 18, 191, 192, N'ACP_FORUM_MODERATORS', N'setting_mod_local', N'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (93, 1, 1, N'acp_permissions', N'acp', 17, 177, 178, N'ACP_USERS_PERMISSIONS', N'setting_user_global', N'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (94, 1, 1, N'acp_permissions', N'acp', 13, 121, 122, N'ACP_USERS_PERMISSIONS', N'setting_user_global', N'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (95, 1, 1, N'acp_permissions', N'acp', 18, 193, 194, N'ACP_USERS_FORUM_PERMISSIONS', N'setting_user_local', N'acl_a_authusers && (acl_a_mauth || acl_a_fauth)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (96, 1, 1, N'acp_permissions', N'acp', 13, 123, 124, N'ACP_USERS_FORUM_PERMISSIONS', N'setting_user_local', N'acl_a_authusers && (acl_a_mauth || acl_a_fauth)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (97, 1, 1, N'acp_permissions', N'acp', 17, 179, 180, N'ACP_GROUPS_PERMISSIONS', N'setting_group_global', N'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (98, 1, 1, N'acp_permissions', N'acp', 14, 157, 158, N'ACP_GROUPS_PERMISSIONS', N'setting_group_global', N'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (99, 1, 1, N'acp_permissions', N'acp', 18, 195, 196, N'ACP_GROUPS_FORUM_PERMISSIONS', N'setting_group_local', N'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (100, 1, 1, N'acp_permissions', N'acp', 14, 159, 160, N'ACP_GROUPS_FORUM_PERMISSIONS', N'setting_group_local', N'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)')
GO
print 'Processed 100 total records'
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (101, 1, 1, N'acp_permissions', N'acp', 17, 181, 182, N'ACP_ADMINISTRATORS', N'setting_admin_global', N'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (102, 1, 1, N'acp_permissions', N'acp', 17, 183, 184, N'ACP_GLOBAL_MODERATORS', N'setting_mod_global', N'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (103, 1, 1, N'acp_permissions', N'acp', 20, 211, 212, N'ACP_VIEW_ADMIN_PERMISSIONS', N'view_admin_global', N'acl_a_viewauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (104, 1, 1, N'acp_permissions', N'acp', 20, 213, 214, N'ACP_VIEW_USER_PERMISSIONS', N'view_user_global', N'acl_a_viewauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (105, 1, 1, N'acp_permissions', N'acp', 20, 215, 216, N'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', N'view_mod_global', N'acl_a_viewauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (106, 1, 1, N'acp_permissions', N'acp', 20, 217, 218, N'ACP_VIEW_FORUM_MOD_PERMISSIONS', N'view_mod_local', N'acl_a_viewauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (107, 1, 1, N'acp_permissions', N'acp', 20, 219, 220, N'ACP_VIEW_FORUM_PERMISSIONS', N'view_forum_local', N'acl_a_viewauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (108, 1, 1, N'acp_php_info', N'acp', 30, 269, 270, N'ACP_PHP_INFO', N'info', N'acl_a_phpinfo')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (109, 1, 1, N'acp_profile', N'acp', 13, 125, 126, N'ACP_CUSTOM_PROFILE_FIELDS', N'profile', N'acl_a_profile')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (110, 1, 1, N'acp_prune', N'acp', 7, 71, 72, N'ACP_PRUNE_FORUMS', N'forums', N'acl_a_prune')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (111, 1, 1, N'acp_prune', N'acp', 13, 127, 128, N'ACP_PRUNE_USERS', N'users', N'acl_a_userdel')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (112, 1, 1, N'acp_ranks', N'acp', 13, 129, 130, N'ACP_MANAGE_RANKS', N'ranks', N'acl_a_ranks')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (113, 1, 1, N'acp_reasons', N'acp', 30, 271, 272, N'ACP_MANAGE_REASONS', N'main', N'acl_a_reasons')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (114, 1, 1, N'acp_search', N'acp', 5, 61, 62, N'ACP_SEARCH_SETTINGS', N'settings', N'acl_a_search')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (115, 1, 1, N'acp_search', N'acp', 27, 255, 256, N'ACP_SEARCH_INDEX', N'index', N'acl_a_search')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (116, 1, 1, N'acp_send_statistics', N'acp', 5, 63, 64, N'ACP_SEND_STATISTICS', N'send_statistics', N'acl_a_server')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (117, 1, 1, N'acp_styles', N'acp', 22, 229, 230, N'ACP_STYLES', N'style', N'acl_a_styles')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (118, 1, 1, N'acp_styles', N'acp', 22, 231, 232, N'ACP_STYLES_INSTALL', N'install', N'acl_a_styles')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (119, 1, 1, N'acp_update', N'acp', 29, 261, 262, N'ACP_VERSION_CHECK', N'version_check', N'acl_a_board')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (120, 1, 1, N'acp_users', N'acp', 13, 119, 120, N'ACP_MANAGE_USERS', N'overview', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (121, 1, 0, N'acp_users', N'acp', 13, 131, 132, N'ACP_USER_FEEDBACK', N'feedback', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (122, 1, 0, N'acp_users', N'acp', 13, 133, 134, N'ACP_USER_WARNINGS', N'warnings', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (123, 1, 0, N'acp_users', N'acp', 13, 135, 136, N'ACP_USER_PROFILE', N'profile', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (124, 1, 0, N'acp_users', N'acp', 13, 137, 138, N'ACP_USER_PREFS', N'prefs', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (125, 1, 0, N'acp_users', N'acp', 13, 139, 140, N'ACP_USER_AVATAR', N'avatar', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (126, 1, 0, N'acp_users', N'acp', 13, 141, 142, N'ACP_USER_RANK', N'rank', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (127, 1, 0, N'acp_users', N'acp', 13, 143, 144, N'ACP_USER_SIG', N'sig', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (128, 1, 0, N'acp_users', N'acp', 13, 145, 146, N'ACP_USER_GROUPS', N'groups', N'acl_a_user && acl_a_group')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (129, 1, 0, N'acp_users', N'acp', 13, 147, 148, N'ACP_USER_PERM', N'perm', N'acl_a_user && acl_a_viewauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (130, 1, 0, N'acp_users', N'acp', 13, 149, 150, N'ACP_USER_ATTACH', N'attach', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (131, 1, 1, N'acp_words', N'acp', 10, 99, 100, N'ACP_WORDS', N'words', N'acl_a_words')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (132, 1, 1, N'acp_users', N'acp', 2, 5, 6, N'ACP_MANAGE_USERS', N'overview', N'acl_a_user')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (133, 1, 1, N'acp_groups', N'acp', 2, 7, 8, N'ACP_GROUPS_MANAGE', N'manage', N'acl_a_group')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (134, 1, 1, N'acp_forums', N'acp', 2, 9, 10, N'ACP_MANAGE_FORUMS', N'manage', N'acl_a_forum')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (135, 1, 1, N'acp_logs', N'acp', 2, 11, 12, N'ACP_MOD_LOGS', N'mod', N'acl_a_viewlogs')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (136, 1, 1, N'acp_bots', N'acp', 2, 13, 14, N'ACP_BOTS', N'bots', N'acl_a_bots')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (137, 1, 1, N'acp_php_info', N'acp', 2, 15, 16, N'ACP_PHP_INFO', N'info', N'acl_a_phpinfo')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (138, 1, 1, N'acp_permissions', N'acp', 8, 75, 76, N'ACP_FORUM_PERMISSIONS', N'setting_forum_local', N'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (139, 1, 1, N'acp_permissions', N'acp', 8, 77, 78, N'ACP_FORUM_PERMISSIONS_COPY', N'setting_forum_copy', N'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (140, 1, 1, N'acp_permissions', N'acp', 8, 79, 80, N'ACP_FORUM_MODERATORS', N'setting_mod_local', N'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (141, 1, 1, N'acp_permissions', N'acp', 8, 81, 82, N'ACP_USERS_FORUM_PERMISSIONS', N'setting_user_local', N'acl_a_authusers && (acl_a_mauth || acl_a_fauth)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (142, 1, 1, N'acp_permissions', N'acp', 8, 83, 84, N'ACP_GROUPS_FORUM_PERMISSIONS', N'setting_group_local', N'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (143, 1, 1, N'', N'mcp', 0, 1, 10, N'MCP_MAIN', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (144, 1, 1, N'', N'mcp', 0, 11, 22, N'MCP_QUEUE', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (145, 1, 1, N'', N'mcp', 0, 23, 36, N'MCP_REPORTS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (146, 1, 1, N'', N'mcp', 0, 37, 42, N'MCP_NOTES', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (147, 1, 1, N'', N'mcp', 0, 43, 52, N'MCP_WARN', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (148, 1, 1, N'', N'mcp', 0, 53, 60, N'MCP_LOGS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (149, 1, 1, N'', N'mcp', 0, 61, 68, N'MCP_BAN', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (150, 1, 1, N'mcp_ban', N'mcp', 149, 62, 63, N'MCP_BAN_USERNAMES', N'user', N'acl_m_ban')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (151, 1, 1, N'mcp_ban', N'mcp', 149, 64, 65, N'MCP_BAN_IPS', N'ip', N'acl_m_ban')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (152, 1, 1, N'mcp_ban', N'mcp', 149, 66, 67, N'MCP_BAN_EMAILS', N'email', N'acl_m_ban')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (153, 1, 1, N'mcp_logs', N'mcp', 148, 54, 55, N'MCP_LOGS_FRONT', N'front', N'acl_m_ || aclf_m_')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (154, 1, 1, N'mcp_logs', N'mcp', 148, 56, 57, N'MCP_LOGS_FORUM_VIEW', N'forum_logs', N'acl_m_,$id')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (155, 1, 1, N'mcp_logs', N'mcp', 148, 58, 59, N'MCP_LOGS_TOPIC_VIEW', N'topic_logs', N'acl_m_,$id')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (156, 1, 1, N'mcp_main', N'mcp', 143, 2, 3, N'MCP_MAIN_FRONT', N'front', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (157, 1, 1, N'mcp_main', N'mcp', 143, 4, 5, N'MCP_MAIN_FORUM_VIEW', N'forum_view', N'acl_m_,$id')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (158, 1, 1, N'mcp_main', N'mcp', 143, 6, 7, N'MCP_MAIN_TOPIC_VIEW', N'topic_view', N'acl_m_,$id')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (159, 1, 1, N'mcp_main', N'mcp', 143, 8, 9, N'MCP_MAIN_POST_DETAILS', N'post_details', N'acl_m_,$id || (!$id && aclf_m_)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (160, 1, 1, N'mcp_notes', N'mcp', 146, 38, 39, N'MCP_NOTES_FRONT', N'front', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (161, 1, 1, N'mcp_notes', N'mcp', 146, 40, 41, N'MCP_NOTES_USER', N'user_notes', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (162, 1, 1, N'mcp_pm_reports', N'mcp', 145, 30, 31, N'MCP_PM_REPORTS_OPEN', N'pm_reports', N'acl_m_pm_report')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (163, 1, 1, N'mcp_pm_reports', N'mcp', 145, 32, 33, N'MCP_PM_REPORTS_CLOSED', N'pm_reports_closed', N'acl_m_pm_report')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (164, 1, 1, N'mcp_pm_reports', N'mcp', 145, 34, 35, N'MCP_PM_REPORT_DETAILS', N'pm_report_details', N'acl_m_pm_report')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (165, 1, 1, N'mcp_queue', N'mcp', 144, 12, 13, N'MCP_QUEUE_UNAPPROVED_TOPICS', N'unapproved_topics', N'aclf_m_approve')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (166, 1, 1, N'mcp_queue', N'mcp', 144, 14, 15, N'MCP_QUEUE_UNAPPROVED_POSTS', N'unapproved_posts', N'aclf_m_approve')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (167, 1, 1, N'mcp_queue', N'mcp', 144, 16, 17, N'MCP_QUEUE_DELETED_TOPICS', N'deleted_topics', N'aclf_m_approve')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (168, 1, 1, N'mcp_queue', N'mcp', 144, 18, 19, N'MCP_QUEUE_DELETED_POSTS', N'deleted_posts', N'aclf_m_approve')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (169, 1, 1, N'mcp_queue', N'mcp', 144, 20, 21, N'MCP_QUEUE_APPROVE_DETAILS', N'approve_details', N'acl_m_approve,$id || (!$id && aclf_m_approve)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (170, 1, 1, N'mcp_reports', N'mcp', 145, 24, 25, N'MCP_REPORTS_OPEN', N'reports', N'aclf_m_report')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (171, 1, 1, N'mcp_reports', N'mcp', 145, 26, 27, N'MCP_REPORTS_CLOSED', N'reports_closed', N'aclf_m_report')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (172, 1, 1, N'mcp_reports', N'mcp', 145, 28, 29, N'MCP_REPORT_DETAILS', N'report_details', N'acl_m_report,$id || (!$id && aclf_m_report)')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (173, 1, 1, N'mcp_warn', N'mcp', 147, 44, 45, N'MCP_WARN_FRONT', N'front', N'aclf_m_warn')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (174, 1, 1, N'mcp_warn', N'mcp', 147, 46, 47, N'MCP_WARN_LIST', N'list', N'aclf_m_warn')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (175, 1, 1, N'mcp_warn', N'mcp', 147, 48, 49, N'MCP_WARN_USER', N'warn_user', N'aclf_m_warn')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (176, 1, 1, N'mcp_warn', N'mcp', 147, 50, 51, N'MCP_WARN_POST', N'warn_post', N'acl_m_warn && acl_f_read,$id')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (177, 1, 1, N'', N'ucp', 0, 1, 14, N'UCP_MAIN', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (178, 1, 1, N'', N'ucp', 0, 15, 28, N'UCP_PROFILE', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (179, 1, 1, N'', N'ucp', 0, 29, 38, N'UCP_PREFS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (180, 1, 1, N'ucp_pm', N'ucp', 0, 39, 48, N'UCP_PM', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (181, 1, 1, N'', N'ucp', 0, 49, 54, N'UCP_USERGROUPS', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (182, 1, 1, N'', N'ucp', 0, 55, 60, N'UCP_ZEBRA', N'', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (183, 1, 1, N'ucp_attachments', N'ucp', 177, 10, 11, N'UCP_MAIN_ATTACHMENTS', N'attachments', N'acl_u_attach')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (184, 1, 1, N'ucp_auth_link', N'ucp', 178, 26, 27, N'UCP_AUTH_LINK_MANAGE', N'auth_link', N'authmethod_oauth')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (185, 1, 1, N'ucp_groups', N'ucp', 181, 50, 51, N'UCP_USERGROUPS_MEMBER', N'membership', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (186, 1, 1, N'ucp_groups', N'ucp', 181, 52, 53, N'UCP_USERGROUPS_MANAGE', N'manage', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (187, 1, 1, N'ucp_main', N'ucp', 177, 2, 3, N'UCP_MAIN_FRONT', N'front', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (188, 1, 1, N'ucp_main', N'ucp', 177, 4, 5, N'UCP_MAIN_SUBSCRIBED', N'subscribed', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (189, 1, 1, N'ucp_main', N'ucp', 177, 6, 7, N'UCP_MAIN_BOOKMARKS', N'bookmarks', N'cfg_allow_bookmarks')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (190, 1, 1, N'ucp_main', N'ucp', 177, 8, 9, N'UCP_MAIN_DRAFTS', N'drafts', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (191, 1, 1, N'ucp_notifications', N'ucp', 179, 36, 37, N'UCP_NOTIFICATION_OPTIONS', N'notification_options', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (192, 1, 1, N'ucp_notifications', N'ucp', 177, 12, 13, N'UCP_NOTIFICATION_LIST', N'notification_list', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (193, 1, 0, N'ucp_pm', N'ucp', 180, 40, 41, N'UCP_PM_VIEW', N'view', N'cfg_allow_privmsg')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (194, 1, 1, N'ucp_pm', N'ucp', 180, 42, 43, N'UCP_PM_COMPOSE', N'compose', N'cfg_allow_privmsg')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (195, 1, 1, N'ucp_pm', N'ucp', 180, 44, 45, N'UCP_PM_DRAFTS', N'drafts', N'cfg_allow_privmsg')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (196, 1, 1, N'ucp_pm', N'ucp', 180, 46, 47, N'UCP_PM_OPTIONS', N'options', N'cfg_allow_privmsg')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (197, 1, 1, N'ucp_prefs', N'ucp', 179, 30, 31, N'UCP_PREFS_PERSONAL', N'personal', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (198, 1, 1, N'ucp_prefs', N'ucp', 179, 32, 33, N'UCP_PREFS_POST', N'post', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (199, 1, 1, N'ucp_prefs', N'ucp', 179, 34, 35, N'UCP_PREFS_VIEW', N'view', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (200, 1, 1, N'ucp_profile', N'ucp', 178, 16, 17, N'UCP_PROFILE_PROFILE_INFO', N'profile_info', N'acl_u_chgprofileinfo')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (201, 1, 1, N'ucp_profile', N'ucp', 178, 18, 19, N'UCP_PROFILE_SIGNATURE', N'signature', N'acl_u_sig')
GO
print 'Processed 200 total records'
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (202, 1, 1, N'ucp_profile', N'ucp', 178, 20, 21, N'UCP_PROFILE_AVATAR', N'avatar', N'cfg_allow_avatar')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (203, 1, 1, N'ucp_profile', N'ucp', 178, 22, 23, N'UCP_PROFILE_REG_DETAILS', N'reg_details', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (204, 1, 1, N'ucp_profile', N'ucp', 178, 24, 25, N'UCP_PROFILE_AUTOLOGIN_KEYS', N'autologin_keys', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (205, 1, 1, N'ucp_zebra', N'ucp', 182, 56, 57, N'UCP_ZEBRA_FRIENDS', N'friends', N'')
INSERT [testforum].[phpbb_modules] ([module_id], [module_enabled], [module_display], [module_basename], [module_class], [parent_id], [left_id], [right_id], [module_langname], [module_mode], [module_auth]) VALUES (206, 1, 1, N'ucp_zebra', N'ucp', 182, 58, 59, N'UCP_ZEBRA_FOES', N'foes', N'')
SET IDENTITY_INSERT [testforum].[phpbb_modules] OFF
/****** Object:  Table [testforum].[phpbb_moderator_cache]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_moderator_cache](
	[forum_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[username] [varchar](255) NOT NULL,
	[group_id] [int] NOT NULL,
	[group_name] [varchar](255) NOT NULL,
	[display_on_index] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_moderator_cache] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [disp_idx] ON [testforum].[phpbb_moderator_cache] 
(
	[display_on_index] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [forum_id] ON [testforum].[phpbb_moderator_cache] 
(
	[forum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_migrations]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_migrations](
	[migration_name] [varchar](255) NOT NULL,
	[migration_depends_on] [varchar](8000) NOT NULL,
	[migration_schema_done] [int] NOT NULL,
	[migration_data_done] [int] NOT NULL,
	[migration_data_state] [varchar](8000) NOT NULL,
	[migration_start_time] [int] NOT NULL,
	[migration_end_time] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_migrations] PRIMARY KEY CLUSTERED 
(
	[migration_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\local_url_bbcode', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_12_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_0', N'a:0:{}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_1', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_1_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_1_rc1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_0";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_10', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_10_rc3";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_10_rc1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_9";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_10_rc2', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_10_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_10_rc3', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_10_rc2";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_11', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_11_rc2";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_11_rc1', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_10";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_11_rc2', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_11_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_12', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_12_rc3";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_12_rc1', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_11";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_12_rc2', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_12_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_12_rc3', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_12_rc2";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_13', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_13_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_13_pl1', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_13";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_13_rc1', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_12";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_14', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_14_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_14_rc1', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_13";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_2', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_2_rc2";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_2_rc1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_2_rc2', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_2_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_3', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_3_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_3_rc1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_2";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_4', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_4_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_4_rc1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_3";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_5', N'a:1:{i:0;s:52:"\phpbb\db\migration\data\v30x\release_3_0_5_rc1part2";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_5_rc1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_4";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_5_rc1part2', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_5_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_6', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_6_rc4";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_6_rc1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_5";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_6_rc2', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_6_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_6_rc3', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_6_rc2";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_6_rc4', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_6_rc3";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_7', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_7_rc2";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_7_pl1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_7";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_7_rc1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_6";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_7_rc2', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_7_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_8', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_8_rc1";}', 1, 1, N'', 1560533006, 1560533006)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_8_rc1', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_7_pl1";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_9', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_9_rc4";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_9_rc1', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_8";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_9_rc2', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_9_rc1";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_9_rc3', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_9_rc2";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v30x\release_3_0_9_rc4', N'a:1:{i:0;s:47:"\phpbb\db\migration\data\v30x\release_3_0_9_rc3";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\acp_prune_users_module', N'a:1:{i:0;s:35:"\phpbb\db\migration\data\v310\beta1";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\acp_style_components_module', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\allow_cdn', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v310\jquery_update";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\alpha1', N'a:18:{i:0;s:46:"\phpbb\db\migration\data\v30x\local_url_bbcode";i:1;s:44:"\phpbb\db\migration\data\v30x\release_3_0_12";i:2;s:57:"\phpbb\db\migration\data\v310\acp_style_components_module";i:3;s:39:"\phpbb\db\migration\data\v310\allow_cdn";i:4;s:49:"\phpbb\db\migration\data\v310\auth_provider_oauth";i:5;s:37:"\phpbb\db\migration\data\v310\avatars";i:6;s:40:"\phpbb\db\migration\data\v310\boardindex";i:7;s:44:"\phpbb\db\migration\data\v310\config_db_text";i:8;s:45:"\phpbb\db\migration\data\v310\forgot_password";i:9;s:41:"\phpbb\db\migration\data\v310\mod_rewrite";i:10;s:49:"\phpbb\db\migration\data\v310\mysql_fulltext_drop";i:11;s:40:"\phpbb\db\migration\data\v310\namespaces";i:12;s:48:"\phpbb\db\migration\data\v310\notifications_cron";i:13;s:60:"\phpbb\db\migration\data\v310\notification_options_reconvert";i:14;s:38:"\phpbb\db\migration\data\v310\plupload";i:15;s:51:"\phpbb\db\migration\data\v310\signature_module_auth";i:16;s:52:"\phpbb\db\migration\data\v310\softdelete_mcp_modules";i:17;s:38:"\phpbb\db\migration\data\v310\teampage";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\alpha2', N'a:2:{i:0;s:36:"\phpbb\db\migration\data\v310\alpha1";i:1;s:51:"\phpbb\db\migration\data\v310\notifications_cron_p2";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\alpha3', N'a:4:{i:0;s:36:"\phpbb\db\migration\data\v310\alpha2";i:1;s:42:"\phpbb\db\migration\data\v310\avatar_types";i:2;s:39:"\phpbb\db\migration\data\v310\passwords";i:3;s:48:"\phpbb\db\migration\data\v310\profilefield_types";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\auth_provider_oauth', N'a:0:{}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\auth_provider_oauth2', N'a:1:{i:0;s:49:"\phpbb\db\migration\data\v310\auth_provider_oauth";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\avatar_types', N'a:2:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";i:1;s:37:"\phpbb\db\migration\data\v310\avatars";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\avatars', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_11";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\beta1', N'a:7:{i:0;s:36:"\phpbb\db\migration\data\v310\alpha3";i:1;s:42:"\phpbb\db\migration\data\v310\passwords_p2";i:2;s:52:"\phpbb\db\migration\data\v310\postgres_fulltext_drop";i:3;s:63:"\phpbb\db\migration\data\v310\profilefield_change_load_settings";i:4;s:51:"\phpbb\db\migration\data\v310\profilefield_location";i:5;s:54:"\phpbb\db\migration\data\v310\soft_delete_mod_convert2";i:6;s:48:"\phpbb\db\migration\data\v310\ucp_popuppm_module";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\beta2', N'a:3:{i:0;s:35:"\phpbb\db\migration\data\v310\beta1";i:1;s:52:"\phpbb\db\migration\data\v310\acp_prune_users_module";i:2;s:59:"\phpbb\db\migration\data\v310\profilefield_location_cleanup";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\beta3', N'a:6:{i:0;s:35:"\phpbb\db\migration\data\v310\beta2";i:1;s:50:"\phpbb\db\migration\data\v310\auth_provider_oauth2";i:2;s:48:"\phpbb\db\migration\data\v310\board_contact_name";i:3;s:44:"\phpbb\db\migration\data\v310\jquery_update2";i:4;s:50:"\phpbb\db\migration\data\v310\live_searches_config";i:5;s:49:"\phpbb\db\migration\data\v310\prune_shadow_topics";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\beta4', N'a:3:{i:0;s:35:"\phpbb\db\migration\data\v310\beta3";i:1;s:69:"\phpbb\db\migration\data\v310\extensions_version_check_force_unstable";i:2;s:58:"\phpbb\db\migration\data\v310\reset_missing_captcha_plugin";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\board_contact_name', N'a:1:{i:0;s:35:"\phpbb\db\migration\data\v310\beta2";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\boardindex', N'a:0:{}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\bot_update', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\rc6";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\captcha_plugins', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\rc2";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\config_db_text', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_11";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\contact_admin_acp_module', N'a:0:{}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\contact_admin_form', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v310\config_db_text";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\dev', N'a:5:{i:0;s:40:"\phpbb\db\migration\data\v310\extensions";i:1;s:45:"\phpbb\db\migration\data\v310\style_update_p2";i:2;s:41:"\phpbb\db\migration\data\v310\timezone_p2";i:3;s:52:"\phpbb\db\migration\data\v310\reported_posts_display";i:4;s:46:"\phpbb\db\migration\data\v310\migrations_table";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\extensions', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_11";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\extensions_version_check_force_unstable', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\forgot_password', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_11";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\gold', N'a:2:{i:0;s:33:"\phpbb\db\migration\data\v310\rc6";i:1;s:40:"\phpbb\db\migration\data\v310\bot_update";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\jquery_update', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\jquery_update2', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v310\jquery_update";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\live_searches_config', N'a:0:{}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\migrations_table', N'a:0:{}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\mod_rewrite', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\mysql_fulltext_drop', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\namespaces', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\notification_options_reconvert', N'a:1:{i:0;s:54:"\phpbb\db\migration\data\v310\notifications_schema_fix";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\notifications', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\notifications_cron', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v310\notifications";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\notifications_cron_p2', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v310\notifications_cron";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\notifications_schema_fix', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v310\notifications";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\notifications_use_full_name', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\rc3";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\passwords', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_11";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\passwords_convert_p1', N'a:1:{i:0;s:42:"\phpbb\db\migration\data\v310\passwords_p2";}', 1, 1, N'', 1560533007, 1560533007)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\passwords_convert_p2', N'a:1:{i:0;s:50:"\phpbb\db\migration\data\v310\passwords_convert_p1";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\passwords_p2', N'a:1:{i:0;s:39:"\phpbb\db\migration\data\v310\passwords";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\plupload', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\postgres_fulltext_drop', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_aol', N'a:1:{i:0;s:56:"\phpbb\db\migration\data\v310\profilefield_yahoo_cleanup";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_aol_cleanup', N'a:1:{i:0;s:46:"\phpbb\db\migration\data\v310\profilefield_aol";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_change_load_settings', N'a:1:{i:0;s:54:"\phpbb\db\migration\data\v310\profilefield_aol_cleanup";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_cleanup', N'a:2:{i:0;s:52:"\phpbb\db\migration\data\v310\profilefield_interests";i:1;s:53:"\phpbb\db\migration\data\v310\profilefield_occupation";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_contact_field', N'a:1:{i:0;s:56:"\phpbb\db\migration\data\v310\profilefield_on_memberlist";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_facebook', N'a:3:{i:0;s:56:"\phpbb\db\migration\data\v310\profilefield_contact_field";i:1;s:55:"\phpbb\db\migration\data\v310\profilefield_show_novalue";i:2;s:48:"\phpbb\db\migration\data\v310\profilefield_types";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_field_validation_length', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\rc3";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_googleplus', N'a:3:{i:0;s:56:"\phpbb\db\migration\data\v310\profilefield_contact_field";i:1;s:55:"\phpbb\db\migration\data\v310\profilefield_show_novalue";i:2;s:48:"\phpbb\db\migration\data\v310\profilefield_types";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_icq', N'a:1:{i:0;s:56:"\phpbb\db\migration\data\v310\profilefield_contact_field";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_icq_cleanup', N'a:1:{i:0;s:46:"\phpbb\db\migration\data\v310\profilefield_icq";}', 1, 1, N'', 1560533008, 1560533008)
GO
print 'Processed 100 total records'
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_interests', N'a:2:{i:0;s:48:"\phpbb\db\migration\data\v310\profilefield_types";i:1;s:55:"\phpbb\db\migration\data\v310\profilefield_show_novalue";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_location', N'a:2:{i:0;s:48:"\phpbb\db\migration\data\v310\profilefield_types";i:1;s:56:"\phpbb\db\migration\data\v310\profilefield_on_memberlist";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_location_cleanup', N'a:1:{i:0;s:51:"\phpbb\db\migration\data\v310\profilefield_location";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_occupation', N'a:1:{i:0;s:52:"\phpbb\db\migration\data\v310\profilefield_interests";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_on_memberlist', N'a:1:{i:0;s:50:"\phpbb\db\migration\data\v310\profilefield_cleanup";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_show_novalue', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v310\profilefield_types";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_skype', N'a:3:{i:0;s:56:"\phpbb\db\migration\data\v310\profilefield_contact_field";i:1;s:55:"\phpbb\db\migration\data\v310\profilefield_show_novalue";i:2;s:48:"\phpbb\db\migration\data\v310\profilefield_types";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_twitter', N'a:3:{i:0;s:56:"\phpbb\db\migration\data\v310\profilefield_contact_field";i:1;s:55:"\phpbb\db\migration\data\v310\profilefield_show_novalue";i:2;s:48:"\phpbb\db\migration\data\v310\profilefield_types";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_types', N'a:1:{i:0;s:36:"\phpbb\db\migration\data\v310\alpha2";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_website', N'a:2:{i:0;s:56:"\phpbb\db\migration\data\v310\profilefield_on_memberlist";i:1;s:54:"\phpbb\db\migration\data\v310\profilefield_icq_cleanup";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_website_cleanup', N'a:1:{i:0;s:50:"\phpbb\db\migration\data\v310\profilefield_website";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_wlm', N'a:1:{i:0;s:58:"\phpbb\db\migration\data\v310\profilefield_website_cleanup";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_wlm_cleanup', N'a:1:{i:0;s:46:"\phpbb\db\migration\data\v310\profilefield_wlm";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_yahoo', N'a:1:{i:0;s:54:"\phpbb\db\migration\data\v310\profilefield_wlm_cleanup";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_yahoo_cleanup', N'a:1:{i:0;s:48:"\phpbb\db\migration\data\v310\profilefield_yahoo";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\profilefield_youtube', N'a:3:{i:0;s:56:"\phpbb\db\migration\data\v310\profilefield_contact_field";i:1;s:55:"\phpbb\db\migration\data\v310\profilefield_show_novalue";i:2;s:48:"\phpbb\db\migration\data\v310\profilefield_types";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\prune_shadow_topics', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\rc1', N'a:9:{i:0;s:35:"\phpbb\db\migration\data\v310\beta4";i:1;s:54:"\phpbb\db\migration\data\v310\contact_admin_acp_module";i:2;s:48:"\phpbb\db\migration\data\v310\contact_admin_form";i:3;s:50:"\phpbb\db\migration\data\v310\passwords_convert_p2";i:4;s:51:"\phpbb\db\migration\data\v310\profilefield_facebook";i:5;s:53:"\phpbb\db\migration\data\v310\profilefield_googleplus";i:6;s:48:"\phpbb\db\migration\data\v310\profilefield_skype";i:7;s:50:"\phpbb\db\migration\data\v310\profilefield_twitter";i:8;s:50:"\phpbb\db\migration\data\v310\profilefield_youtube";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\rc2', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\rc1";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\rc3', N'a:5:{i:0;s:33:"\phpbb\db\migration\data\v310\rc2";i:1;s:45:"\phpbb\db\migration\data\v310\captcha_plugins";i:2;s:53:"\phpbb\db\migration\data\v310\rename_too_long_indexes";i:3;s:41:"\phpbb\db\migration\data\v310\search_type";i:4;s:49:"\phpbb\db\migration\data\v310\topic_sort_username";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\rc4', N'a:2:{i:0;s:33:"\phpbb\db\migration\data\v310\rc3";i:1;s:57:"\phpbb\db\migration\data\v310\notifications_use_full_name";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\rc5', N'a:3:{i:0;s:33:"\phpbb\db\migration\data\v310\rc4";i:1;s:66:"\phpbb\db\migration\data\v310\profilefield_field_validation_length";i:2;s:53:"\phpbb\db\migration\data\v310\remove_acp_styles_cache";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\rc6', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\rc5";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\remove_acp_styles_cache', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\rc4";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\rename_too_long_indexes', N'a:1:{i:0;s:43:"\phpbb\db\migration\data\v30x\release_3_0_0";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\reported_posts_display', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_11";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\reset_missing_captcha_plugin', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\search_type', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\signature_module_auth', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\soft_delete_mod_convert', N'a:1:{i:0;s:36:"\phpbb\db\migration\data\v310\alpha3";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\soft_delete_mod_convert2', N'a:1:{i:0;s:53:"\phpbb\db\migration\data\v310\soft_delete_mod_convert";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\softdelete_mcp_modules', N'a:2:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";i:1;s:43:"\phpbb\db\migration\data\v310\softdelete_p2";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\softdelete_p1', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\softdelete_p2', N'a:2:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";i:1;s:43:"\phpbb\db\migration\data\v310\softdelete_p1";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\style_update_p1', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_11";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\style_update_p2', N'a:1:{i:0;s:45:"\phpbb\db\migration\data\v310\style_update_p1";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\teampage', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\timezone', N'a:1:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_11";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\timezone_p2', N'a:1:{i:0;s:38:"\phpbb\db\migration\data\v310\timezone";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\topic_sort_username', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v310\ucp_popuppm_module', N'a:1:{i:0;s:33:"\phpbb\db\migration\data\v310\dev";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\add_jabber_ssl_context_config_options', N'a:1:{i:0;s:35:"\phpbb\db\migration\data\v31x\v3110";}', 1, 1, N'', 1560533008, 1560533008)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\add_latest_topics_index', N'a:1:{i:0;s:35:"\phpbb\db\migration\data\v31x\v3110";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\add_log_time_index', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v319";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\add_smtp_ssl_context_config_options', N'a:1:{i:0;s:35:"\phpbb\db\migration\data\v31x\v3110";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\increase_size_of_dateformat', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v317";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\increase_size_of_emotion', N'a:1:{i:0;s:35:"\phpbb\db\migration\data\v31x\v3110";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\m_pm_report', N'a:1:{i:0;s:37:"\phpbb\db\migration\data\v31x\v316rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\m_softdelete_global', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v311";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\plupload_last_gc_dynamic', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v312";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\profilefield_remove_underscore_from_alpha', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v311";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\profilefield_yahoo_update_url', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v312";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\remove_duplicate_migrations', N'a:1:{i:0;s:35:"\phpbb\db\migration\data\v31x\v3110";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\style_update', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v310\gold";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\update_custom_bbcodes_with_idn', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v312";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\update_hashes', N'a:1:{i:0;s:35:"\phpbb\db\migration\data\v31x\v3110";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v311', N'a:2:{i:0;s:34:"\phpbb\db\migration\data\v310\gold";i:1;s:42:"\phpbb\db\migration\data\v31x\style_update";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v3110', N'a:1:{i:0;s:38:"\phpbb\db\migration\data\v31x\v3110rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v3110rc1', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v319";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v3111', N'a:1:{i:0;s:38:"\phpbb\db\migration\data\v31x\v3111rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v3111rc1', N'a:8:{i:0;s:35:"\phpbb\db\migration\data\v31x\v3110";i:1;s:48:"\phpbb\db\migration\data\v31x\add_log_time_index";i:2;s:54:"\phpbb\db\migration\data\v31x\increase_size_of_emotion";i:3;s:67:"\phpbb\db\migration\data\v31x\add_jabber_ssl_context_config_options";i:4;s:65:"\phpbb\db\migration\data\v31x\add_smtp_ssl_context_config_options";i:5;s:43:"\phpbb\db\migration\data\v31x\update_hashes";i:6;s:57:"\phpbb\db\migration\data\v31x\remove_duplicate_migrations";i:7;s:53:"\phpbb\db\migration\data\v31x\add_latest_topics_index";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v3112', N'a:1:{i:0;s:35:"\phpbb\db\migration\data\v31x\v3111";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v312', N'a:1:{i:0;s:37:"\phpbb\db\migration\data\v31x\v312rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v312rc1', N'a:2:{i:0;s:34:"\phpbb\db\migration\data\v31x\v311";i:1;s:49:"\phpbb\db\migration\data\v31x\m_softdelete_global";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v313', N'a:1:{i:0;s:37:"\phpbb\db\migration\data\v31x\v313rc2";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v313rc1', N'a:5:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_13_rc1";i:1;s:54:"\phpbb\db\migration\data\v31x\plupload_last_gc_dynamic";i:2;s:71:"\phpbb\db\migration\data\v31x\profilefield_remove_underscore_from_alpha";i:3;s:59:"\phpbb\db\migration\data\v31x\profilefield_yahoo_update_url";i:4;s:60:"\phpbb\db\migration\data\v31x\update_custom_bbcodes_with_idn";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v313rc2', N'a:2:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_13_pl1";i:1;s:37:"\phpbb\db\migration\data\v31x\v313rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v314', N'a:2:{i:0;s:44:"\phpbb\db\migration\data\v30x\release_3_0_14";i:1;s:37:"\phpbb\db\migration\data\v31x\v314rc2";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v314rc1', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v313";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v314rc2', N'a:2:{i:0;s:48:"\phpbb\db\migration\data\v30x\release_3_0_14_rc1";i:1;s:37:"\phpbb\db\migration\data\v31x\v314rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v315', N'a:1:{i:0;s:37:"\phpbb\db\migration\data\v31x\v315rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v315rc1', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v314";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v316', N'a:1:{i:0;s:37:"\phpbb\db\migration\data\v31x\v316rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v316rc1', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v315";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v317', N'a:1:{i:0;s:37:"\phpbb\db\migration\data\v31x\v317rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v317pl1', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v317";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v317rc1', N'a:2:{i:0;s:41:"\phpbb\db\migration\data\v31x\m_pm_report";i:1;s:34:"\phpbb\db\migration\data\v31x\v316";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v318', N'a:1:{i:0;s:37:"\phpbb\db\migration\data\v31x\v318rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v318rc1', N'a:2:{i:0;s:57:"\phpbb\db\migration\data\v31x\increase_size_of_dateformat";i:1;s:37:"\phpbb\db\migration\data\v31x\v317pl1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v319', N'a:1:{i:0;s:37:"\phpbb\db\migration\data\v31x\v319rc1";}', 1, 1, N'', 1560533009, 1560533009)
INSERT [testforum].[phpbb_migrations] ([migration_name], [migration_depends_on], [migration_schema_done], [migration_data_done], [migration_data_state], [migration_start_time], [migration_end_time]) VALUES (N'\phpbb\db\migration\data\v31x\v319rc1', N'a:1:{i:0;s:34:"\phpbb\db\migration\data\v31x\v318";}', 1, 1, N'', 1560533009, 1560533009)
/****** Object:  Table [testforum].[phpbb_login_attempts]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_login_attempts](
	[attempt_ip] [varchar](40) NOT NULL,
	[attempt_browser] [varchar](150) NOT NULL,
	[attempt_forwarded_for] [varchar](255) NOT NULL,
	[attempt_time] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[username] [varchar](255) NOT NULL,
	[username_clean] [varchar](255) NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_login_attempts] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [att_for] ON [testforum].[phpbb_login_attempts] 
(
	[attempt_forwarded_for] ASC,
	[attempt_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [att_ip] ON [testforum].[phpbb_login_attempts] 
(
	[attempt_ip] ASC,
	[attempt_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [att_time] ON [testforum].[phpbb_login_attempts] 
(
	[attempt_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [testforum].[phpbb_login_attempts] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_log]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_log](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[log_type] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[forum_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[reportee_id] [int] NOT NULL,
	[log_ip] [varchar](40) NOT NULL,
	[log_time] [int] NOT NULL,
	[log_operation] [varchar](4000) NOT NULL,
	[log_data] [text] NOT NULL,
 CONSTRAINT [PK_phpbb_log] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [forum_id] ON [testforum].[phpbb_log] 
(
	[forum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [log_time] ON [testforum].[phpbb_log] 
(
	[log_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [log_type] ON [testforum].[phpbb_log] 
(
	[log_type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [reportee_id] ON [testforum].[phpbb_log] 
(
	[reportee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [topic_id] ON [testforum].[phpbb_log] 
(
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [testforum].[phpbb_log] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_log] ON
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (1, 0, 2, 0, 0, 0, N'96.3.29.1', 1560533005, N'LOG_INSTALL_INSTALLED', N'a:1:{i:0;s:6:"3.1.12";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (2, 0, 2, 0, 0, 0, N'96.3.29.1', 1560534163, N'LOG_FORUM_ADD', N'a:1:{i:0;s:18:"Successful install";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (3, 0, 2, 0, 0, 0, N'96.3.29.1', 1560540541, N'LOG_ADMIN_AUTH_SUCCESS', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (4, 0, 2, 0, 0, 0, N'96.3.29.1', 1560816013, N'LOG_ADMIN_AUTH_SUCCESS', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (5, 0, 2, 0, 0, 0, N'96.3.29.1', 1560816043, N'LOG_STYLE_ADD', N'a:1:{i:0;s:5:"Basic";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (6, 0, 2, 0, 0, 0, N'96.3.29.1', 1560816358, N'LOG_STYLE_ADD', N'a:1:{i:0;s:11:"CleanSilver";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (7, 0, 2, 0, 0, 0, N'96.3.29.1', 1560818063, N'LOG_CONFIG_REGISTRATION', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (8, 0, 2, 0, 0, 0, N'96.3.29.1', 1560818638, N'LOG_FORUM_ADD', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (9, 0, 2, 0, 0, 0, N'96.3.29.1', 1560818741, N'LOG_ACL_ADD_FORUM_LOCAL_F_', N'a:2:{i:0;s:29:"Inspire Discussion Board test";i:1;s:8:"jsargent";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (10, 0, 2, 0, 0, 0, N'96.3.29.1', 1560819802, N'LOG_FORUM_MOVE_UP', N'a:2:{i:0;s:29:"Inspire Discussion Board test";i:1;s:18:"Successful install";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (11, 0, 2, 0, 0, 0, N'96.3.29.1', 1560819803, N'LOG_FORUM_MOVE_UP', N'a:2:{i:0;s:18:"Successful install";i:1;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (12, 0, 2, 0, 0, 0, N'96.3.29.1', 1560819900, N'LOG_FORUM_SYNC', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (13, 0, 2, 0, 0, 0, N'96.3.29.1', 1560820287, N'LOG_FORUM_MOVE_UP', N'a:2:{i:0;s:29:"Inspire Discussion Board test";i:1;s:18:"Successful install";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (14, 0, 2, 0, 0, 0, N'96.3.29.1', 1560820290, N'LOG_FORUM_MOVE_UP', N'a:2:{i:0;s:29:"Inspire Discussion Board test";i:1;s:19:"Your first category";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (15, 0, 2, 0, 0, 0, N'96.3.29.1', 1560820313, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (16, 0, 2, 0, 0, 0, N'96.3.29.1', 1560820389, N'LOG_ACL_ADD_FORUM_LOCAL_F_', N'a:2:{i:0;s:29:"Inspire Discussion Board test";i:1;s:12:"JessicaAdmin";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (17, 0, 2, 0, 0, 0, N'96.3.29.1', 1560820466, N'LOG_FORUM_SYNC', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (18, 0, 2, 0, 0, 0, N'96.3.29.1', 1560869594, N'LOG_ACL_ADD_USER_LOCAL_F_', N'a:2:{i:0;s:29:"Inspire Discussion Board test";i:1;s:12:"JessicaAdmin";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (19, 0, 2, 0, 0, 0, N'96.3.29.1', 1560869734, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (20, 0, 2, 0, 0, 0, N'96.3.29.1', 1560870511, N'LOG_STYLE_DELETE', N'a:1:{i:0;s:11:"CleanSilver";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (21, 0, 2, 0, 0, 0, N'96.3.29.1', 1560870740, N'LOG_STYLE_ADD', N'a:1:{i:0;s:11:"Green-Style";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (22, 0, 2, 0, 0, 0, N'96.3.29.1', 1560870793, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (23, 0, 2, 0, 0, 0, N'96.3.29.1', 1560871764, N'LOG_STYLE_ADD', N'a:1:{i:0;s:10:"Absolution";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (24, 0, 2, 0, 0, 0, N'96.3.29.1', 1560871764, N'LOG_STYLE_ADD', N'a:1:{i:0;s:11:"CleanSilver";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (25, 0, 2, 0, 0, 0, N'96.3.29.1', 1560871764, N'LOG_STYLE_ADD', N'a:1:{i:0;s:8:"Elegance";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (26, 0, 2, 0, 0, 0, N'96.3.29.1', 1560871799, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (27, 0, 2, 0, 0, 0, N'96.3.29.1', 1560871841, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (28, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875500, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (29, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875548, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (30, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875605, N'LOG_STYLE_DELETE', N'a:1:{i:0;s:11:"CleanSilver";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (31, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875991, N'LOG_STYLE_ADD', N'a:1:{i:0;s:12:"Basic (Aqua)";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (32, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875991, N'LOG_STYLE_ADD', N'a:1:{i:0;s:17:"Basic (Dark Blue)";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (33, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875991, N'LOG_STYLE_ADD', N'a:1:{i:0;s:14:"Basic (Orange)";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (34, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875991, N'LOG_STYLE_ADD', N'a:1:{i:0;s:11:"CleanSilver";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (35, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875991, N'LOG_STYLE_ADD', N'a:1:{i:0;s:15:"Elegance (Aqua)";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (36, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875991, N'LOG_STYLE_ADD', N'a:1:{i:0;s:21:"Elegance (Light Blue)";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (37, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875991, N'LOG_STYLE_ADD', N'a:1:{i:0;s:20:"Elegance (Soft Blue)";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (38, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875991, N'LOG_STYLE_ADD', N'a:1:{i:0;s:21:"Elegance (Steel Blue)";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (39, 0, 2, 0, 0, 0, N'96.3.29.1', 1560875991, N'LOG_STYLE_ADD', N'a:1:{i:0;s:10:"proFormell";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (40, 0, 2, 0, 0, 0, N'96.3.29.1', 1560876015, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (41, 0, 2, 0, 0, 0, N'96.3.29.1', 1560876099, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (42, 0, 2, 0, 0, 0, N'96.3.29.1', 1560876265, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:19:"Your first category";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (43, 0, 2, 0, 0, 0, N'96.3.29.1', 1560876336, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:18:"Successful install";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (44, 0, 2, 0, 0, 0, N'96.3.29.1', 1560876380, N'LOG_CONFIG_SETTINGS', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (45, 0, 2, 0, 0, 0, N'96.3.29.1', 1560876412, N'LOG_CONFIG_SETTINGS', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (46, 0, 2, 0, 0, 0, N'96.3.29.1', 1560876431, N'LOG_CONFIG_SETTINGS', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (47, 0, 2, 0, 0, 0, N'96.3.29.1', 1560882064, N'LOG_GROUP_CREATED', N'a:1:{i:0;s:14:"Rivertown Team";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (48, 0, 2, 0, 0, 0, N'96.3.29.1', 1560882275, N'LOG_ACL_ADD_GROUP_GLOBAL_U_', N'a:1:{i:0;s:14:"Rivertown Team";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (49, 0, 2, 0, 0, 0, N'96.3.29.1', 1560882366, N'LOG_USERS_ADDED', N'a:2:{i:0;s:14:"Rivertown Team";i:1;s:22:"JessicaAdmin, jsargent";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (50, 0, 2, 0, 0, 0, N'96.3.29.1', 1560882508, N'LOG_ACL_ADD_FORUM_LOCAL_F_', N'a:2:{i:0;s:29:"Inspire Discussion Board test";i:1;s:14:"Rivertown Team";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (51, 0, 2, 0, 0, 0, N'96.3.29.1', 1560883436, N'LOG_GROUP_CREATED', N'a:1:{i:0;s:7:"DHS HUB";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (52, 0, 2, 0, 0, 0, N'96.3.29.1', 1560883508, N'LOG_GROUP_UPDATED', N'a:1:{i:0;s:7:"DHS HUB";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (53, 0, 2, 0, 0, 0, N'96.3.29.1', 1560888807, N'LOG_USERS_ADDED', N'a:2:{i:0;s:14:"Rivertown Team";i:1;s:5:"Micah";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (54, 0, 2, 0, 0, 0, N'96.3.29.1', 1560888887, N'LOG_USERS_ADDED', N'a:2:{i:0;s:7:"DHS HUB";i:1;s:12:"JessicaAdmin";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (55, 0, 2, 0, 0, 0, N'96.3.29.1', 1560889163, N'LOG_FORUM_ADD', N'a:1:{i:0;s:7:"DHS HUB";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (56, 0, 2, 0, 0, 0, N'96.3.29.1', 1560889211, N'LOG_ACL_ADD_FORUM_LOCAL_F_', N'a:2:{i:0;s:7:"DHS HUB";i:1;s:7:"DHS HUB";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (57, 0, 2, 0, 0, 0, N'96.3.29.1', 1560889253, N'LOG_ACL_ADD_FORUM_LOCAL_F_', N'a:2:{i:0;s:7:"DHS HUB";i:1;s:7:"DHS HUB";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (58, 0, 2, 0, 0, 0, N'96.3.29.1', 1560889298, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:7:"DHS HUB";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (59, 0, 2, 0, 0, 0, N'96.3.29.1', 1560889385, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:7:"DHS HUB";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (60, 0, 2, 0, 0, 0, N'96.3.29.1', 1560889601, N'LOG_ACL_ADD_USER_GLOBAL_A_', N'a:1:{i:0;s:5:"Micah";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (61, 0, 2, 0, 0, 0, N'96.3.29.1', 1560889733, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (62, 0, 2, 0, 0, 0, N'96.3.29.1', 1560890930, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:29:"Inspire Discussion Board test";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (63, 0, 2, 0, 0, 0, N'96.3.29.1', 1560891059, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:16:"Your first forum";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (64, 0, 2, 0, 0, 0, N'96.3.29.1', 1560892139, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:16:"Your first forum";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (65, 0, 2, 0, 0, 0, N'96.3.29.1', 1560968767, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:43:"Department of Children, Youth, and Families";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (66, 0, 2, 0, 0, 0, N'96.3.29.1', 1560982496, N'LOG_ADMIN_AUTH_SUCCESS', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (67, 0, 2, 0, 0, 0, N'96.3.29.1', 1560982539, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:43:"Department of Children, Youth, and Families";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (68, 0, 2, 0, 0, 0, N'96.3.29.1', 1560982579, N'LOG_STYLE_ADD', N'a:1:{i:0;s:10:"Simplicity";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (69, 0, 2, 0, 0, 0, N'96.3.29.1', 1560982614, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:43:"Department of Children, Youth, and Families";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (70, 0, 2, 0, 0, 0, N'96.3.29.1', 1560983433, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:43:"Department of Children, Youth, and Families";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (71, 0, 2, 0, 0, 0, N'96.3.29.1', 1560983500, N'LOG_STYLE_ADD', N'a:1:{i:0;s:16:"Elegance (Green)";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (72, 0, 2, 0, 0, 0, N'96.3.29.1', 1560983500, N'LOG_STYLE_ADD', N'a:1:{i:0;s:21:"Elegance (Soft Green)";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (73, 0, 2, 0, 0, 0, N'96.3.29.1', 1560983516, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:43:"Department of Children, Youth, and Families";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (74, 0, 2, 0, 0, 0, N'96.3.29.1', 1560984162, N'LOG_FORUM_EDIT', N'a:1:{i:0;s:43:"Department of Children, Youth, and Families";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (75, 0, 2, 0, 0, 0, N'96.3.29.1', 1561130723, N'LOG_ADMIN_AUTH_SUCCESS', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (76, 0, 2, 0, 0, 0, N'96.3.29.1', 1561131734, N'LOG_GROUP_UPDATED', N'a:1:{i:0;s:4:"DCYF";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (77, 0, 2, 0, 0, 0, N'96.3.29.1', 1561132135, N'LOG_ADMIN_AUTH_FAIL', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (78, 0, 2, 0, 0, 0, N'96.3.29.1', 1561132146, N'LOG_ADMIN_AUTH_SUCCESS', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (79, 0, 2, 0, 0, 0, N'96.3.29.1', 1561132219, N'LOG_USERS_ADDED', N'a:2:{i:0;s:4:"DCYF";i:1;s:16:"Michelle Roberts";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (80, 0, 2, 0, 0, 0, N'96.3.29.1', 1561132237, N'LOG_ACL_TRANSFER_PERMISSIONS', N'a:1:{i:0;s:16:"Michelle Roberts";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (81, 3, 1, 0, 0, 50, N'198.238.3.193', 1562615233, N'LOG_USER_NEW_PASSWORD', N'a:1:{i:0;s:16:"Michelle Roberts";}')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (82, 0, 2, 0, 0, 0, N'96.3.29.1', 1562697319, N'LOG_ADMIN_AUTH_SUCCESS', N'')
INSERT [testforum].[phpbb_log] ([log_id], [log_type], [user_id], [forum_id], [topic_id], [reportee_id], [log_ip], [log_time], [log_operation], [log_data]) VALUES (83, 0, 2, 0, 0, 0, N'96.3.29.1', 1562697348, N'LOG_ACL_RESTORE_PERMISSIONS', N'a:1:{i:0;s:16:"Michelle Roberts";}')
SET IDENTITY_INSERT [testforum].[phpbb_log] OFF
/****** Object:  Table [testforum].[phpbb_lang]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_lang](
	[lang_id] [int] IDENTITY(1,1) NOT NULL,
	[lang_iso] [varchar](30) NOT NULL,
	[lang_dir] [varchar](30) NOT NULL,
	[lang_english_name] [varchar](100) NOT NULL,
	[lang_local_name] [varchar](255) NOT NULL,
	[lang_author] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_lang] PRIMARY KEY CLUSTERED 
(
	[lang_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [lang_iso] ON [testforum].[phpbb_lang] 
(
	[lang_iso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_lang] ON
INSERT [testforum].[phpbb_lang] ([lang_id], [lang_iso], [lang_dir], [lang_english_name], [lang_local_name], [lang_author]) VALUES (1, N'en', N'en', N'British English', N'British English', N'phpBB Limited')
SET IDENTITY_INSERT [testforum].[phpbb_lang] OFF
/****** Object:  Table [testforum].[phpbb_icons]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_icons](
	[icons_id] [int] IDENTITY(1,1) NOT NULL,
	[icons_url] [varchar](255) NOT NULL,
	[icons_width] [int] NOT NULL,
	[icons_height] [int] NOT NULL,
	[icons_order] [int] NOT NULL,
	[display_on_posting] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_icons] PRIMARY KEY CLUSTERED 
(
	[icons_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [display_on_posting] ON [testforum].[phpbb_icons] 
(
	[display_on_posting] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_icons] ON
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (1, N'misc/fire.gif', 16, 16, 1, 1)
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (2, N'smile/redface.gif', 16, 16, 9, 1)
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (3, N'smile/mrgreen.gif', 16, 16, 10, 1)
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (4, N'misc/heart.gif', 16, 16, 4, 1)
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (5, N'misc/star.gif', 16, 16, 2, 1)
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (6, N'misc/radioactive.gif', 16, 16, 3, 1)
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (7, N'misc/thinking.gif', 16, 16, 5, 1)
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (8, N'smile/info.gif', 16, 16, 8, 1)
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (9, N'smile/question.gif', 16, 16, 6, 1)
INSERT [testforum].[phpbb_icons] ([icons_id], [icons_url], [icons_width], [icons_height], [icons_order], [display_on_posting]) VALUES (10, N'smile/alert.gif', 16, 16, 7, 1)
SET IDENTITY_INSERT [testforum].[phpbb_icons] OFF
/****** Object:  Table [testforum].[phpbb_groups]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_groups](
	[group_id] [int] IDENTITY(1,1) NOT NULL,
	[group_type] [int] NOT NULL,
	[group_founder_manage] [int] NOT NULL,
	[group_skip_auth] [int] NOT NULL,
	[group_name] [varchar](255) NOT NULL,
	[group_desc] [varchar](4000) NOT NULL,
	[group_desc_bitfield] [varchar](255) NOT NULL,
	[group_desc_options] [int] NOT NULL,
	[group_desc_uid] [varchar](8) NOT NULL,
	[group_display] [int] NOT NULL,
	[group_avatar] [varchar](255) NOT NULL,
	[group_avatar_type] [varchar](255) NOT NULL,
	[group_avatar_width] [int] NOT NULL,
	[group_avatar_height] [int] NOT NULL,
	[group_rank] [int] NOT NULL,
	[group_colour] [varchar](6) NOT NULL,
	[group_sig_chars] [int] NOT NULL,
	[group_receive_pm] [int] NOT NULL,
	[group_message_limit] [int] NOT NULL,
	[group_legend] [int] NOT NULL,
	[group_max_recipients] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_groups] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [group_legend_name] ON [testforum].[phpbb_groups] 
(
	[group_legend] ASC,
	[group_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_groups] ON
INSERT [testforum].[phpbb_groups] ([group_id], [group_type], [group_founder_manage], [group_skip_auth], [group_name], [group_desc], [group_desc_bitfield], [group_desc_options], [group_desc_uid], [group_display], [group_avatar], [group_avatar_type], [group_avatar_width], [group_avatar_height], [group_rank], [group_colour], [group_sig_chars], [group_receive_pm], [group_message_limit], [group_legend], [group_max_recipients]) VALUES (1, 3, 0, 0, N'GUESTS', N'', N'', 7, N'', 0, N'', N'', 0, 0, 0, N'', 0, 0, 0, 0, 5)
INSERT [testforum].[phpbb_groups] ([group_id], [group_type], [group_founder_manage], [group_skip_auth], [group_name], [group_desc], [group_desc_bitfield], [group_desc_options], [group_desc_uid], [group_display], [group_avatar], [group_avatar_type], [group_avatar_width], [group_avatar_height], [group_rank], [group_colour], [group_sig_chars], [group_receive_pm], [group_message_limit], [group_legend], [group_max_recipients]) VALUES (2, 3, 0, 0, N'REGISTERED', N'', N'', 7, N'', 0, N'', N'', 0, 0, 0, N'', 0, 0, 0, 0, 5)
INSERT [testforum].[phpbb_groups] ([group_id], [group_type], [group_founder_manage], [group_skip_auth], [group_name], [group_desc], [group_desc_bitfield], [group_desc_options], [group_desc_uid], [group_display], [group_avatar], [group_avatar_type], [group_avatar_width], [group_avatar_height], [group_rank], [group_colour], [group_sig_chars], [group_receive_pm], [group_message_limit], [group_legend], [group_max_recipients]) VALUES (3, 3, 0, 0, N'REGISTERED_COPPA', N'', N'', 7, N'', 0, N'', N'', 0, 0, 0, N'', 0, 0, 0, 0, 5)
INSERT [testforum].[phpbb_groups] ([group_id], [group_type], [group_founder_manage], [group_skip_auth], [group_name], [group_desc], [group_desc_bitfield], [group_desc_options], [group_desc_uid], [group_display], [group_avatar], [group_avatar_type], [group_avatar_width], [group_avatar_height], [group_rank], [group_colour], [group_sig_chars], [group_receive_pm], [group_message_limit], [group_legend], [group_max_recipients]) VALUES (4, 3, 0, 0, N'GLOBAL_MODERATORS', N'', N'', 7, N'', 0, N'', N'', 0, 0, 0, N'00AA00', 0, 0, 0, 2, 0)
INSERT [testforum].[phpbb_groups] ([group_id], [group_type], [group_founder_manage], [group_skip_auth], [group_name], [group_desc], [group_desc_bitfield], [group_desc_options], [group_desc_uid], [group_display], [group_avatar], [group_avatar_type], [group_avatar_width], [group_avatar_height], [group_rank], [group_colour], [group_sig_chars], [group_receive_pm], [group_message_limit], [group_legend], [group_max_recipients]) VALUES (5, 3, 1, 0, N'ADMINISTRATORS', N'', N'', 7, N'', 0, N'', N'', 0, 0, 0, N'AA0000', 0, 0, 0, 1, 0)
INSERT [testforum].[phpbb_groups] ([group_id], [group_type], [group_founder_manage], [group_skip_auth], [group_name], [group_desc], [group_desc_bitfield], [group_desc_options], [group_desc_uid], [group_display], [group_avatar], [group_avatar_type], [group_avatar_width], [group_avatar_height], [group_rank], [group_colour], [group_sig_chars], [group_receive_pm], [group_message_limit], [group_legend], [group_max_recipients]) VALUES (6, 3, 0, 0, N'BOTS', N'', N'', 7, N'', 0, N'', N'', 0, 0, 0, N'9E8DA7', 0, 0, 0, 0, 5)
INSERT [testforum].[phpbb_groups] ([group_id], [group_type], [group_founder_manage], [group_skip_auth], [group_name], [group_desc], [group_desc_bitfield], [group_desc_options], [group_desc_uid], [group_display], [group_avatar], [group_avatar_type], [group_avatar_width], [group_avatar_height], [group_rank], [group_colour], [group_sig_chars], [group_receive_pm], [group_message_limit], [group_legend], [group_max_recipients]) VALUES (7, 3, 0, 0, N'NEWLY_REGISTERED', N'', N'', 7, N'', 0, N'', N'', 0, 0, 0, N'', 0, 0, 0, 0, 5)
INSERT [testforum].[phpbb_groups] ([group_id], [group_type], [group_founder_manage], [group_skip_auth], [group_name], [group_desc], [group_desc_bitfield], [group_desc_options], [group_desc_uid], [group_display], [group_avatar], [group_avatar_type], [group_avatar_width], [group_avatar_height], [group_rank], [group_colour], [group_sig_chars], [group_receive_pm], [group_message_limit], [group_legend], [group_max_recipients]) VALUES (8, 0, 0, 0, N'Rivertown Team', N'Here is where we can work on sample ideas.', N'', 7, N'', 0, N'g8_82064.png', N'avatar.driver.upload', 90, 63, 0, N'', 0, 0, 0, 3, 0)
INSERT [testforum].[phpbb_groups] ([group_id], [group_type], [group_founder_manage], [group_skip_auth], [group_name], [group_desc], [group_desc_bitfield], [group_desc_options], [group_desc_uid], [group_display], [group_avatar], [group_avatar_type], [group_avatar_width], [group_avatar_height], [group_rank], [group_colour], [group_sig_chars], [group_receive_pm], [group_message_limit], [group_legend], [group_max_recipients]) VALUES (9, 0, 0, 0, N'DCYF', N'Here is a place for DCYF to assess if phpBB will meet their needs.', N'', 7, N'', 0, N'', N'', 0, 0, 0, N'', 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [testforum].[phpbb_groups] OFF
/****** Object:  Table [testforum].[phpbb_forums_watch]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_forums_watch](
	[forum_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[notify_status] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_forums_watch] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [forum_id] ON [testforum].[phpbb_forums_watch] 
(
	[forum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [notify_stat] ON [testforum].[phpbb_forums_watch] 
(
	[notify_status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [testforum].[phpbb_forums_watch] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_forums_track]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_forums_track](
	[user_id] [int] NOT NULL,
	[forum_id] [int] NOT NULL,
	[mark_time] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_forums_track] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[forum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [testforum].[phpbb_forums_track] ([user_id], [forum_id], [mark_time]) VALUES (2, 4, 1560869849)
INSERT [testforum].[phpbb_forums_track] ([user_id], [forum_id], [mark_time]) VALUES (2, 5, 1560889472)
INSERT [testforum].[phpbb_forums_track] ([user_id], [forum_id], [mark_time]) VALUES (48, 4, 1562696294)
/****** Object:  Table [testforum].[phpbb_forums_access]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_forums_access](
	[forum_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[session_id] [char](32) NOT NULL,
 CONSTRAINT [PK_phpbb_forums_access] PRIMARY KEY CLUSTERED 
(
	[forum_id] ASC,
	[user_id] ASC,
	[session_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [testforum].[phpbb_forums]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_forums](
	[forum_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NOT NULL,
	[left_id] [int] NOT NULL,
	[right_id] [int] NOT NULL,
	[forum_parents] [text] NOT NULL,
	[forum_name] [varchar](255) NOT NULL,
	[forum_desc] [varchar](4000) NOT NULL,
	[forum_desc_bitfield] [varchar](255) NOT NULL,
	[forum_desc_options] [int] NOT NULL,
	[forum_desc_uid] [varchar](8) NOT NULL,
	[forum_link] [varchar](255) NOT NULL,
	[forum_password] [varchar](255) NOT NULL,
	[forum_style] [int] NOT NULL,
	[forum_image] [varchar](255) NOT NULL,
	[forum_rules] [varchar](4000) NOT NULL,
	[forum_rules_link] [varchar](255) NOT NULL,
	[forum_rules_bitfield] [varchar](255) NOT NULL,
	[forum_rules_options] [int] NOT NULL,
	[forum_rules_uid] [varchar](8) NOT NULL,
	[forum_topics_per_page] [int] NOT NULL,
	[forum_type] [int] NOT NULL,
	[forum_status] [int] NOT NULL,
	[forum_last_post_id] [int] NOT NULL,
	[forum_last_poster_id] [int] NOT NULL,
	[forum_last_post_subject] [varchar](255) NOT NULL,
	[forum_last_post_time] [int] NOT NULL,
	[forum_last_poster_name] [varchar](255) NOT NULL,
	[forum_last_poster_colour] [varchar](6) NOT NULL,
	[forum_flags] [int] NOT NULL,
	[display_on_index] [int] NOT NULL,
	[enable_indexing] [int] NOT NULL,
	[enable_icons] [int] NOT NULL,
	[enable_prune] [int] NOT NULL,
	[prune_next] [int] NOT NULL,
	[prune_days] [int] NOT NULL,
	[prune_viewed] [int] NOT NULL,
	[prune_freq] [int] NOT NULL,
	[display_subforum_list] [int] NOT NULL,
	[forum_options] [int] NOT NULL,
	[enable_shadow_prune] [int] NOT NULL,
	[prune_shadow_days] [int] NOT NULL,
	[prune_shadow_freq] [int] NOT NULL,
	[prune_shadow_next] [int] NOT NULL,
	[forum_posts_approved] [int] NOT NULL,
	[forum_posts_unapproved] [int] NOT NULL,
	[forum_posts_softdeleted] [int] NOT NULL,
	[forum_topics_approved] [int] NOT NULL,
	[forum_topics_unapproved] [int] NOT NULL,
	[forum_topics_softdeleted] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_forums] PRIMARY KEY CLUSTERED 
(
	[forum_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [forum_lastpost_id] ON [testforum].[phpbb_forums] 
(
	[forum_last_post_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [left_right_id] ON [testforum].[phpbb_forums] 
(
	[left_id] ASC,
	[right_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_forums] ON
INSERT [testforum].[phpbb_forums] ([forum_id], [parent_id], [left_id], [right_id], [forum_parents], [forum_name], [forum_desc], [forum_desc_bitfield], [forum_desc_options], [forum_desc_uid], [forum_link], [forum_password], [forum_style], [forum_image], [forum_rules], [forum_rules_link], [forum_rules_bitfield], [forum_rules_options], [forum_rules_uid], [forum_topics_per_page], [forum_type], [forum_status], [forum_last_post_id], [forum_last_poster_id], [forum_last_post_subject], [forum_last_post_time], [forum_last_poster_name], [forum_last_poster_colour], [forum_flags], [display_on_index], [enable_indexing], [enable_icons], [enable_prune], [prune_next], [prune_days], [prune_viewed], [prune_freq], [display_subforum_list], [forum_options], [enable_shadow_prune], [prune_shadow_days], [prune_shadow_freq], [prune_shadow_next], [forum_posts_approved], [forum_posts_unapproved], [forum_posts_softdeleted], [forum_topics_approved], [forum_topics_unapproved], [forum_topics_softdeleted]) VALUES (1, 0, 3, 6, N'', N'Your first category', N'', N'', 7, N'', N'', N'', 16, N'', N'', N'', N'', 7, N'', 0, 0, 0, 1, 2, N'', 1560532966, N'JessicaAdmin', N'AA0000', 32, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0)
INSERT [testforum].[phpbb_forums] ([forum_id], [parent_id], [left_id], [right_id], [forum_parents], [forum_name], [forum_desc], [forum_desc_bitfield], [forum_desc_options], [forum_desc_uid], [forum_link], [forum_password], [forum_style], [forum_image], [forum_rules], [forum_rules_link], [forum_rules_bitfield], [forum_rules_options], [forum_rules_uid], [forum_topics_per_page], [forum_type], [forum_status], [forum_last_post_id], [forum_last_poster_id], [forum_last_post_subject], [forum_last_post_time], [forum_last_poster_name], [forum_last_poster_colour], [forum_flags], [display_on_index], [enable_indexing], [enable_icons], [enable_prune], [prune_next], [prune_days], [prune_viewed], [prune_freq], [display_subforum_list], [forum_options], [enable_shadow_prune], [prune_shadow_days], [prune_shadow_freq], [prune_shadow_next], [forum_posts_approved], [forum_posts_unapproved], [forum_posts_softdeleted], [forum_topics_approved], [forum_topics_unapproved], [forum_topics_softdeleted]) VALUES (2, 1, 4, 5, N'a:1:{i:1;a:2:{i:0;s:19:"Your first category";i:1;i:0;}}', N'Your first forum', N'Description of your first forum.', N'', 7, N'', N'', N'', 7, N'', N'', N'', N'', 7, N'', 0, 1, 0, 3, 2, N'Re: Trying a new topic', 1560819709, N'JessicaAdmin', N'AA0000', 48, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 7, 1, 0, 3, 3, 0, 2, 0, 0)
INSERT [testforum].[phpbb_forums] ([forum_id], [parent_id], [left_id], [right_id], [forum_parents], [forum_name], [forum_desc], [forum_desc_bitfield], [forum_desc_options], [forum_desc_uid], [forum_link], [forum_password], [forum_style], [forum_image], [forum_rules], [forum_rules_link], [forum_rules_bitfield], [forum_rules_options], [forum_rules_uid], [forum_topics_per_page], [forum_type], [forum_status], [forum_last_post_id], [forum_last_poster_id], [forum_last_post_subject], [forum_last_post_time], [forum_last_poster_name], [forum_last_poster_colour], [forum_flags], [display_on_index], [enable_indexing], [enable_icons], [enable_prune], [prune_next], [prune_days], [prune_viewed], [prune_freq], [display_subforum_list], [forum_options], [enable_shadow_prune], [prune_shadow_days], [prune_shadow_freq], [prune_shadow_next], [forum_posts_approved], [forum_posts_unapproved], [forum_posts_softdeleted], [forum_topics_approved], [forum_topics_unapproved], [forum_topics_softdeleted]) VALUES (3, 0, 7, 8, N'', N'Successful install', N'This is our first discussion', N'', 7, N'', N'', N'', 16, N'', N'', N'', N'', 7, N'', 0, 1, 0, 0, 0, N'', 0, N'', N'', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0)
INSERT [testforum].[phpbb_forums] ([forum_id], [parent_id], [left_id], [right_id], [forum_parents], [forum_name], [forum_desc], [forum_desc_bitfield], [forum_desc_options], [forum_desc_uid], [forum_link], [forum_password], [forum_style], [forum_image], [forum_rules], [forum_rules_link], [forum_rules_bitfield], [forum_rules_options], [forum_rules_uid], [forum_topics_per_page], [forum_type], [forum_status], [forum_last_post_id], [forum_last_poster_id], [forum_last_post_subject], [forum_last_post_time], [forum_last_poster_name], [forum_last_poster_colour], [forum_flags], [display_on_index], [enable_indexing], [enable_icons], [enable_prune], [prune_next], [prune_days], [prune_viewed], [prune_freq], [display_subforum_list], [forum_options], [enable_shadow_prune], [prune_shadow_days], [prune_shadow_freq], [prune_shadow_next], [forum_posts_approved], [forum_posts_unapproved], [forum_posts_softdeleted], [forum_topics_approved], [forum_topics_unapproved], [forum_topics_softdeleted]) VALUES (4, 0, 1, 2, N'', N'Inspire Discussion Board test', N'', N'', 7, N'', N'', N'', 12, N'', N'Remember: These are your rules', N'', N'', 7, N'', 0, 1, 0, 4, 2, N'Trying a new topic a second time', 1560869849, N'JessicaAdmin', N'AA0000', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 7, 1, 0, 1, 0, 0, 1, 0, 0)
INSERT [testforum].[phpbb_forums] ([forum_id], [parent_id], [left_id], [right_id], [forum_parents], [forum_name], [forum_desc], [forum_desc_bitfield], [forum_desc_options], [forum_desc_uid], [forum_link], [forum_password], [forum_style], [forum_image], [forum_rules], [forum_rules_link], [forum_rules_bitfield], [forum_rules_options], [forum_rules_uid], [forum_topics_per_page], [forum_type], [forum_status], [forum_last_post_id], [forum_last_poster_id], [forum_last_post_subject], [forum_last_post_time], [forum_last_poster_name], [forum_last_poster_colour], [forum_flags], [display_on_index], [enable_indexing], [enable_icons], [enable_prune], [prune_next], [prune_days], [prune_viewed], [prune_freq], [display_subforum_list], [forum_options], [enable_shadow_prune], [prune_shadow_days], [prune_shadow_freq], [prune_shadow_next], [forum_posts_approved], [forum_posts_unapproved], [forum_posts_softdeleted], [forum_topics_approved], [forum_topics_unapproved], [forum_topics_softdeleted]) VALUES (5, 0, 9, 10, N'', N'Department of Children, Youth, and Families', N'Test out the features of phpBB', N'', 7, N'', N'', N'', 19, N'', N'', N'', N'', 7, N'', 0, 1, 0, 6, 2, N'Welcome to the Disussion Board', 1560889472, N'JessicaAdmin', N'AA0000', 48, 0, 1, 0, 0, 0, 7, 7, 1, 1, 0, 0, 7, 1, 0, 1, 0, 0, 1, 0, 0)
SET IDENTITY_INSERT [testforum].[phpbb_forums] OFF
/****** Object:  Table [testforum].[phpbb_extensions]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_extensions](
	[extension_id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[extension] [varchar](100) NOT NULL,
 CONSTRAINT [PK_phpbb_extensions] PRIMARY KEY CLUSTERED 
(
	[extension_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [testforum].[phpbb_extensions] ON
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (1, 1, N'gif')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (2, 1, N'png')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (3, 1, N'jpeg')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (4, 1, N'jpg')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (5, 1, N'tif')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (6, 1, N'tiff')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (7, 1, N'tga')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (8, 2, N'gtar')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (9, 2, N'gz')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (10, 2, N'tar')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (11, 2, N'zip')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (12, 2, N'rar')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (13, 2, N'ace')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (14, 2, N'torrent')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (15, 2, N'tgz')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (16, 2, N'bz2')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (17, 2, N'7z')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (18, 3, N'txt')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (19, 3, N'c')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (20, 3, N'h')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (21, 3, N'cpp')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (22, 3, N'hpp')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (23, 3, N'diz')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (24, 3, N'csv')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (25, 3, N'ini')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (26, 3, N'log')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (27, 3, N'js')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (28, 3, N'xml')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (29, 4, N'xls')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (30, 4, N'xlsx')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (31, 4, N'xlsm')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (32, 4, N'xlsb')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (33, 4, N'doc')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (34, 4, N'docx')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (35, 4, N'docm')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (36, 4, N'dot')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (37, 4, N'dotx')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (38, 4, N'dotm')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (39, 4, N'pdf')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (40, 4, N'ai')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (41, 4, N'ps')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (42, 4, N'ppt')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (43, 4, N'pptx')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (44, 4, N'pptm')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (45, 4, N'odg')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (46, 4, N'odp')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (47, 4, N'ods')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (48, 4, N'odt')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (49, 4, N'rtf')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (50, 5, N'rm')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (51, 5, N'ram')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (52, 6, N'wma')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (53, 6, N'wmv')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (54, 7, N'swf')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (55, 8, N'mov')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (56, 8, N'm4v')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (57, 8, N'm4a')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (58, 8, N'mp4')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (59, 8, N'3gp')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (60, 8, N'3g2')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (61, 8, N'qt')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (62, 9, N'mpeg')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (63, 9, N'mpg')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (64, 9, N'mp3')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (65, 9, N'ogg')
INSERT [testforum].[phpbb_extensions] ([extension_id], [group_id], [extension]) VALUES (66, 9, N'ogm')
SET IDENTITY_INSERT [testforum].[phpbb_extensions] OFF
/****** Object:  Table [testforum].[phpbb_extension_groups]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_extension_groups](
	[group_id] [int] IDENTITY(1,1) NOT NULL,
	[group_name] [varchar](255) NOT NULL,
	[cat_id] [int] NOT NULL,
	[allow_group] [int] NOT NULL,
	[download_mode] [int] NOT NULL,
	[upload_icon] [varchar](255) NOT NULL,
	[max_filesize] [int] NOT NULL,
	[allowed_forums] [varchar](8000) NOT NULL,
	[allow_in_pm] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_extension_groups] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [testforum].[phpbb_extension_groups] ON
INSERT [testforum].[phpbb_extension_groups] ([group_id], [group_name], [cat_id], [allow_group], [download_mode], [upload_icon], [max_filesize], [allowed_forums], [allow_in_pm]) VALUES (1, N'IMAGES', 1, 1, 1, N'', 0, N'', 0)
INSERT [testforum].[phpbb_extension_groups] ([group_id], [group_name], [cat_id], [allow_group], [download_mode], [upload_icon], [max_filesize], [allowed_forums], [allow_in_pm]) VALUES (2, N'ARCHIVES', 0, 1, 1, N'', 0, N'', 0)
INSERT [testforum].[phpbb_extension_groups] ([group_id], [group_name], [cat_id], [allow_group], [download_mode], [upload_icon], [max_filesize], [allowed_forums], [allow_in_pm]) VALUES (3, N'PLAIN_TEXT', 0, 0, 1, N'', 0, N'', 0)
INSERT [testforum].[phpbb_extension_groups] ([group_id], [group_name], [cat_id], [allow_group], [download_mode], [upload_icon], [max_filesize], [allowed_forums], [allow_in_pm]) VALUES (4, N'DOCUMENTS', 0, 0, 1, N'', 0, N'', 0)
INSERT [testforum].[phpbb_extension_groups] ([group_id], [group_name], [cat_id], [allow_group], [download_mode], [upload_icon], [max_filesize], [allowed_forums], [allow_in_pm]) VALUES (5, N'REAL_MEDIA', 3, 0, 1, N'', 0, N'', 0)
INSERT [testforum].[phpbb_extension_groups] ([group_id], [group_name], [cat_id], [allow_group], [download_mode], [upload_icon], [max_filesize], [allowed_forums], [allow_in_pm]) VALUES (6, N'WINDOWS_MEDIA', 2, 0, 1, N'', 0, N'', 0)
INSERT [testforum].[phpbb_extension_groups] ([group_id], [group_name], [cat_id], [allow_group], [download_mode], [upload_icon], [max_filesize], [allowed_forums], [allow_in_pm]) VALUES (7, N'FLASH_FILES', 5, 0, 1, N'', 0, N'', 0)
INSERT [testforum].[phpbb_extension_groups] ([group_id], [group_name], [cat_id], [allow_group], [download_mode], [upload_icon], [max_filesize], [allowed_forums], [allow_in_pm]) VALUES (8, N'QUICKTIME_MEDIA', 6, 0, 1, N'', 0, N'', 0)
INSERT [testforum].[phpbb_extension_groups] ([group_id], [group_name], [cat_id], [allow_group], [download_mode], [upload_icon], [max_filesize], [allowed_forums], [allow_in_pm]) VALUES (9, N'DOWNLOADABLE_FILES', 0, 0, 1, N'', 0, N'', 0)
SET IDENTITY_INSERT [testforum].[phpbb_extension_groups] OFF
/****** Object:  Table [testforum].[phpbb_ext]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_ext](
	[ext_name] [varchar](255) NOT NULL,
	[ext_active] [int] NOT NULL,
	[ext_state] [varchar](8000) NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_ext] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [ext_name] ON [testforum].[phpbb_ext] 
(
	[ext_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_drafts]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_drafts](
	[draft_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[forum_id] [int] NOT NULL,
	[save_time] [int] NOT NULL,
	[draft_subject] [varchar](255) NOT NULL,
	[draft_message] [text] NOT NULL,
 CONSTRAINT [PK_phpbb_drafts] PRIMARY KEY CLUSTERED 
(
	[draft_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [save_time] ON [testforum].[phpbb_drafts] 
(
	[save_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_disallow]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_disallow](
	[disallow_id] [int] IDENTITY(1,1) NOT NULL,
	[disallow_username] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_disallow] PRIMARY KEY CLUSTERED 
(
	[disallow_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [testforum].[phpbb_confirm]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_confirm](
	[confirm_id] [char](32) NOT NULL,
	[session_id] [char](32) NOT NULL,
	[confirm_type] [int] NOT NULL,
	[code] [varchar](8) NOT NULL,
	[seed] [int] NOT NULL,
	[attempts] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_confirm] PRIMARY KEY CLUSTERED 
(
	[session_id] ASC,
	[confirm_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [confirm_type] ON [testforum].[phpbb_confirm] 
(
	[confirm_type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_config_text]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_config_text](
	[config_name] [varchar](255) NOT NULL,
	[config_value] [text] NOT NULL,
 CONSTRAINT [PK_phpbb_config_text] PRIMARY KEY CLUSTERED 
(
	[config_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [testforum].[phpbb_config_text] ([config_name], [config_value]) VALUES (N'contact_admin_info', N'')
INSERT [testforum].[phpbb_config_text] ([config_name], [config_value]) VALUES (N'contact_admin_info_bitfield', N'')
INSERT [testforum].[phpbb_config_text] ([config_name], [config_value]) VALUES (N'contact_admin_info_flags', N'7')
INSERT [testforum].[phpbb_config_text] ([config_name], [config_value]) VALUES (N'contact_admin_info_uid', N'')
/****** Object:  Table [testforum].[phpbb_config]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_config](
	[config_name] [varchar](255) NOT NULL,
	[config_value] [varchar](255) NOT NULL,
	[is_dynamic] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_config] PRIMARY KEY CLUSTERED 
(
	[config_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [is_dynamic] ON [testforum].[phpbb_config] 
(
	[is_dynamic] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'active_sessions', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_attachments', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_autologin', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_avatar', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_avatar_gravatar', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_avatar_local', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_avatar_remote', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_avatar_remote_upload', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_avatar_upload', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_bbcode', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_birthdays', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_bookmarks', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_cdn', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_emailreuse', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_forum_notify', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_live_searches', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_mass_pm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_name_chars', N'USERNAME_CHARS_ANY', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_namechange', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_nocensors', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_password_reset', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_pm_attach', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_pm_report', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_post_flash', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_post_links', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_privmsg', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_quick_reply', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_sig', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_sig_bbcode', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_sig_flash', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_sig_img', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_sig_links', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_sig_pm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_sig_smilies', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_smilies', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'allow_topic_notify', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'assets_version', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'attachment_quota', N'52428800', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'auth_bbcode_pm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'auth_flash_pm', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'auth_img_pm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'auth_method', N'db', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'auth_smilies_pm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'avatar_filesize', N'6144', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'avatar_gallery_path', N'images/avatars/gallery', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'avatar_max_height', N'90', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'avatar_max_width', N'90', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'avatar_min_height', N'20', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'avatar_min_width', N'20', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'avatar_path', N'images/avatars/upload', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'avatar_salt', N'eca070c97ed9ee738aa1c9ac8cb2a561', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_contact', N'jessica@rivertown-inc.com', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_contact_name', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_disable', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_disable_msg', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_email', N'jessica@rivertown-inc.com', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_email_form', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_email_sig', N'Thanks, The Management', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_hide_emails', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_index_text', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_startdate', N'1560532966', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'board_timezone', N'UTC', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'browser_check', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'bump_interval', N'10', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'bump_type', N'd', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'cache_gc', N'7200', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'cache_last_gc', N'1562695841', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'captcha_gd', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'captcha_gd_3d_noise', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'captcha_gd_fonts', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'captcha_gd_foreground_noise', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'captcha_gd_wave', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'captcha_gd_x_grid', N'25', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'captcha_gd_y_grid', N'25', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'captcha_plugin', N'core.captcha.plugins.gd', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'check_attachment_content', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'check_dnsbl', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'chg_passforce', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'confirm_refresh', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'contact_admin_form_enable', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'cookie_domain', N'rivertown-lab.com', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'cookie_name', N'phpbb3_qpe1q', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'cookie_path', N'/', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'cookie_secure', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'coppa_enable', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'coppa_fax', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'coppa_mail', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'cron_lock', N'0', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'database_gc', N'604800', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'database_last_gc', N'1562615204', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'dbms_version', N'10.50.1600.1 RTM Web Edition (64-bit)', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'default_dateformat', N'D M d, Y g:i a', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'default_lang', N'en', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'default_style', N'16', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'delete_time', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'display_last_edited', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'display_last_subject', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'display_order', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'edit_time', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'email_check_mx', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'email_enable', N'1', 0)
GO
print 'Processed 100 total records'
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'email_function_name', N'mail', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'email_max_chunk_size', N'50', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'email_package_size', N'20', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'enable_confirm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'enable_mod_rewrite', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'enable_pm_icons', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'enable_post_confirm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'extension_force_unstable', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_enable', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_forum', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_http_auth', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_item_statistics', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_limit_post', N'15', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_limit_topic', N'10', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_overall', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_overall_forums', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_topic', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_topics_active', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'feed_topics_new', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'flood_interval', N'15', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'force_server_vars', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'form_token_lifetime', N'7200', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'form_token_mintime', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'form_token_sid_guests', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'forward_pm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'forwarded_for_check', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'full_folder_action', N'2', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_mysql_max_word_len', N'254', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_mysql_min_word_len', N'4', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_native_common_thres', N'5', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_native_load_upd', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_native_max_chars', N'14', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_native_min_chars', N'3', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_postgres_max_word_len', N'254', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_postgres_min_word_len', N'4', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_postgres_ts_name', N'simple', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_sphinx_indexer_mem_limit', N'512', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'fulltext_sphinx_stopwords', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'gzip_compress', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'hot_threshold', N'25', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'icons_path', N'images/icons', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'img_create_thumbnail', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'img_display_inlined', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'img_imagick', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'img_link_height', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'img_link_width', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'img_max_height', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'img_max_thumb_width', N'400', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'img_max_width', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'img_min_thumb_filesize', N'12000', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ip_check', N'3', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ip_login_limit_max', N'50', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ip_login_limit_time', N'21600', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ip_login_limit_use_forwarded', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'jab_enable', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'jab_host', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'jab_package_size', N'20', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'jab_password', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'jab_port', N'5222', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'jab_use_ssl', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'jab_username', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'last_queue_run', N'0', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ldap_base_dn', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ldap_email', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ldap_password', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ldap_port', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ldap_server', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ldap_uid', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ldap_user', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ldap_user_filter', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'legend_sort_groupname', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'limit_load', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'limit_search_load', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_anon_lastread', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_birthdays', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_cpf_memberlist', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_cpf_pm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_cpf_viewprofile', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_cpf_viewtopic', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_db_lastread', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_db_track', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_jquery_url', N'//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_jumpbox', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_moderators', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_notifications', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_online', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_online_guests', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_online_time', N'5', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_onlinetrack', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_search', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_tplcompile', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_unreads_search', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'load_user_activity', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_attachments', N'3', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_attachments_pm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_autologin_time', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_filesize', N'262144', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_filesize_pm', N'262144', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_login_attempts', N'3', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_name_chars', N'20', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_num_search_keywords', N'10', 0)
GO
print 'Processed 200 total records'
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_pass_chars', N'100', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_poll_options', N'10', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_post_chars', N'60000', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_post_font_size', N'200', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_post_img_height', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_post_img_width', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_post_smilies', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_post_urls', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_quote_depth', N'3', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_reg_attempts', N'5', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_sig_chars', N'255', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_sig_font_size', N'200', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_sig_img_height', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_sig_img_width', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_sig_smilies', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'max_sig_urls', N'5', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'mime_triggers', N'body|head|html|img|plaintext|a href|pre|script|table|title', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'min_name_chars', N'3', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'min_pass_chars', N'6', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'min_post_chars', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'min_search_author_chars', N'3', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'new_member_group_default', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'new_member_post_limit', N'3', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'newest_user_colour', N'', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'newest_user_id', N'50', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'newest_username', N'Michelle Roberts', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'num_files', N'1', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'num_posts', N'5', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'num_topics', N'4', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'num_users', N'4', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'override_user_style', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'pass_complex', N'PASS_TYPE_ANY', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'plupload_last_gc', N'0', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'plupload_salt', N'0565bff55e523b8972dbf5b4fa6be4bb', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'pm_edit_time', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'pm_max_boxes', N'4', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'pm_max_msgs', N'50', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'pm_max_recipients', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'posts_per_page', N'10', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'print_pm', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'questionnaire_unique_id', N'fed6dfe3457dd54f', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'queue_interval', N'60', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'rand_seed', N'809e1475bfcf6e016ea1549f446e449e', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'rand_seed_last_update', N'1562697319', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'ranks_path', N'images/ranks', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'read_notification_expire_days', N'30', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'read_notification_gc', N'86400', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'read_notification_last_gc', N'1562615139', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'record_online_date', N'1560887087', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'record_online_users', N'2', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'referer_validation', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'require_activation', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'script_path', N'/DiscussionBoard', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'search_anonymous_interval', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'search_block_size', N'250', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'search_gc', N'7200', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'search_indexing_state', N'', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'search_interval', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'search_last_gc', N'1562696097', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'search_store_results', N'1800', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'search_type', N'\phpbb\search\fulltext_native', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'secure_allow_deny', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'secure_allow_empty_referer', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'secure_downloads', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'server_name', N'rivertown-lab.com', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'server_port', N'80', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'server_protocol', N'http://', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'session_gc', N'3600', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'session_last_gc', N'1562695960', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'session_length', N'3600', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'site_desc', N'A short text to describe your forum', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'site_home_text', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'site_home_url', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'sitename', N'yourdomain.com', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'smilies_path', N'images/smilies', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'smilies_per_page', N'50', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'smtp_auth_method', N'PLAIN', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'smtp_delivery', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'smtp_host', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'smtp_password', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'smtp_port', N'25', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'smtp_username', N'', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'teampage_forums', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'teampage_memberships', N'1', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'topics_per_page', N'25', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'tpl_allow_php', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'upload_dir_size', N'37884', 1)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'upload_icons_path', N'images/upload_icons', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'upload_path', N'files', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'use_system_cron', N'0', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'version', N'3.1.12', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'warnings_expire_days', N'90', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'warnings_gc', N'14400', 0)
INSERT [testforum].[phpbb_config] ([config_name], [config_value], [is_dynamic]) VALUES (N'warnings_last_gc', N'1562695978', 1)
/****** Object:  Table [testforum].[phpbb_bots]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_bots](
	[bot_id] [int] IDENTITY(1,1) NOT NULL,
	[bot_active] [int] NOT NULL,
	[bot_name] [varchar](255) NOT NULL,
	[user_id] [int] NOT NULL,
	[bot_agent] [varchar](255) NOT NULL,
	[bot_ip] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_bots] PRIMARY KEY CLUSTERED 
(
	[bot_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [bot_active] ON [testforum].[phpbb_bots] 
(
	[bot_active] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_bots] ON
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (1, 1, N'AdsBot [Google]', 3, N'AdsBot-Google', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (2, 1, N'Alexa [Bot]', 4, N'ia_archiver', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (3, 1, N'Alta Vista [Bot]', 5, N'Scooter/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (4, 1, N'Ask Jeeves [Bot]', 6, N'Ask Jeeves', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (5, 1, N'Baidu [Spider]', 7, N'Baiduspider', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (6, 1, N'Bing [Bot]', 8, N'bingbot/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (7, 1, N'Exabot [Bot]', 9, N'Exabot', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (8, 1, N'FAST Enterprise [Crawler]', 10, N'FAST Enterprise Crawler', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (9, 1, N'FAST WebCrawler [Crawler]', 11, N'FAST-WebCrawler/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (10, 1, N'Francis [Bot]', 12, N'http://www.neomo.de/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (11, 1, N'Gigabot [Bot]', 13, N'Gigabot/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (12, 1, N'Google Adsense [Bot]', 14, N'Mediapartners-Google', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (13, 1, N'Google Desktop', 15, N'Google Desktop', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (14, 1, N'Google Feedfetcher', 16, N'Feedfetcher-Google', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (15, 1, N'Google [Bot]', 17, N'Googlebot', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (16, 1, N'Heise IT-Markt [Crawler]', 18, N'heise-IT-Markt-Crawler', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (17, 1, N'Heritrix [Crawler]', 19, N'heritrix/1.', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (18, 1, N'IBM Research [Bot]', 20, N'ibm.com/cs/crawler', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (19, 1, N'ICCrawler - ICjobs', 21, N'ICCrawler - ICjobs', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (20, 1, N'ichiro [Crawler]', 22, N'ichiro/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (21, 1, N'Majestic-12 [Bot]', 23, N'MJ12bot/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (22, 1, N'Metager [Bot]', 24, N'MetagerBot/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (23, 1, N'MSN NewsBlogs', 25, N'msnbot-NewsBlogs/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (24, 1, N'MSN [Bot]', 26, N'msnbot/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (25, 1, N'MSNbot Media', 27, N'msnbot-media/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (26, 1, N'Nutch [Bot]', 28, N'http://lucene.apache.org/nutch/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (27, 1, N'Online link [Validator]', 29, N'online link validator', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (28, 1, N'psbot [Picsearch]', 30, N'psbot/0', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (29, 1, N'Sensis [Crawler]', 31, N'Sensis Web Crawler', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (30, 1, N'SEO Crawler', 32, N'SEO search Crawler/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (31, 1, N'Seoma [Crawler]', 33, N'Seoma [SEO Crawler]', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (32, 1, N'SEOSearch [Crawler]', 34, N'SEOsearch/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (33, 1, N'Snappy [Bot]', 35, N'Snappy/1.1 ( http://www.urltrends.com/ )', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (34, 1, N'Steeler [Crawler]', 36, N'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (35, 1, N'Telekom [Bot]', 37, N'crawleradmin.t-info@telekom.de', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (36, 1, N'TurnitinBot [Bot]', 38, N'TurnitinBot/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (37, 1, N'Voyager [Bot]', 39, N'voyager/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (38, 1, N'W3 [Sitesearch]', 40, N'W3 SiteSearch Crawler', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (39, 1, N'W3C [Linkcheck]', 41, N'W3C-checklink/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (40, 1, N'W3C [Validator]', 42, N'W3C_Validator', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (41, 1, N'YaCy [Bot]', 43, N'yacybot', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (42, 1, N'Yahoo MMCrawler [Bot]', 44, N'Yahoo-MMCrawler/', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (43, 1, N'Yahoo Slurp [Bot]', 45, N'Yahoo! DE Slurp', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (44, 1, N'Yahoo [Bot]', 46, N'Yahoo! Slurp', N'')
INSERT [testforum].[phpbb_bots] ([bot_id], [bot_active], [bot_name], [user_id], [bot_agent], [bot_ip]) VALUES (45, 1, N'YahooSeeker [Bot]', 47, N'YahooSeeker/', N'')
SET IDENTITY_INSERT [testforum].[phpbb_bots] OFF
/****** Object:  Table [testforum].[phpbb_bookmarks]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_bookmarks](
	[topic_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_bookmarks] PRIMARY KEY CLUSTERED 
(
	[topic_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_bbcodes]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_bbcodes](
	[bbcode_id] [int] NOT NULL,
	[bbcode_tag] [varchar](16) NOT NULL,
	[bbcode_helpline] [varchar](255) NOT NULL,
	[display_on_posting] [int] NOT NULL,
	[bbcode_match] [varchar](4000) NOT NULL,
	[bbcode_tpl] [text] NOT NULL,
	[first_pass_match] [text] NOT NULL,
	[first_pass_replace] [text] NOT NULL,
	[second_pass_match] [text] NOT NULL,
	[second_pass_replace] [text] NOT NULL,
 CONSTRAINT [PK_phpbb_bbcodes] PRIMARY KEY CLUSTERED 
(
	[bbcode_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [display_on_post] ON [testforum].[phpbb_bbcodes] 
(
	[display_on_posting] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_banlist]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_banlist](
	[ban_id] [int] IDENTITY(1,1) NOT NULL,
	[ban_userid] [int] NOT NULL,
	[ban_ip] [varchar](40) NOT NULL,
	[ban_email] [varchar](100) NOT NULL,
	[ban_start] [int] NOT NULL,
	[ban_end] [int] NOT NULL,
	[ban_exclude] [int] NOT NULL,
	[ban_reason] [varchar](255) NOT NULL,
	[ban_give_reason] [varchar](255) NOT NULL,
 CONSTRAINT [PK_phpbb_banlist] PRIMARY KEY CLUSTERED 
(
	[ban_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ban_email] ON [testforum].[phpbb_banlist] 
(
	[ban_email] ASC,
	[ban_exclude] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ban_end] ON [testforum].[phpbb_banlist] 
(
	[ban_end] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ban_ip] ON [testforum].[phpbb_banlist] 
(
	[ban_ip] ASC,
	[ban_exclude] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ban_user] ON [testforum].[phpbb_banlist] 
(
	[ban_userid] ASC,
	[ban_exclude] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [testforum].[phpbb_attachments]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_attachments](
	[attach_id] [int] IDENTITY(1,1) NOT NULL,
	[post_msg_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[in_message] [int] NOT NULL,
	[poster_id] [int] NOT NULL,
	[is_orphan] [int] NOT NULL,
	[physical_filename] [varchar](255) NOT NULL,
	[real_filename] [varchar](255) NOT NULL,
	[download_count] [int] NOT NULL,
	[attach_comment] [varchar](4000) NOT NULL,
	[extension] [varchar](100) NOT NULL,
	[mimetype] [varchar](100) NOT NULL,
	[filesize] [int] NOT NULL,
	[filetime] [int] NOT NULL,
	[thumbnail] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_attachments] PRIMARY KEY CLUSTERED 
(
	[attach_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [filetime] ON [testforum].[phpbb_attachments] 
(
	[filetime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [is_orphan] ON [testforum].[phpbb_attachments] 
(
	[is_orphan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [post_msg_id] ON [testforum].[phpbb_attachments] 
(
	[post_msg_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [poster_id] ON [testforum].[phpbb_attachments] 
(
	[poster_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [topic_id] ON [testforum].[phpbb_attachments] 
(
	[topic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_attachments] ON
INSERT [testforum].[phpbb_attachments] ([attach_id], [post_msg_id], [topic_id], [in_message], [poster_id], [is_orphan], [physical_filename], [real_filename], [download_count], [attach_comment], [extension], [mimetype], [filesize], [filetime], [thumbnail]) VALUES (1, 7, 2, 0, 50, 0, N'50_11b744b09c5bf2c296363d5ecb406f45', N'staff.jpg', 0, N'', N'jpg', N'image/jpeg', 37884, 1562615839, 0)
SET IDENTITY_INSERT [testforum].[phpbb_attachments] OFF
/****** Object:  Table [testforum].[phpbb_acl_users]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_acl_users](
	[user_id] [int] NOT NULL,
	[forum_id] [int] NOT NULL,
	[auth_option_id] [int] NOT NULL,
	[auth_role_id] [int] NOT NULL,
	[auth_setting] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_acl_users] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [auth_option_id] ON [testforum].[phpbb_acl_users] 
(
	[auth_option_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [auth_role_id] ON [testforum].[phpbb_acl_users] 
(
	[auth_role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [user_id] ON [testforum].[phpbb_acl_users] 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_acl_users] ON
INSERT [testforum].[phpbb_acl_users] ([user_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (2, 0, 0, 5, 0, 1)
INSERT [testforum].[phpbb_acl_users] ([user_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (48, 4, 0, 14, 0, 2)
INSERT [testforum].[phpbb_acl_users] ([user_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (2, 4, 0, 14, 0, 3)
SET IDENTITY_INSERT [testforum].[phpbb_acl_users] OFF
/****** Object:  Table [testforum].[phpbb_acl_roles_data]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_acl_roles_data](
	[role_id] [int] NOT NULL,
	[auth_option_id] [int] NOT NULL,
	[auth_setting] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_acl_roles_data] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[auth_option_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ath_op_id] ON [testforum].[phpbb_acl_roles_data] 
(
	[auth_option_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 47, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 49, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 50, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 51, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 53, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 54, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 55, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 59, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 60, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 61, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 62, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 63, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 64, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 65, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 66, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 67, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 70, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 72, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 74, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 75, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 76, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 77, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 83, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 84, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 85, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 86, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 87, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (1, 88, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 47, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 50, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 51, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 60, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 61, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 62, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 63, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 70, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 75, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 83, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 86, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (2, 87, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 47, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 50, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 51, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 53, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 64, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 65, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 66, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 76, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 83, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 84, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 86, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (3, 87, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 47, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 48, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 49, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 50, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 51, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 52, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 53, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 54, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 55, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 56, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 57, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 58, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 59, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 60, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 61, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 62, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 63, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 64, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 65, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 66, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 67, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 68, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 69, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 70, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 71, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 72, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 73, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 74, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 75, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 76, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 77, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 78, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 79, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 80, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 81, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 82, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 83, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 84, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 85, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 86, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 87, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (4, 88, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 89, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 90, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 91, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 92, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 93, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 94, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 95, 1)
GO
print 'Processed 100 total records'
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 96, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 97, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 98, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 99, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 100, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 101, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 102, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 103, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 104, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 105, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 106, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 107, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 108, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 109, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 110, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 111, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 112, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 113, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 114, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 115, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 116, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 117, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 118, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 119, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 120, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 121, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (5, 122, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 89, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 90, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 91, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 92, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 93, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 96, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 97, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 98, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 99, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 101, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 102, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 103, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 104, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 105, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 106, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 107, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 108, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 111, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 112, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 113, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 114, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 115, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 116, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 117, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 118, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 119, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 120, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (6, 122, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 89, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 91, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 92, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 93, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 96, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 97, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 98, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 99, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 104, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 105, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 106, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 107, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 110, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 111, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 112, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 113, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 114, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 119, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 120, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (7, 122, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 89, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 91, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 92, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 93, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 96, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 98, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 99, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 101, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 102, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 114, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 119, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 120, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (8, 122, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 89, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 91, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 92, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 93, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 96, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 97, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 98, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 99, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 104, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 105, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 106, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 107, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 110, 1)
GO
print 'Processed 200 total records'
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 111, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 112, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 113, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 114, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 119, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 120, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (9, 122, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 32, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 33, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 34, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 35, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 36, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 37, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 38, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 39, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 40, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 41, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 42, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 43, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 44, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 45, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (10, 46, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 32, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 33, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 35, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 36, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 37, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 38, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 39, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 40, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 41, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 42, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 43, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 45, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (11, 46, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (12, 32, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (12, 35, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (12, 36, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (12, 37, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (12, 41, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (12, 43, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (12, 45, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (13, 32, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (13, 33, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (13, 36, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 1, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 2, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 3, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 4, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 5, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 6, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 7, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 8, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 9, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 10, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 11, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 12, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 13, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 14, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 15, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 16, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 17, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 18, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 19, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 20, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 21, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 22, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 23, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 24, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 25, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 26, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 27, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 28, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 29, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 30, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (14, 31, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 1, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 3, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 4, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 5, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 6, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 7, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 8, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 9, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 11, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 13, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 14, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 15, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 17, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 18, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 19, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 20, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 21, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 22, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 23, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 24, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 25, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 27, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 29, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 30, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (15, 31, 1)
GO
print 'Processed 300 total records'
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (16, 1, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (17, 1, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (17, 7, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (17, 14, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (17, 19, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (17, 20, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (17, 23, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (17, 27, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 1, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 4, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 7, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 8, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 9, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 13, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 14, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 15, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 17, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 18, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 19, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 20, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 21, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 22, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 23, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 24, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 25, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 27, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 29, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (18, 31, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (19, 1, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (19, 7, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (19, 14, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (19, 19, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (19, 20, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 1, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 3, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 4, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 7, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 8, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 9, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 13, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 14, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 15, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 17, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 18, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 19, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 20, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 21, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 22, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 23, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 24, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 25, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 27, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 29, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (20, 31, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 1, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 3, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 4, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 5, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 6, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 7, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 8, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 9, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 11, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 13, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 14, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 15, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 16, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 17, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 18, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 19, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 20, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 21, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 22, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 23, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 24, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 25, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 27, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 29, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 30, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (21, 31, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 1, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 4, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 7, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 8, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 9, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 13, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 14, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 15, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 16, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 17, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 18, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 19, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 20, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 21, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 22, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 23, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 24, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 25, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 27, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 29, 1)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (22, 31, 1)
GO
print 'Processed 400 total records'
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (23, 97, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (23, 101, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (23, 102, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (23, 119, 0)
INSERT [testforum].[phpbb_acl_roles_data] ([role_id], [auth_option_id], [auth_setting]) VALUES (24, 15, 0)
/****** Object:  Table [testforum].[phpbb_acl_roles]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_acl_roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](255) NOT NULL,
	[role_description] [varchar](4000) NOT NULL,
	[role_type] [varchar](10) NOT NULL,
	[role_order] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_acl_roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [role_order] ON [testforum].[phpbb_acl_roles] 
(
	[role_order] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [role_type] ON [testforum].[phpbb_acl_roles] 
(
	[role_type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_acl_roles] ON
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (1, N'ROLE_ADMIN_STANDARD', N'ROLE_DESCRIPTION_ADMIN_STANDARD', N'a_', 1)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (2, N'ROLE_ADMIN_FORUM', N'ROLE_DESCRIPTION_ADMIN_FORUM', N'a_', 3)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (3, N'ROLE_ADMIN_USERGROUP', N'ROLE_DESCRIPTION_ADMIN_USERGROUP', N'a_', 4)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (4, N'ROLE_ADMIN_FULL', N'ROLE_DESCRIPTION_ADMIN_FULL', N'a_', 2)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (5, N'ROLE_USER_FULL', N'ROLE_DESCRIPTION_USER_FULL', N'u_', 3)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (6, N'ROLE_USER_STANDARD', N'ROLE_DESCRIPTION_USER_STANDARD', N'u_', 1)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (7, N'ROLE_USER_LIMITED', N'ROLE_DESCRIPTION_USER_LIMITED', N'u_', 2)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (8, N'ROLE_USER_NOPM', N'ROLE_DESCRIPTION_USER_NOPM', N'u_', 4)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (9, N'ROLE_USER_NOAVATAR', N'ROLE_DESCRIPTION_USER_NOAVATAR', N'u_', 5)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (10, N'ROLE_MOD_FULL', N'ROLE_DESCRIPTION_MOD_FULL', N'm_', 3)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (11, N'ROLE_MOD_STANDARD', N'ROLE_DESCRIPTION_MOD_STANDARD', N'm_', 1)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (12, N'ROLE_MOD_SIMPLE', N'ROLE_DESCRIPTION_MOD_SIMPLE', N'm_', 2)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (13, N'ROLE_MOD_QUEUE', N'ROLE_DESCRIPTION_MOD_QUEUE', N'm_', 4)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (14, N'ROLE_FORUM_FULL', N'ROLE_DESCRIPTION_FORUM_FULL', N'f_', 7)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (15, N'ROLE_FORUM_STANDARD', N'ROLE_DESCRIPTION_FORUM_STANDARD', N'f_', 5)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (16, N'ROLE_FORUM_NOACCESS', N'ROLE_DESCRIPTION_FORUM_NOACCESS', N'f_', 1)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (17, N'ROLE_FORUM_READONLY', N'ROLE_DESCRIPTION_FORUM_READONLY', N'f_', 2)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (18, N'ROLE_FORUM_LIMITED', N'ROLE_DESCRIPTION_FORUM_LIMITED', N'f_', 3)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (19, N'ROLE_FORUM_BOT', N'ROLE_DESCRIPTION_FORUM_BOT', N'f_', 9)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (20, N'ROLE_FORUM_ONQUEUE', N'ROLE_DESCRIPTION_FORUM_ONQUEUE', N'f_', 8)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (21, N'ROLE_FORUM_POLLS', N'ROLE_DESCRIPTION_FORUM_POLLS', N'f_', 6)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (22, N'ROLE_FORUM_LIMITED_POLLS', N'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', N'f_', 4)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (23, N'ROLE_USER_NEW_MEMBER', N'ROLE_DESCRIPTION_USER_NEW_MEMBER', N'u_', 6)
INSERT [testforum].[phpbb_acl_roles] ([role_id], [role_name], [role_description], [role_type], [role_order]) VALUES (24, N'ROLE_FORUM_NEW_MEMBER', N'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', N'f_', 10)
SET IDENTITY_INSERT [testforum].[phpbb_acl_roles] OFF
/****** Object:  Table [testforum].[phpbb_acl_options]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [testforum].[phpbb_acl_options](
	[auth_option_id] [int] IDENTITY(1,1) NOT NULL,
	[auth_option] [varchar](50) NOT NULL,
	[is_global] [int] NOT NULL,
	[is_local] [int] NOT NULL,
	[founder_only] [int] NOT NULL,
 CONSTRAINT [PK_phpbb_acl_options] PRIMARY KEY CLUSTERED 
(
	[auth_option_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [auth_option] ON [testforum].[phpbb_acl_options] 
(
	[auth_option] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_acl_options] ON
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (1, N'f_', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (2, N'f_announce', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (3, N'f_attach', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (4, N'f_bbcode', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (5, N'f_bump', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (6, N'f_delete', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (7, N'f_download', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (8, N'f_edit', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (9, N'f_email', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (10, N'f_flash', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (11, N'f_icons', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (12, N'f_ignoreflood', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (13, N'f_img', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (14, N'f_list', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (15, N'f_noapprove', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (16, N'f_poll', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (17, N'f_post', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (18, N'f_postcount', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (19, N'f_print', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (20, N'f_read', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (21, N'f_reply', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (22, N'f_report', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (23, N'f_search', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (24, N'f_sigs', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (25, N'f_smilies', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (26, N'f_sticky', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (27, N'f_subscribe', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (28, N'f_user_lock', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (29, N'f_vote', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (30, N'f_votechg', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (31, N'f_softdelete', 0, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (32, N'm_', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (33, N'm_approve', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (34, N'm_chgposter', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (35, N'm_delete', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (36, N'm_edit', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (37, N'm_info', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (38, N'm_lock', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (39, N'm_merge', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (40, N'm_move', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (41, N'm_report', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (42, N'm_split', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (43, N'm_softdelete', 1, 1, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (44, N'm_ban', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (45, N'm_pm_report', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (46, N'm_warn', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (47, N'a_', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (48, N'a_aauth', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (49, N'a_attach', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (50, N'a_authgroups', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (51, N'a_authusers', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (52, N'a_backup', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (53, N'a_ban', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (54, N'a_bbcode', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (55, N'a_board', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (56, N'a_bots', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (57, N'a_clearlogs', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (58, N'a_email', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (59, N'a_extensions', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (60, N'a_fauth', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (61, N'a_forum', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (62, N'a_forumadd', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (63, N'a_forumdel', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (64, N'a_group', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (65, N'a_groupadd', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (66, N'a_groupdel', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (67, N'a_icons', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (68, N'a_jabber', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (69, N'a_language', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (70, N'a_mauth', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (71, N'a_modules', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (72, N'a_names', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (73, N'a_phpinfo', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (74, N'a_profile', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (75, N'a_prune', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (76, N'a_ranks', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (77, N'a_reasons', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (78, N'a_roles', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (79, N'a_search', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (80, N'a_server', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (81, N'a_styles', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (82, N'a_switchperm', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (83, N'a_uauth', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (84, N'a_user', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (85, N'a_userdel', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (86, N'a_viewauth', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (87, N'a_viewlogs', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (88, N'a_words', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (89, N'u_', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (90, N'u_attach', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (91, N'u_chgavatar', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (92, N'u_chgcensors', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (93, N'u_chgemail', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (94, N'u_chggrp', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (95, N'u_chgname', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (96, N'u_chgpasswd', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (97, N'u_chgprofileinfo', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (98, N'u_download', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (99, N'u_hideonline', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (100, N'u_ignoreflood', 1, 0, 0)
GO
print 'Processed 100 total records'
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (101, N'u_masspm', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (102, N'u_masspm_group', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (103, N'u_pm_attach', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (104, N'u_pm_bbcode', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (105, N'u_pm_delete', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (106, N'u_pm_download', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (107, N'u_pm_edit', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (108, N'u_pm_emailpm', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (109, N'u_pm_flash', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (110, N'u_pm_forward', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (111, N'u_pm_img', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (112, N'u_pm_printpm', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (113, N'u_pm_smilies', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (114, N'u_readpm', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (115, N'u_savedrafts', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (116, N'u_search', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (117, N'u_sendemail', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (118, N'u_sendim', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (119, N'u_sendpm', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (120, N'u_sig', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (121, N'u_viewonline', 1, 0, 0)
INSERT [testforum].[phpbb_acl_options] ([auth_option_id], [auth_option], [is_global], [is_local], [founder_only]) VALUES (122, N'u_viewprofile', 1, 0, 0)
SET IDENTITY_INSERT [testforum].[phpbb_acl_options] OFF
/****** Object:  Table [testforum].[phpbb_acl_groups]    Script Date: 07/09/2019 17:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [testforum].[phpbb_acl_groups](
	[group_id] [int] NOT NULL,
	[forum_id] [int] NOT NULL,
	[auth_option_id] [int] NOT NULL,
	[auth_role_id] [int] NOT NULL,
	[auth_setting] [int] NOT NULL,
	[mssqlindex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_phpbb_acl_groups] PRIMARY KEY CLUSTERED 
(
	[mssqlindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [auth_opt_id] ON [testforum].[phpbb_acl_groups] 
(
	[auth_option_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [auth_role_id] ON [testforum].[phpbb_acl_groups] 
(
	[auth_role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [group_id] ON [testforum].[phpbb_acl_groups] 
(
	[group_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [testforum].[phpbb_acl_groups] ON
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (1, 0, 89, 0, 1, 1)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (1, 0, 98, 0, 1, 2)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (1, 0, 116, 0, 1, 3)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (5, 0, 0, 5, 0, 4)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (5, 0, 0, 1, 0, 5)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (2, 0, 0, 6, 0, 6)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (3, 0, 0, 6, 0, 7)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (4, 0, 0, 5, 0, 8)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (4, 0, 0, 10, 0, 9)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (1, 1, 0, 17, 0, 10)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (2, 1, 0, 17, 0, 11)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (3, 1, 0, 17, 0, 12)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (6, 1, 0, 17, 0, 13)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (1, 2, 0, 17, 0, 14)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (2, 2, 0, 15, 0, 15)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (3, 2, 0, 15, 0, 16)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (4, 2, 0, 21, 0, 17)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (5, 2, 0, 14, 0, 18)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (5, 2, 0, 10, 0, 19)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (6, 2, 0, 19, 0, 20)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (7, 0, 0, 23, 0, 21)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (7, 2, 0, 24, 0, 22)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (8, 0, 0, 6, 0, 23)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (8, 4, 0, 14, 0, 24)
INSERT [testforum].[phpbb_acl_groups] ([group_id], [forum_id], [auth_option_id], [auth_role_id], [auth_setting], [mssqlindex]) VALUES (9, 5, 0, 14, 0, 25)
SET IDENTITY_INSERT [testforum].[phpbb_acl_groups] OFF
/****** Object:  Default [DF__phpbb_acl__group__5A1A5A11]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_groups] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__phpbb_acl__forum__5B0E7E4A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_groups] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_acl__auth___5C02A283]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_groups] ADD  DEFAULT ((0)) FOR [auth_option_id]
GO
/****** Object:  Default [DF__phpbb_acl__auth___5CF6C6BC]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_groups] ADD  DEFAULT ((0)) FOR [auth_role_id]
GO
/****** Object:  Default [DF__phpbb_acl__auth___5DEAEAF5]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_groups] ADD  DEFAULT ((0)) FOR [auth_setting]
GO
/****** Object:  Default [DF__phpbb_acl__auth___60C757A0]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_options] ADD  DEFAULT ('') FOR [auth_option]
GO
/****** Object:  Default [DF__phpbb_acl__is_gl__61BB7BD9]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_options] ADD  DEFAULT ((0)) FOR [is_global]
GO
/****** Object:  Default [DF__phpbb_acl__is_lo__62AFA012]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_options] ADD  DEFAULT ((0)) FOR [is_local]
GO
/****** Object:  Default [DF__phpbb_acl__found__63A3C44B]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_options] ADD  DEFAULT ((0)) FOR [founder_only]
GO
/****** Object:  Default [DF__phpbb_acl__role___668030F6]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_roles] ADD  DEFAULT ('') FOR [role_name]
GO
/****** Object:  Default [DF__phpbb_acl__role___6774552F]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_roles] ADD  DEFAULT ('') FOR [role_description]
GO
/****** Object:  Default [DF__phpbb_acl__role___68687968]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_roles] ADD  DEFAULT ('') FOR [role_type]
GO
/****** Object:  Default [DF__phpbb_acl__role___695C9DA1]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_roles] ADD  DEFAULT ((0)) FOR [role_order]
GO
/****** Object:  Default [DF__phpbb_acl__role___6C390A4C]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_roles_data] ADD  DEFAULT ((0)) FOR [role_id]
GO
/****** Object:  Default [DF__phpbb_acl__auth___6D2D2E85]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_roles_data] ADD  DEFAULT ((0)) FOR [auth_option_id]
GO
/****** Object:  Default [DF__phpbb_acl__auth___6E2152BE]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_roles_data] ADD  DEFAULT ((0)) FOR [auth_setting]
GO
/****** Object:  Default [DF__phpbb_acl__user___70FDBF69]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_users] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_acl__forum__71F1E3A2]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_users] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_acl__auth___72E607DB]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_users] ADD  DEFAULT ((0)) FOR [auth_option_id]
GO
/****** Object:  Default [DF__phpbb_acl__auth___73DA2C14]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_users] ADD  DEFAULT ((0)) FOR [auth_role_id]
GO
/****** Object:  Default [DF__phpbb_acl__auth___74CE504D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_acl_users] ADD  DEFAULT ((0)) FOR [auth_setting]
GO
/****** Object:  Default [DF__phpbb_att__post___77AABCF8]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ((0)) FOR [post_msg_id]
GO
/****** Object:  Default [DF__phpbb_att__topic__789EE131]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_att__in_me__7993056A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ((0)) FOR [in_message]
GO
/****** Object:  Default [DF__phpbb_att__poste__7A8729A3]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ((0)) FOR [poster_id]
GO
/****** Object:  Default [DF__phpbb_att__is_or__7B7B4DDC]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ((1)) FOR [is_orphan]
GO
/****** Object:  Default [DF__phpbb_att__physi__7C6F7215]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ('') FOR [physical_filename]
GO
/****** Object:  Default [DF__phpbb_att__real___7D63964E]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ('') FOR [real_filename]
GO
/****** Object:  Default [DF__phpbb_att__downl__7E57BA87]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ((0)) FOR [download_count]
GO
/****** Object:  Default [DF__phpbb_att__attac__7F4BDEC0]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ('') FOR [attach_comment]
GO
/****** Object:  Default [DF__phpbb_att__exten__004002F9]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ('') FOR [extension]
GO
/****** Object:  Default [DF__phpbb_att__mimet__01342732]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ('') FOR [mimetype]
GO
/****** Object:  Default [DF__phpbb_att__files__02284B6B]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ((0)) FOR [filesize]
GO
/****** Object:  Default [DF__phpbb_att__filet__031C6FA4]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ((0)) FOR [filetime]
GO
/****** Object:  Default [DF__phpbb_att__thumb__041093DD]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_attachments] ADD  DEFAULT ((0)) FOR [thumbnail]
GO
/****** Object:  Default [DF__phpbb_ban__ban_u__06ED0088]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_banlist] ADD  DEFAULT ((0)) FOR [ban_userid]
GO
/****** Object:  Default [DF__phpbb_ban__ban_i__07E124C1]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_banlist] ADD  DEFAULT ('') FOR [ban_ip]
GO
/****** Object:  Default [DF__phpbb_ban__ban_e__08D548FA]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_banlist] ADD  DEFAULT ('') FOR [ban_email]
GO
/****** Object:  Default [DF__phpbb_ban__ban_s__09C96D33]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_banlist] ADD  DEFAULT ((0)) FOR [ban_start]
GO
/****** Object:  Default [DF__phpbb_ban__ban_e__0ABD916C]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_banlist] ADD  DEFAULT ((0)) FOR [ban_end]
GO
/****** Object:  Default [DF__phpbb_ban__ban_e__0BB1B5A5]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_banlist] ADD  DEFAULT ((0)) FOR [ban_exclude]
GO
/****** Object:  Default [DF__phpbb_ban__ban_r__0CA5D9DE]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_banlist] ADD  DEFAULT ('') FOR [ban_reason]
GO
/****** Object:  Default [DF__phpbb_ban__ban_g__0D99FE17]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_banlist] ADD  DEFAULT ('') FOR [ban_give_reason]
GO
/****** Object:  Default [DF__phpbb_bbc__bbcod__10766AC2]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ((0)) FOR [bbcode_id]
GO
/****** Object:  Default [DF__phpbb_bbc__bbcod__116A8EFB]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ('') FOR [bbcode_tag]
GO
/****** Object:  Default [DF__phpbb_bbc__bbcod__125EB334]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ('') FOR [bbcode_helpline]
GO
/****** Object:  Default [DF__phpbb_bbc__displ__1352D76D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ((0)) FOR [display_on_posting]
GO
/****** Object:  Default [DF__phpbb_bbc__bbcod__1446FBA6]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ('') FOR [bbcode_match]
GO
/****** Object:  Default [DF__phpbb_bbc__bbcod__153B1FDF]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ('') FOR [bbcode_tpl]
GO
/****** Object:  Default [DF__phpbb_bbc__first__162F4418]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ('') FOR [first_pass_match]
GO
/****** Object:  Default [DF__phpbb_bbc__first__17236851]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ('') FOR [first_pass_replace]
GO
/****** Object:  Default [DF__phpbb_bbc__secon__18178C8A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ('') FOR [second_pass_match]
GO
/****** Object:  Default [DF__phpbb_bbc__secon__190BB0C3]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bbcodes] ADD  DEFAULT ('') FOR [second_pass_replace]
GO
/****** Object:  Default [DF__phpbb_boo__topic__1BE81D6E]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bookmarks] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_boo__user___1CDC41A7]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bookmarks] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_bot__bot_a__1FB8AE52]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bots] ADD  DEFAULT ((1)) FOR [bot_active]
GO
/****** Object:  Default [DF__phpbb_bot__bot_n__20ACD28B]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bots] ADD  DEFAULT ('') FOR [bot_name]
GO
/****** Object:  Default [DF__phpbb_bot__user___21A0F6C4]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bots] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_bot__bot_a__22951AFD]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bots] ADD  DEFAULT ('') FOR [bot_agent]
GO
/****** Object:  Default [DF__phpbb_bot__bot_i__23893F36]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_bots] ADD  DEFAULT ('') FOR [bot_ip]
GO
/****** Object:  Default [DF__phpbb_con__confi__2665ABE1]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_config] ADD  DEFAULT ('') FOR [config_name]
GO
/****** Object:  Default [DF__phpbb_con__confi__2759D01A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_config] ADD  DEFAULT ('') FOR [config_value]
GO
/****** Object:  Default [DF__phpbb_con__is_dy__284DF453]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_config] ADD  DEFAULT ((0)) FOR [is_dynamic]
GO
/****** Object:  Default [DF__phpbb_con__confi__2B2A60FE]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_config_text] ADD  DEFAULT ('') FOR [config_name]
GO
/****** Object:  Default [DF__phpbb_con__confi__2C1E8537]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_config_text] ADD  DEFAULT ('') FOR [config_value]
GO
/****** Object:  Default [DF__phpbb_con__confi__2EFAF1E2]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_confirm] ADD  DEFAULT ('') FOR [confirm_id]
GO
/****** Object:  Default [DF__phpbb_con__sessi__2FEF161B]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_confirm] ADD  DEFAULT ('') FOR [session_id]
GO
/****** Object:  Default [DF__phpbb_con__confi__30E33A54]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_confirm] ADD  DEFAULT ((0)) FOR [confirm_type]
GO
/****** Object:  Default [DF__phpbb_conf__code__31D75E8D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_confirm] ADD  DEFAULT ('') FOR [code]
GO
/****** Object:  Default [DF__phpbb_conf__seed__32CB82C6]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_confirm] ADD  DEFAULT ((0)) FOR [seed]
GO
/****** Object:  Default [DF__phpbb_con__attem__33BFA6FF]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_confirm] ADD  DEFAULT ((0)) FOR [attempts]
GO
/****** Object:  Default [DF__phpbb_dis__disal__369C13AA]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_disallow] ADD  DEFAULT ('') FOR [disallow_username]
GO
/****** Object:  Default [DF__phpbb_dra__user___39788055]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_drafts] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_dra__topic__3A6CA48E]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_drafts] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_dra__forum__3B60C8C7]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_drafts] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_dra__save___3C54ED00]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_drafts] ADD  DEFAULT ((0)) FOR [save_time]
GO
/****** Object:  Default [DF__phpbb_dra__draft__3D491139]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_drafts] ADD  DEFAULT ('') FOR [draft_subject]
GO
/****** Object:  Default [DF__phpbb_dra__draft__3E3D3572]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_drafts] ADD  DEFAULT ('') FOR [draft_message]
GO
/****** Object:  Default [DF__phpbb_ext__ext_n__4119A21D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_ext] ADD  DEFAULT ('') FOR [ext_name]
GO
/****** Object:  Default [DF__phpbb_ext__ext_a__420DC656]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_ext] ADD  DEFAULT ((0)) FOR [ext_active]
GO
/****** Object:  Default [DF__phpbb_ext__ext_s__4301EA8F]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_ext] ADD  DEFAULT ('') FOR [ext_state]
GO
/****** Object:  Default [DF__phpbb_ext__group__45DE573A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extension_groups] ADD  DEFAULT ('') FOR [group_name]
GO
/****** Object:  Default [DF__phpbb_ext__cat_i__46D27B73]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extension_groups] ADD  DEFAULT ((0)) FOR [cat_id]
GO
/****** Object:  Default [DF__phpbb_ext__allow__47C69FAC]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extension_groups] ADD  DEFAULT ((0)) FOR [allow_group]
GO
/****** Object:  Default [DF__phpbb_ext__downl__48BAC3E5]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extension_groups] ADD  DEFAULT ((1)) FOR [download_mode]
GO
/****** Object:  Default [DF__phpbb_ext__uploa__49AEE81E]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extension_groups] ADD  DEFAULT ('') FOR [upload_icon]
GO
/****** Object:  Default [DF__phpbb_ext__max_f__4AA30C57]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extension_groups] ADD  DEFAULT ((0)) FOR [max_filesize]
GO
/****** Object:  Default [DF__phpbb_ext__allow__4B973090]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extension_groups] ADD  DEFAULT ('') FOR [allowed_forums]
GO
/****** Object:  Default [DF__phpbb_ext__allow__4C8B54C9]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extension_groups] ADD  DEFAULT ((0)) FOR [allow_in_pm]
GO
/****** Object:  Default [DF__phpbb_ext__group__4F67C174]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extensions] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__phpbb_ext__exten__505BE5AD]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_extensions] ADD  DEFAULT ('') FOR [extension]
GO
/****** Object:  Default [DF__phpbb_for__paren__53385258]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__phpbb_for__left___542C7691]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [left_id]
GO
/****** Object:  Default [DF__phpbb_for__right__55209ACA]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [right_id]
GO
/****** Object:  Default [DF__phpbb_for__forum__5614BF03]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_parents]
GO
/****** Object:  Default [DF__phpbb_for__forum__5708E33C]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_name]
GO
/****** Object:  Default [DF__phpbb_for__forum__57FD0775]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_desc]
GO
/****** Object:  Default [DF__phpbb_for__forum__58F12BAE]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_desc_bitfield]
GO
/****** Object:  Default [DF__phpbb_for__forum__59E54FE7]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((7)) FOR [forum_desc_options]
GO
/****** Object:  Default [DF__phpbb_for__forum__5AD97420]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_desc_uid]
GO
/****** Object:  Default [DF__phpbb_for__forum__5BCD9859]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_link]
GO
/****** Object:  Default [DF__phpbb_for__forum__5CC1BC92]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_password]
GO
/****** Object:  Default [DF__phpbb_for__forum__5DB5E0CB]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_style]
GO
/****** Object:  Default [DF__phpbb_for__forum__5EAA0504]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_image]
GO
/****** Object:  Default [DF__phpbb_for__forum__5F9E293D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_rules]
GO
/****** Object:  Default [DF__phpbb_for__forum__60924D76]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_rules_link]
GO
/****** Object:  Default [DF__phpbb_for__forum__618671AF]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_rules_bitfield]
GO
/****** Object:  Default [DF__phpbb_for__forum__627A95E8]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((7)) FOR [forum_rules_options]
GO
/****** Object:  Default [DF__phpbb_for__forum__636EBA21]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_rules_uid]
GO
/****** Object:  Default [DF__phpbb_for__forum__6462DE5A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_topics_per_page]
GO
/****** Object:  Default [DF__phpbb_for__forum__65570293]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_type]
GO
/****** Object:  Default [DF__phpbb_for__forum__664B26CC]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_status]
GO
/****** Object:  Default [DF__phpbb_for__forum__673F4B05]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_last_post_id]
GO
/****** Object:  Default [DF__phpbb_for__forum__68336F3E]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_last_poster_id]
GO
/****** Object:  Default [DF__phpbb_for__forum__69279377]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_last_post_subject]
GO
/****** Object:  Default [DF__phpbb_for__forum__6A1BB7B0]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_last_post_time]
GO
/****** Object:  Default [DF__phpbb_for__forum__6B0FDBE9]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_last_poster_name]
GO
/****** Object:  Default [DF__phpbb_for__forum__6C040022]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ('') FOR [forum_last_poster_colour]
GO
/****** Object:  Default [DF__phpbb_for__forum__6CF8245B]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((32)) FOR [forum_flags]
GO
/****** Object:  Default [DF__phpbb_for__displ__6DEC4894]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((1)) FOR [display_on_index]
GO
/****** Object:  Default [DF__phpbb_for__enabl__6EE06CCD]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((1)) FOR [enable_indexing]
GO
/****** Object:  Default [DF__phpbb_for__enabl__6FD49106]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((1)) FOR [enable_icons]
GO
/****** Object:  Default [DF__phpbb_for__enabl__70C8B53F]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [enable_prune]
GO
/****** Object:  Default [DF__phpbb_for__prune__71BCD978]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [prune_next]
GO
/****** Object:  Default [DF__phpbb_for__prune__72B0FDB1]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [prune_days]
GO
/****** Object:  Default [DF__phpbb_for__prune__73A521EA]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [prune_viewed]
GO
/****** Object:  Default [DF__phpbb_for__prune__74994623]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [prune_freq]
GO
/****** Object:  Default [DF__phpbb_for__displ__758D6A5C]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((1)) FOR [display_subforum_list]
GO
/****** Object:  Default [DF__phpbb_for__forum__76818E95]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_options]
GO
/****** Object:  Default [DF__phpbb_for__enabl__7775B2CE]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [enable_shadow_prune]
GO
/****** Object:  Default [DF__phpbb_for__prune__7869D707]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((7)) FOR [prune_shadow_days]
GO
/****** Object:  Default [DF__phpbb_for__prune__795DFB40]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((1)) FOR [prune_shadow_freq]
GO
/****** Object:  Default [DF__phpbb_for__prune__7A521F79]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [prune_shadow_next]
GO
/****** Object:  Default [DF__phpbb_for__forum__7B4643B2]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_posts_approved]
GO
/****** Object:  Default [DF__phpbb_for__forum__7C3A67EB]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_posts_unapproved]
GO
/****** Object:  Default [DF__phpbb_for__forum__7D2E8C24]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_posts_softdeleted]
GO
/****** Object:  Default [DF__phpbb_for__forum__7E22B05D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_topics_approved]
GO
/****** Object:  Default [DF__phpbb_for__forum__7F16D496]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_topics_unapproved]
GO
/****** Object:  Default [DF__phpbb_for__forum__000AF8CF]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums] ADD  DEFAULT ((0)) FOR [forum_topics_softdeleted]
GO
/****** Object:  Default [DF__phpbb_for__forum__02E7657A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums_access] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_for__user___03DB89B3]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums_access] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_for__sessi__04CFADEC]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums_access] ADD  DEFAULT ('') FOR [session_id]
GO
/****** Object:  Default [DF__phpbb_for__user___07AC1A97]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums_track] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_for__forum__08A03ED0]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums_track] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_for__mark___09946309]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums_track] ADD  DEFAULT ((0)) FOR [mark_time]
GO
/****** Object:  Default [DF__phpbb_for__forum__0C70CFB4]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums_watch] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_for__user___0D64F3ED]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums_watch] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_for__notif__0E591826]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_forums_watch] ADD  DEFAULT ((0)) FOR [notify_status]
GO
/****** Object:  Default [DF__phpbb_gro__group__113584D1]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((1)) FOR [group_type]
GO
/****** Object:  Default [DF__phpbb_gro__group__1229A90A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_founder_manage]
GO
/****** Object:  Default [DF__phpbb_gro__group__131DCD43]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_skip_auth]
GO
/****** Object:  Default [DF__phpbb_gro__group__1411F17C]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ('') FOR [group_name]
GO
/****** Object:  Default [DF__phpbb_gro__group__150615B5]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ('') FOR [group_desc]
GO
/****** Object:  Default [DF__phpbb_gro__group__15FA39EE]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ('') FOR [group_desc_bitfield]
GO
/****** Object:  Default [DF__phpbb_gro__group__16EE5E27]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((7)) FOR [group_desc_options]
GO
/****** Object:  Default [DF__phpbb_gro__group__17E28260]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ('') FOR [group_desc_uid]
GO
/****** Object:  Default [DF__phpbb_gro__group__18D6A699]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_display]
GO
/****** Object:  Default [DF__phpbb_gro__group__19CACAD2]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ('') FOR [group_avatar]
GO
/****** Object:  Default [DF__phpbb_gro__group__1ABEEF0B]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ('') FOR [group_avatar_type]
GO
/****** Object:  Default [DF__phpbb_gro__group__1BB31344]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_avatar_width]
GO
/****** Object:  Default [DF__phpbb_gro__group__1CA7377D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_avatar_height]
GO
/****** Object:  Default [DF__phpbb_gro__group__1D9B5BB6]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_rank]
GO
/****** Object:  Default [DF__phpbb_gro__group__1E8F7FEF]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ('') FOR [group_colour]
GO
/****** Object:  Default [DF__phpbb_gro__group__1F83A428]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_sig_chars]
GO
/****** Object:  Default [DF__phpbb_gro__group__2077C861]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_receive_pm]
GO
/****** Object:  Default [DF__phpbb_gro__group__216BEC9A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_message_limit]
GO
/****** Object:  Default [DF__phpbb_gro__group__226010D3]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_legend]
GO
/****** Object:  Default [DF__phpbb_gro__group__2354350C]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_groups] ADD  DEFAULT ((0)) FOR [group_max_recipients]
GO
/****** Object:  Default [DF__phpbb_ico__icons__2630A1B7]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_icons] ADD  DEFAULT ('') FOR [icons_url]
GO
/****** Object:  Default [DF__phpbb_ico__icons__2724C5F0]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_icons] ADD  DEFAULT ((0)) FOR [icons_width]
GO
/****** Object:  Default [DF__phpbb_ico__icons__2818EA29]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_icons] ADD  DEFAULT ((0)) FOR [icons_height]
GO
/****** Object:  Default [DF__phpbb_ico__icons__290D0E62]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_icons] ADD  DEFAULT ((0)) FOR [icons_order]
GO
/****** Object:  Default [DF__phpbb_ico__displ__2A01329B]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_icons] ADD  DEFAULT ((1)) FOR [display_on_posting]
GO
/****** Object:  Default [DF__phpbb_lan__lang___2CDD9F46]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_lang] ADD  DEFAULT ('') FOR [lang_iso]
GO
/****** Object:  Default [DF__phpbb_lan__lang___2DD1C37F]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_lang] ADD  DEFAULT ('') FOR [lang_dir]
GO
/****** Object:  Default [DF__phpbb_lan__lang___2EC5E7B8]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_lang] ADD  DEFAULT ('') FOR [lang_english_name]
GO
/****** Object:  Default [DF__phpbb_lan__lang___2FBA0BF1]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_lang] ADD  DEFAULT ('') FOR [lang_local_name]
GO
/****** Object:  Default [DF__phpbb_lan__lang___30AE302A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_lang] ADD  DEFAULT ('') FOR [lang_author]
GO
/****** Object:  Default [DF__phpbb_log__log_t__338A9CD5]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_log] ADD  DEFAULT ((0)) FOR [log_type]
GO
/****** Object:  Default [DF__phpbb_log__user___347EC10E]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_log] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_log__forum__3572E547]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_log] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_log__topic__36670980]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_log] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_log__repor__375B2DB9]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_log] ADD  DEFAULT ((0)) FOR [reportee_id]
GO
/****** Object:  Default [DF__phpbb_log__log_i__384F51F2]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_log] ADD  DEFAULT ('') FOR [log_ip]
GO
/****** Object:  Default [DF__phpbb_log__log_t__3943762B]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_log] ADD  DEFAULT ((0)) FOR [log_time]
GO
/****** Object:  Default [DF__phpbb_log__log_o__3A379A64]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_log] ADD  DEFAULT ('') FOR [log_operation]
GO
/****** Object:  Default [DF__phpbb_log__log_d__3B2BBE9D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_log] ADD  DEFAULT ('') FOR [log_data]
GO
/****** Object:  Default [DF__phpbb_log__attem__3E082B48]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_login_attempts] ADD  DEFAULT ('') FOR [attempt_ip]
GO
/****** Object:  Default [DF__phpbb_log__attem__3EFC4F81]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_login_attempts] ADD  DEFAULT ('') FOR [attempt_browser]
GO
/****** Object:  Default [DF__phpbb_log__attem__3FF073BA]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_login_attempts] ADD  DEFAULT ('') FOR [attempt_forwarded_for]
GO
/****** Object:  Default [DF__phpbb_log__attem__40E497F3]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_login_attempts] ADD  DEFAULT ((0)) FOR [attempt_time]
GO
/****** Object:  Default [DF__phpbb_log__user___41D8BC2C]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_login_attempts] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_log__usern__42CCE065]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_login_attempts] ADD  DEFAULT ((0)) FOR [username]
GO
/****** Object:  Default [DF__phpbb_log__usern__43C1049E]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_login_attempts] ADD  DEFAULT ((0)) FOR [username_clean]
GO
/****** Object:  Default [DF__phpbb_mig__migra__469D7149]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_migrations] ADD  DEFAULT ('') FOR [migration_name]
GO
/****** Object:  Default [DF__phpbb_mig__migra__47919582]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_migrations] ADD  DEFAULT ('') FOR [migration_depends_on]
GO
/****** Object:  Default [DF__phpbb_mig__migra__4885B9BB]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_migrations] ADD  DEFAULT ((0)) FOR [migration_schema_done]
GO
/****** Object:  Default [DF__phpbb_mig__migra__4979DDF4]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_migrations] ADD  DEFAULT ((0)) FOR [migration_data_done]
GO
/****** Object:  Default [DF__phpbb_mig__migra__4A6E022D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_migrations] ADD  DEFAULT ('') FOR [migration_data_state]
GO
/****** Object:  Default [DF__phpbb_mig__migra__4B622666]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_migrations] ADD  DEFAULT ((0)) FOR [migration_start_time]
GO
/****** Object:  Default [DF__phpbb_mig__migra__4C564A9F]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_migrations] ADD  DEFAULT ((0)) FOR [migration_end_time]
GO
/****** Object:  Default [DF__phpbb_mod__forum__4F32B74A]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_moderator_cache] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_mod__user___5026DB83]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_moderator_cache] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_mod__usern__511AFFBC]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_moderator_cache] ADD  DEFAULT ('') FOR [username]
GO
/****** Object:  Default [DF__phpbb_mod__group__520F23F5]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_moderator_cache] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__phpbb_mod__group__5303482E]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_moderator_cache] ADD  DEFAULT ('') FOR [group_name]
GO
/****** Object:  Default [DF__phpbb_mod__displ__53F76C67]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_moderator_cache] ADD  DEFAULT ((1)) FOR [display_on_index]
GO
/****** Object:  Default [DF__phpbb_mod__modul__56D3D912]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ((1)) FOR [module_enabled]
GO
/****** Object:  Default [DF__phpbb_mod__modul__57C7FD4B]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ((1)) FOR [module_display]
GO
/****** Object:  Default [DF__phpbb_mod__modul__58BC2184]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ('') FOR [module_basename]
GO
/****** Object:  Default [DF__phpbb_mod__modul__59B045BD]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ('') FOR [module_class]
GO
/****** Object:  Default [DF__phpbb_mod__paren__5AA469F6]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__phpbb_mod__left___5B988E2F]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ((0)) FOR [left_id]
GO
/****** Object:  Default [DF__phpbb_mod__right__5C8CB268]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ((0)) FOR [right_id]
GO
/****** Object:  Default [DF__phpbb_mod__modul__5D80D6A1]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ('') FOR [module_langname]
GO
/****** Object:  Default [DF__phpbb_mod__modul__5E74FADA]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ('') FOR [module_mode]
GO
/****** Object:  Default [DF__phpbb_mod__modul__5F691F13]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_modules] ADD  DEFAULT ('') FOR [module_auth]
GO
/****** Object:  Default [DF__phpbb_not__notif__62458BBE]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_notification_types] ADD  DEFAULT ('') FOR [notification_type_name]
GO
/****** Object:  Default [DF__phpbb_not__notif__6339AFF7]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_notification_types] ADD  DEFAULT ((1)) FOR [notification_type_enabled]
GO
/****** Object:  Default [DF__phpbb_not__notif__66161CA2]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_notifications] ADD  DEFAULT ((0)) FOR [notification_type_id]
GO
/****** Object:  Default [DF__phpbb_not__item___670A40DB]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_notifications] ADD  DEFAULT ((0)) FOR [item_id]
GO
/****** Object:  Default [DF__phpbb_not__item___67FE6514]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_notifications] ADD  DEFAULT ((0)) FOR [item_parent_id]
GO
/****** Object:  Default [DF__phpbb_not__user___68F2894D]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_notifications] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_not__notif__69E6AD86]    Script Date: 07/09/2019 17:07:36 ******/
ALTER TABLE [testforum].[phpbb_notifications] ADD  DEFAULT ((0)) FOR [notification_read]
GO
/****** Object:  Default [DF__phpbb_not__notif__6ADAD1BF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_notifications] ADD  DEFAULT ((1)) FOR [notification_time]
GO
/****** Object:  Default [DF__phpbb_not__notif__6BCEF5F8]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_notifications] ADD  DEFAULT ('') FOR [notification_data]
GO
/****** Object:  Default [DF__phpbb_oau__user___6EAB62A3]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_oauth_accounts] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_oau__provi__6F9F86DC]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_oauth_accounts] ADD  DEFAULT ('') FOR [provider]
GO
/****** Object:  Default [DF__phpbb_oau__oauth__7093AB15]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_oauth_accounts] ADD  DEFAULT ('') FOR [oauth_provider_id]
GO
/****** Object:  Default [DF__phpbb_oau__user___737017C0]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_oauth_tokens] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_oau__sessi__74643BF9]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_oauth_tokens] ADD  DEFAULT ('') FOR [session_id]
GO
/****** Object:  Default [DF__phpbb_oau__provi__75586032]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_oauth_tokens] ADD  DEFAULT ('') FOR [provider]
GO
/****** Object:  Default [DF__phpbb_oau__oauth__764C846B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_oauth_tokens] ADD  DEFAULT ('') FOR [oauth_token]
GO
/****** Object:  Default [DF__phpbb_pol__poll___7928F116]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_poll_options] ADD  DEFAULT ((0)) FOR [poll_option_id]
GO
/****** Object:  Default [DF__phpbb_pol__topic__7A1D154F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_poll_options] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_pol__poll___7B113988]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_poll_options] ADD  DEFAULT ('') FOR [poll_option_text]
GO
/****** Object:  Default [DF__phpbb_pol__poll___7C055DC1]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_poll_options] ADD  DEFAULT ((0)) FOR [poll_option_total]
GO
/****** Object:  Default [DF__phpbb_pol__topic__7EE1CA6C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_poll_votes] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_pol__poll___7FD5EEA5]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_poll_votes] ADD  DEFAULT ((0)) FOR [poll_option_id]
GO
/****** Object:  Default [DF__phpbb_pol__vote___00CA12DE]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_poll_votes] ADD  DEFAULT ((0)) FOR [vote_user_id]
GO
/****** Object:  Default [DF__phpbb_pol__vote___01BE3717]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_poll_votes] ADD  DEFAULT ('') FOR [vote_user_ip]
GO
/****** Object:  Default [DF__phpbb_pos__topic__049AA3C2]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_pos__forum__058EC7FB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_pos__poste__0682EC34]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [poster_id]
GO
/****** Object:  Default [DF__phpbb_pos__icon___0777106D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [icon_id]
GO
/****** Object:  Default [DF__phpbb_pos__poste__086B34A6]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ('') FOR [poster_ip]
GO
/****** Object:  Default [DF__phpbb_pos__post___095F58DF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_time]
GO
/****** Object:  Default [DF__phpbb_pos__post___0A537D18]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_reported]
GO
/****** Object:  Default [DF__phpbb_pos__enabl__0B47A151]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((1)) FOR [enable_bbcode]
GO
/****** Object:  Default [DF__phpbb_pos__enabl__0C3BC58A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((1)) FOR [enable_smilies]
GO
/****** Object:  Default [DF__phpbb_pos__enabl__0D2FE9C3]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((1)) FOR [enable_magic_url]
GO
/****** Object:  Default [DF__phpbb_pos__enabl__0E240DFC]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((1)) FOR [enable_sig]
GO
/****** Object:  Default [DF__phpbb_pos__post___0F183235]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ('') FOR [post_username]
GO
/****** Object:  Default [DF__phpbb_pos__post___100C566E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ('') FOR [post_subject]
GO
/****** Object:  Default [DF__phpbb_pos__post___11007AA7]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ('') FOR [post_text]
GO
/****** Object:  Default [DF__phpbb_pos__post___11F49EE0]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ('') FOR [post_checksum]
GO
/****** Object:  Default [DF__phpbb_pos__post___12E8C319]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_attachment]
GO
/****** Object:  Default [DF__phpbb_pos__bbcod__13DCE752]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ('') FOR [bbcode_bitfield]
GO
/****** Object:  Default [DF__phpbb_pos__bbcod__14D10B8B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ('') FOR [bbcode_uid]
GO
/****** Object:  Default [DF__phpbb_pos__post___15C52FC4]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((1)) FOR [post_postcount]
GO
/****** Object:  Default [DF__phpbb_pos__post___16B953FD]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_edit_time]
GO
/****** Object:  Default [DF__phpbb_pos__post___17AD7836]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ('') FOR [post_edit_reason]
GO
/****** Object:  Default [DF__phpbb_pos__post___18A19C6F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_edit_user]
GO
/****** Object:  Default [DF__phpbb_pos__post___1995C0A8]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_edit_count]
GO
/****** Object:  Default [DF__phpbb_pos__post___1A89E4E1]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_edit_locked]
GO
/****** Object:  Default [DF__phpbb_pos__post___1B7E091A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_visibility]
GO
/****** Object:  Default [DF__phpbb_pos__post___1C722D53]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_delete_time]
GO
/****** Object:  Default [DF__phpbb_pos__post___1D66518C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ('') FOR [post_delete_reason]
GO
/****** Object:  Default [DF__phpbb_pos__post___1E5A75C5]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_posts] ADD  DEFAULT ((0)) FOR [post_delete_user]
GO
/****** Object:  Default [DF__phpbb_pri__root___2136E270]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((0)) FOR [root_level]
GO
/****** Object:  Default [DF__phpbb_pri__autho__222B06A9]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((0)) FOR [author_id]
GO
/****** Object:  Default [DF__phpbb_pri__icon___231F2AE2]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((0)) FOR [icon_id]
GO
/****** Object:  Default [DF__phpbb_pri__autho__24134F1B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ('') FOR [author_ip]
GO
/****** Object:  Default [DF__phpbb_pri__messa__25077354]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((0)) FOR [message_time]
GO
/****** Object:  Default [DF__phpbb_pri__enabl__25FB978D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((1)) FOR [enable_bbcode]
GO
/****** Object:  Default [DF__phpbb_pri__enabl__26EFBBC6]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((1)) FOR [enable_smilies]
GO
/****** Object:  Default [DF__phpbb_pri__enabl__27E3DFFF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((1)) FOR [enable_magic_url]
GO
/****** Object:  Default [DF__phpbb_pri__enabl__28D80438]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((1)) FOR [enable_sig]
GO
/****** Object:  Default [DF__phpbb_pri__messa__29CC2871]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ('') FOR [message_subject]
GO
/****** Object:  Default [DF__phpbb_pri__messa__2AC04CAA]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ('') FOR [message_text]
GO
/****** Object:  Default [DF__phpbb_pri__messa__2BB470E3]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ('') FOR [message_edit_reason]
GO
/****** Object:  Default [DF__phpbb_pri__messa__2CA8951C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((0)) FOR [message_edit_user]
GO
/****** Object:  Default [DF__phpbb_pri__messa__2D9CB955]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((0)) FOR [message_attachment]
GO
/****** Object:  Default [DF__phpbb_pri__bbcod__2E90DD8E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ('') FOR [bbcode_bitfield]
GO
/****** Object:  Default [DF__phpbb_pri__bbcod__2F8501C7]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ('') FOR [bbcode_uid]
GO
/****** Object:  Default [DF__phpbb_pri__messa__30792600]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((0)) FOR [message_edit_time]
GO
/****** Object:  Default [DF__phpbb_pri__messa__316D4A39]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((0)) FOR [message_edit_count]
GO
/****** Object:  Default [DF__phpbb_pri__to_ad__32616E72]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ('') FOR [to_address]
GO
/****** Object:  Default [DF__phpbb_pri__bcc_a__335592AB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ('') FOR [bcc_address]
GO
/****** Object:  Default [DF__phpbb_pri__messa__3449B6E4]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs] ADD  DEFAULT ((0)) FOR [message_reported]
GO
/****** Object:  Default [DF__phpbb_pri__user___3726238F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_folder] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_pri__folde__381A47C8]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_folder] ADD  DEFAULT ('') FOR [folder_name]
GO
/****** Object:  Default [DF__phpbb_pri__pm_co__390E6C01]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_folder] ADD  DEFAULT ((0)) FOR [pm_count]
GO
/****** Object:  Default [DF__phpbb_pri__user___3BEAD8AC]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_rules] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_pri__rule___3CDEFCE5]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_rules] ADD  DEFAULT ((0)) FOR [rule_check]
GO
/****** Object:  Default [DF__phpbb_pri__rule___3DD3211E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_rules] ADD  DEFAULT ((0)) FOR [rule_connection]
GO
/****** Object:  Default [DF__phpbb_pri__rule___3EC74557]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_rules] ADD  DEFAULT ('') FOR [rule_string]
GO
/****** Object:  Default [DF__phpbb_pri__rule___3FBB6990]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_rules] ADD  DEFAULT ((0)) FOR [rule_user_id]
GO
/****** Object:  Default [DF__phpbb_pri__rule___40AF8DC9]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_rules] ADD  DEFAULT ((0)) FOR [rule_group_id]
GO
/****** Object:  Default [DF__phpbb_pri__rule___41A3B202]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_rules] ADD  DEFAULT ((0)) FOR [rule_action]
GO
/****** Object:  Default [DF__phpbb_pri__rule___4297D63B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_rules] ADD  DEFAULT ((0)) FOR [rule_folder_id]
GO
/****** Object:  Default [DF__phpbb_pri__msg_i__457442E6]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((0)) FOR [msg_id]
GO
/****** Object:  Default [DF__phpbb_pri__user___4668671F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_pri__autho__475C8B58]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((0)) FOR [author_id]
GO
/****** Object:  Default [DF__phpbb_pri__pm_de__4850AF91]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((0)) FOR [pm_deleted]
GO
/****** Object:  Default [DF__phpbb_pri__pm_ne__4944D3CA]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((1)) FOR [pm_new]
GO
/****** Object:  Default [DF__phpbb_pri__pm_un__4A38F803]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((1)) FOR [pm_unread]
GO
/****** Object:  Default [DF__phpbb_pri__pm_re__4B2D1C3C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((0)) FOR [pm_replied]
GO
/****** Object:  Default [DF__phpbb_pri__pm_ma__4C214075]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((0)) FOR [pm_marked]
GO
/****** Object:  Default [DF__phpbb_pri__pm_fo__4D1564AE]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((0)) FOR [pm_forwarded]
GO
/****** Object:  Default [DF__phpbb_pri__folde__4E0988E7]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_privmsgs_to] ADD  DEFAULT ((0)) FOR [folder_id]
GO
/****** Object:  Default [DF__phpbb_pro__field__50E5F592]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_name]
GO
/****** Object:  Default [DF__phpbb_pro__field__51DA19CB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_type]
GO
/****** Object:  Default [DF__phpbb_pro__field__52CE3E04]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_ident]
GO
/****** Object:  Default [DF__phpbb_pro__field__53C2623D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_length]
GO
/****** Object:  Default [DF__phpbb_pro__field__54B68676]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_minlen]
GO
/****** Object:  Default [DF__phpbb_pro__field__55AAAAAF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_maxlen]
GO
/****** Object:  Default [DF__phpbb_pro__field__569ECEE8]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_novalue]
GO
/****** Object:  Default [DF__phpbb_pro__field__5792F321]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_default_value]
GO
/****** Object:  Default [DF__phpbb_pro__field__5887175A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_validation]
GO
/****** Object:  Default [DF__phpbb_pro__field__597B3B93]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_required]
GO
/****** Object:  Default [DF__phpbb_pro__field__5A6F5FCC]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_show_on_reg]
GO
/****** Object:  Default [DF__phpbb_pro__field__5B638405]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_hide]
GO
/****** Object:  Default [DF__phpbb_pro__field__5C57A83E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_no_view]
GO
/****** Object:  Default [DF__phpbb_pro__field__5D4BCC77]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_active]
GO
/****** Object:  Default [DF__phpbb_pro__field__5E3FF0B0]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_order]
GO
/****** Object:  Default [DF__phpbb_pro__field__5F3414E9]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_show_profile]
GO
/****** Object:  Default [DF__phpbb_pro__field__60283922]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_show_on_vt]
GO
/****** Object:  Default [DF__phpbb_pro__field__611C5D5B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_show_novalue]
GO
/****** Object:  Default [DF__phpbb_pro__field__62108194]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_show_on_pm]
GO
/****** Object:  Default [DF__phpbb_pro__field__6304A5CD]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_show_on_ml]
GO
/****** Object:  Default [DF__phpbb_pro__field__63F8CA06]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ((0)) FOR [field_is_contact]
GO
/****** Object:  Default [DF__phpbb_pro__field__64ECEE3F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_contact_desc]
GO
/****** Object:  Default [DF__phpbb_pro__field__65E11278]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields] ADD  DEFAULT ('') FOR [field_contact_url]
GO
/****** Object:  Default [DF__phpbb_pro__user___68BD7F23]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__69B1A35C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_interests]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__6AA5C795]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_occupation]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__6B99EBCE]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_facebook]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__6C8E1007]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_googleplus]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__6D823440]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_icq]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__6E765879]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_location]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__6F6A7CB2]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_skype]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__705EA0EB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_twitter]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__7152C524]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_website]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__7246E95D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_wlm]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__733B0D96]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_yahoo]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__742F31CF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_youtube]
GO
/****** Object:  Default [DF__phpbb_pro__pf_ph__75235608]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_data] ADD  DEFAULT ('') FOR [pf_phpbb_aol]
GO
/****** Object:  Default [DF__phpbb_pro__field__77FFC2B3]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_lang] ADD  DEFAULT ((0)) FOR [field_id]
GO
/****** Object:  Default [DF__phpbb_pro__lang___78F3E6EC]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_lang] ADD  DEFAULT ((0)) FOR [lang_id]
GO
/****** Object:  Default [DF__phpbb_pro__optio__79E80B25]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_lang] ADD  DEFAULT ((0)) FOR [option_id]
GO
/****** Object:  Default [DF__phpbb_pro__field__7ADC2F5E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_lang] ADD  DEFAULT ('') FOR [field_type]
GO
/****** Object:  Default [DF__phpbb_pro__lang___7BD05397]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_fields_lang] ADD  DEFAULT ('') FOR [lang_value]
GO
/****** Object:  Default [DF__phpbb_pro__field__7EACC042]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_lang] ADD  DEFAULT ((0)) FOR [field_id]
GO
/****** Object:  Default [DF__phpbb_pro__lang___7FA0E47B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_lang] ADD  DEFAULT ((0)) FOR [lang_id]
GO
/****** Object:  Default [DF__phpbb_pro__lang___009508B4]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_lang] ADD  DEFAULT ('') FOR [lang_name]
GO
/****** Object:  Default [DF__phpbb_pro__lang___01892CED]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_lang] ADD  DEFAULT ('') FOR [lang_explain]
GO
/****** Object:  Default [DF__phpbb_pro__lang___027D5126]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_profile_lang] ADD  DEFAULT ('') FOR [lang_default_value]
GO
/****** Object:  Default [DF__phpbb_ran__rank___0559BDD1]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_ranks] ADD  DEFAULT ('') FOR [rank_title]
GO
/****** Object:  Default [DF__phpbb_ran__rank___064DE20A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_ranks] ADD  DEFAULT ((0)) FOR [rank_min]
GO
/****** Object:  Default [DF__phpbb_ran__rank___07420643]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_ranks] ADD  DEFAULT ((0)) FOR [rank_special]
GO
/****** Object:  Default [DF__phpbb_ran__rank___08362A7C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_ranks] ADD  DEFAULT ('') FOR [rank_image]
GO
/****** Object:  Default [DF__phpbb_rep__reaso__0B129727]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((0)) FOR [reason_id]
GO
/****** Object:  Default [DF__phpbb_rep__post___0C06BB60]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((0)) FOR [post_id]
GO
/****** Object:  Default [DF__phpbb_rep__user___0CFADF99]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_rep__user___0DEF03D2]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((0)) FOR [user_notify]
GO
/****** Object:  Default [DF__phpbb_rep__repor__0EE3280B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((0)) FOR [report_closed]
GO
/****** Object:  Default [DF__phpbb_rep__repor__0FD74C44]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((0)) FOR [report_time]
GO
/****** Object:  Default [DF__phpbb_rep__repor__10CB707D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ('') FOR [report_text]
GO
/****** Object:  Default [DF__phpbb_rep__pm_id__11BF94B6]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((0)) FOR [pm_id]
GO
/****** Object:  Default [DF__phpbb_rep__repor__12B3B8EF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((1)) FOR [reported_post_enable_bbcode]
GO
/****** Object:  Default [DF__phpbb_rep__repor__13A7DD28]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((1)) FOR [reported_post_enable_smilies]
GO
/****** Object:  Default [DF__phpbb_rep__repor__149C0161]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ((1)) FOR [reported_post_enable_magic_url]
GO
/****** Object:  Default [DF__phpbb_rep__repor__1590259A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ('') FOR [reported_post_text]
GO
/****** Object:  Default [DF__phpbb_rep__repor__168449D3]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ('') FOR [reported_post_uid]
GO
/****** Object:  Default [DF__phpbb_rep__repor__17786E0C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports] ADD  DEFAULT ('') FOR [reported_post_bitfield]
GO
/****** Object:  Default [DF__phpbb_rep__reaso__1A54DAB7]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports_reasons] ADD  DEFAULT ('') FOR [reason_title]
GO
/****** Object:  Default [DF__phpbb_rep__reaso__1B48FEF0]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports_reasons] ADD  DEFAULT ('') FOR [reason_description]
GO
/****** Object:  Default [DF__phpbb_rep__reaso__1C3D2329]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_reports_reasons] ADD  DEFAULT ((0)) FOR [reason_order]
GO
/****** Object:  Default [DF__phpbb_sea__searc__1F198FD4]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_results] ADD  DEFAULT ('') FOR [search_key]
GO
/****** Object:  Default [DF__phpbb_sea__searc__200DB40D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_results] ADD  DEFAULT ((0)) FOR [search_time]
GO
/****** Object:  Default [DF__phpbb_sea__searc__2101D846]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_results] ADD  DEFAULT ('') FOR [search_keywords]
GO
/****** Object:  Default [DF__phpbb_sea__searc__21F5FC7F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_results] ADD  DEFAULT ('') FOR [search_authors]
GO
/****** Object:  Default [DF__phpbb_sea__word___24D2692A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_wordlist] ADD  DEFAULT ('') FOR [word_text]
GO
/****** Object:  Default [DF__phpbb_sea__word___25C68D63]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_wordlist] ADD  DEFAULT ((0)) FOR [word_common]
GO
/****** Object:  Default [DF__phpbb_sea__word___26BAB19C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_wordlist] ADD  DEFAULT ((0)) FOR [word_count]
GO
/****** Object:  Default [DF__phpbb_sea__post___29971E47]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_wordmatch] ADD  DEFAULT ((0)) FOR [post_id]
GO
/****** Object:  Default [DF__phpbb_sea__word___2A8B4280]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_wordmatch] ADD  DEFAULT ((0)) FOR [word_id]
GO
/****** Object:  Default [DF__phpbb_sea__title__2B7F66B9]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_search_wordmatch] ADD  DEFAULT ((0)) FOR [title_match]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__2E5BD364]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ('') FOR [session_id]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__2F4FF79D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ((0)) FOR [session_user_id]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__30441BD6]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ((0)) FOR [session_last_visit]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__3138400F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ((0)) FOR [session_start]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__322C6448]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ((0)) FOR [session_time]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__33208881]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ('') FOR [session_ip]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__3414ACBA]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ('') FOR [session_browser]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__3508D0F3]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ('') FOR [session_forwarded_for]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__35FCF52C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ('') FOR [session_page]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__36F11965]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ((1)) FOR [session_viewonline]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__37E53D9E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ((0)) FOR [session_autologin]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__38D961D7]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ((0)) FOR [session_admin]
GO
/****** Object:  Default [DF__phpbb_ses__sessi__39CD8610]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions] ADD  DEFAULT ((0)) FOR [session_forum_id]
GO
/****** Object:  Default [DF__phpbb_ses__key_i__3CA9F2BB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions_keys] ADD  DEFAULT ('') FOR [key_id]
GO
/****** Object:  Default [DF__phpbb_ses__user___3D9E16F4]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions_keys] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_ses__last___3E923B2D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions_keys] ADD  DEFAULT ('') FOR [last_ip]
GO
/****** Object:  Default [DF__phpbb_ses__last___3F865F66]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sessions_keys] ADD  DEFAULT ((0)) FOR [last_login]
GO
/****** Object:  Default [DF__phpbb_sit__site___4262CC11]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sitelist] ADD  DEFAULT ('') FOR [site_ip]
GO
/****** Object:  Default [DF__phpbb_sit__site___4356F04A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sitelist] ADD  DEFAULT ('') FOR [site_hostname]
GO
/****** Object:  Default [DF__phpbb_sit__ip_ex__444B1483]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_sitelist] ADD  DEFAULT ((0)) FOR [ip_exclude]
GO
/****** Object:  Default [DF__phpbb_smil__code__4727812E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_smilies] ADD  DEFAULT ('') FOR [code]
GO
/****** Object:  Default [DF__phpbb_smi__emoti__481BA567]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_smilies] ADD  DEFAULT ('') FOR [emotion]
GO
/****** Object:  Default [DF__phpbb_smi__smile__490FC9A0]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_smilies] ADD  DEFAULT ('') FOR [smiley_url]
GO
/****** Object:  Default [DF__phpbb_smi__smile__4A03EDD9]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_smilies] ADD  DEFAULT ((0)) FOR [smiley_width]
GO
/****** Object:  Default [DF__phpbb_smi__smile__4AF81212]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_smilies] ADD  DEFAULT ((0)) FOR [smiley_height]
GO
/****** Object:  Default [DF__phpbb_smi__smile__4BEC364B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_smilies] ADD  DEFAULT ((0)) FOR [smiley_order]
GO
/****** Object:  Default [DF__phpbb_smi__displ__4CE05A84]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_smilies] ADD  DEFAULT ((1)) FOR [display_on_posting]
GO
/****** Object:  Default [DF__phpbb_sty__style__4FBCC72F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_styles] ADD  DEFAULT ('') FOR [style_name]
GO
/****** Object:  Default [DF__phpbb_sty__style__50B0EB68]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_styles] ADD  DEFAULT ('') FOR [style_copyright]
GO
/****** Object:  Default [DF__phpbb_sty__style__51A50FA1]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_styles] ADD  DEFAULT ((1)) FOR [style_active]
GO
/****** Object:  Default [DF__phpbb_sty__style__529933DA]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_styles] ADD  DEFAULT ('') FOR [style_path]
GO
/****** Object:  Default [DF__phpbb_sty__bbcod__538D5813]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_styles] ADD  DEFAULT ('kNg=') FOR [bbcode_bitfield]
GO
/****** Object:  Default [DF__phpbb_sty__style__54817C4C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_styles] ADD  DEFAULT ((0)) FOR [style_parent_id]
GO
/****** Object:  Default [DF__phpbb_sty__style__5575A085]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_styles] ADD  DEFAULT ('') FOR [style_parent_tree]
GO
/****** Object:  Default [DF__phpbb_tea__group__58520D30]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_teampage] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__phpbb_tea__teamp__59463169]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_teampage] ADD  DEFAULT ('') FOR [teampage_name]
GO
/****** Object:  Default [DF__phpbb_tea__teamp__5A3A55A2]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_teampage] ADD  DEFAULT ((0)) FOR [teampage_position]
GO
/****** Object:  Default [DF__phpbb_tea__teamp__5B2E79DB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_teampage] ADD  DEFAULT ((0)) FOR [teampage_parent]
GO
/****** Object:  Default [DF__phpbb_top__forum__5E0AE686]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_top__icon___5EFF0ABF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [icon_id]
GO
/****** Object:  Default [DF__phpbb_top__topic__5FF32EF8]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_attachment]
GO
/****** Object:  Default [DF__phpbb_top__topic__60E75331]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_reported]
GO
/****** Object:  Default [DF__phpbb_top__topic__61DB776A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ('') FOR [topic_title]
GO
/****** Object:  Default [DF__phpbb_top__topic__62CF9BA3]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_poster]
GO
/****** Object:  Default [DF__phpbb_top__topic__63C3BFDC]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_time]
GO
/****** Object:  Default [DF__phpbb_top__topic__64B7E415]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_time_limit]
GO
/****** Object:  Default [DF__phpbb_top__topic__65AC084E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_views]
GO
/****** Object:  Default [DF__phpbb_top__topic__66A02C87]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_status]
GO
/****** Object:  Default [DF__phpbb_top__topic__679450C0]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_type]
GO
/****** Object:  Default [DF__phpbb_top__topic__688874F9]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_first_post_id]
GO
/****** Object:  Default [DF__phpbb_top__topic__697C9932]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ('') FOR [topic_first_poster_name]
GO
/****** Object:  Default [DF__phpbb_top__topic__6A70BD6B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ('') FOR [topic_first_poster_colour]
GO
/****** Object:  Default [DF__phpbb_top__topic__6B64E1A4]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_last_post_id]
GO
/****** Object:  Default [DF__phpbb_top__topic__6C5905DD]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_last_poster_id]
GO
/****** Object:  Default [DF__phpbb_top__topic__6D4D2A16]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ('') FOR [topic_last_poster_name]
GO
/****** Object:  Default [DF__phpbb_top__topic__6E414E4F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ('') FOR [topic_last_poster_colour]
GO
/****** Object:  Default [DF__phpbb_top__topic__6F357288]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ('') FOR [topic_last_post_subject]
GO
/****** Object:  Default [DF__phpbb_top__topic__702996C1]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_last_post_time]
GO
/****** Object:  Default [DF__phpbb_top__topic__711DBAFA]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_last_view_time]
GO
/****** Object:  Default [DF__phpbb_top__topic__7211DF33]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_moved_id]
GO
/****** Object:  Default [DF__phpbb_top__topic__7306036C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_bumped]
GO
/****** Object:  Default [DF__phpbb_top__topic__73FA27A5]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_bumper]
GO
/****** Object:  Default [DF__phpbb_top__poll___74EE4BDE]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ('') FOR [poll_title]
GO
/****** Object:  Default [DF__phpbb_top__poll___75E27017]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [poll_start]
GO
/****** Object:  Default [DF__phpbb_top__poll___76D69450]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [poll_length]
GO
/****** Object:  Default [DF__phpbb_top__poll___77CAB889]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((1)) FOR [poll_max_options]
GO
/****** Object:  Default [DF__phpbb_top__poll___78BEDCC2]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [poll_last_vote]
GO
/****** Object:  Default [DF__phpbb_top__poll___79B300FB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [poll_vote_change]
GO
/****** Object:  Default [DF__phpbb_top__topic__7AA72534]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_visibility]
GO
/****** Object:  Default [DF__phpbb_top__topic__7B9B496D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_delete_time]
GO
/****** Object:  Default [DF__phpbb_top__topic__7C8F6DA6]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ('') FOR [topic_delete_reason]
GO
/****** Object:  Default [DF__phpbb_top__topic__7D8391DF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_delete_user]
GO
/****** Object:  Default [DF__phpbb_top__topic__7E77B618]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_posts_approved]
GO
/****** Object:  Default [DF__phpbb_top__topic__7F6BDA51]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_posts_unapproved]
GO
/****** Object:  Default [DF__phpbb_top__topic__005FFE8A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics] ADD  DEFAULT ((0)) FOR [topic_posts_softdeleted]
GO
/****** Object:  Default [DF__phpbb_top__user___033C6B35]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_posted] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_top__topic__04308F6E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_posted] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_top__topic__0524B3A7]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_posted] ADD  DEFAULT ((0)) FOR [topic_posted]
GO
/****** Object:  Default [DF__phpbb_top__user___08012052]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_track] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_top__topic__08F5448B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_track] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_top__forum__09E968C4]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_track] ADD  DEFAULT ((0)) FOR [forum_id]
GO
/****** Object:  Default [DF__phpbb_top__mark___0ADD8CFD]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_track] ADD  DEFAULT ((0)) FOR [mark_time]
GO
/****** Object:  Default [DF__phpbb_top__topic__0DB9F9A8]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_watch] ADD  DEFAULT ((0)) FOR [topic_id]
GO
/****** Object:  Default [DF__phpbb_top__user___0EAE1DE1]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_watch] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_top__notif__0FA2421A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_topics_watch] ADD  DEFAULT ((0)) FOR [notify_status]
GO
/****** Object:  Default [DF__phpbb_use__group__127EAEC5]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_user_group] ADD  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__phpbb_use__user___1372D2FE]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_user_group] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_use__group__1466F737]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_user_group] ADD  DEFAULT ((0)) FOR [group_leader]
GO
/****** Object:  Default [DF__phpbb_use__user___155B1B70]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_user_group] ADD  DEFAULT ((1)) FOR [user_pending]
GO
/****** Object:  Default [DF__phpbb_use__item___1837881B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_user_notifications] ADD  DEFAULT ('') FOR [item_type]
GO
/****** Object:  Default [DF__phpbb_use__item___192BAC54]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_user_notifications] ADD  DEFAULT ((0)) FOR [item_id]
GO
/****** Object:  Default [DF__phpbb_use__user___1A1FD08D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_user_notifications] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_use__metho__1B13F4C6]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_user_notifications] ADD  DEFAULT ('') FOR [method]
GO
/****** Object:  Default [DF__phpbb_use__notif__1C0818FF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_user_notifications] ADD  DEFAULT ((1)) FOR [notify]
GO
/****** Object:  Default [DF__phpbb_use__user___1EE485AA]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_type]
GO
/****** Object:  Default [DF__phpbb_use__group__1FD8A9E3]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((3)) FOR [group_id]
GO
/****** Object:  Default [DF__phpbb_use__user___20CCCE1C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_permissions]
GO
/****** Object:  Default [DF__phpbb_use__user___21C0F255]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_perm_from]
GO
/****** Object:  Default [DF__phpbb_use__user___22B5168E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_ip]
GO
/****** Object:  Default [DF__phpbb_use__user___23A93AC7]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_regdate]
GO
/****** Object:  Default [DF__phpbb_use__usern__249D5F00]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [username]
GO
/****** Object:  Default [DF__phpbb_use__usern__25918339]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [username_clean]
GO
/****** Object:  Default [DF__phpbb_use__user___2685A772]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_password]
GO
/****** Object:  Default [DF__phpbb_use__user___2779CBAB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_passchg]
GO
/****** Object:  Default [DF__phpbb_use__user___286DEFE4]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_email]
GO
/****** Object:  Default [DF__phpbb_use__user___2962141D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_email_hash]
GO
/****** Object:  Default [DF__phpbb_use__user___2A563856]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_birthday]
GO
/****** Object:  Default [DF__phpbb_use__user___2B4A5C8F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_lastvisit]
GO
/****** Object:  Default [DF__phpbb_use__user___2C3E80C8]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_lastmark]
GO
/****** Object:  Default [DF__phpbb_use__user___2D32A501]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_lastpost_time]
GO
/****** Object:  Default [DF__phpbb_use__user___2E26C93A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_lastpage]
GO
/****** Object:  Default [DF__phpbb_use__user___2F1AED73]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_last_confirm_key]
GO
/****** Object:  Default [DF__phpbb_use__user___300F11AC]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_last_search]
GO
/****** Object:  Default [DF__phpbb_use__user___310335E5]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_warnings]
GO
/****** Object:  Default [DF__phpbb_use__user___31F75A1E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_last_warning]
GO
/****** Object:  Default [DF__phpbb_use__user___32EB7E57]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_login_attempts]
GO
/****** Object:  Default [DF__phpbb_use__user___33DFA290]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_inactive_reason]
GO
/****** Object:  Default [DF__phpbb_use__user___34D3C6C9]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_inactive_time]
GO
/****** Object:  Default [DF__phpbb_use__user___35C7EB02]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_posts]
GO
/****** Object:  Default [DF__phpbb_use__user___36BC0F3B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_lang]
GO
/****** Object:  Default [DF__phpbb_use__user___37B03374]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_timezone]
GO
/****** Object:  Default [DF__phpbb_use__user___38A457AD]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('d M Y H:i') FOR [user_dateformat]
GO
/****** Object:  Default [DF__phpbb_use__user___39987BE6]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_style]
GO
/****** Object:  Default [DF__phpbb_use__user___3A8CA01F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_rank]
GO
/****** Object:  Default [DF__phpbb_use__user___3B80C458]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_colour]
GO
/****** Object:  Default [DF__phpbb_use__user___3C74E891]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_new_privmsg]
GO
/****** Object:  Default [DF__phpbb_use__user___3D690CCA]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_unread_privmsg]
GO
/****** Object:  Default [DF__phpbb_use__user___3E5D3103]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_last_privmsg]
GO
/****** Object:  Default [DF__phpbb_use__user___3F51553C]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_message_rules]
GO
/****** Object:  Default [DF__phpbb_use__user___40457975]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((-3)) FOR [user_full_folder]
GO
/****** Object:  Default [DF__phpbb_use__user___41399DAE]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_emailtime]
GO
/****** Object:  Default [DF__phpbb_use__user___422DC1E7]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_topic_show_days]
GO
/****** Object:  Default [DF__phpbb_use__user___4321E620]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('t') FOR [user_topic_sortby_type]
GO
/****** Object:  Default [DF__phpbb_use__user___44160A59]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('d') FOR [user_topic_sortby_dir]
GO
/****** Object:  Default [DF__phpbb_use__user___450A2E92]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_post_show_days]
GO
/****** Object:  Default [DF__phpbb_use__user___45FE52CB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('t') FOR [user_post_sortby_type]
GO
/****** Object:  Default [DF__phpbb_use__user___46F27704]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('a') FOR [user_post_sortby_dir]
GO
/****** Object:  Default [DF__phpbb_use__user___47E69B3D]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_notify]
GO
/****** Object:  Default [DF__phpbb_use__user___48DABF76]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((1)) FOR [user_notify_pm]
GO
/****** Object:  Default [DF__phpbb_use__user___49CEE3AF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_notify_type]
GO
/****** Object:  Default [DF__phpbb_use__user___4AC307E8]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((1)) FOR [user_allow_pm]
GO
/****** Object:  Default [DF__phpbb_use__user___4BB72C21]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((1)) FOR [user_allow_viewonline]
GO
/****** Object:  Default [DF__phpbb_use__user___4CAB505A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((1)) FOR [user_allow_viewemail]
GO
/****** Object:  Default [DF__phpbb_use__user___4D9F7493]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((1)) FOR [user_allow_massemail]
GO
/****** Object:  Default [DF__phpbb_use__user___4E9398CC]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((230271)) FOR [user_options]
GO
/****** Object:  Default [DF__phpbb_use__user___4F87BD05]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_avatar]
GO
/****** Object:  Default [DF__phpbb_use__user___507BE13E]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_avatar_type]
GO
/****** Object:  Default [DF__phpbb_use__user___51700577]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_avatar_width]
GO
/****** Object:  Default [DF__phpbb_use__user___526429B0]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_avatar_height]
GO
/****** Object:  Default [DF__phpbb_use__user___53584DE9]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_sig]
GO
/****** Object:  Default [DF__phpbb_use__user___544C7222]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_sig_bbcode_uid]
GO
/****** Object:  Default [DF__phpbb_use__user___5540965B]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_sig_bbcode_bitfield]
GO
/****** Object:  Default [DF__phpbb_use__user___5634BA94]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_jabber]
GO
/****** Object:  Default [DF__phpbb_use__user___5728DECD]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_actkey]
GO
/****** Object:  Default [DF__phpbb_use__user___581D0306]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_newpasswd]
GO
/****** Object:  Default [DF__phpbb_use__user___5911273F]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ('') FOR [user_form_salt]
GO
/****** Object:  Default [DF__phpbb_use__user___5A054B78]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((1)) FOR [user_new]
GO
/****** Object:  Default [DF__phpbb_use__user___5AF96FB1]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_reminded]
GO
/****** Object:  Default [DF__phpbb_use__user___5BED93EA]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_users] ADD  DEFAULT ((0)) FOR [user_reminded_time]
GO
/****** Object:  Default [DF__phpbb_war__user___5ECA0095]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_warnings] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_war__post___5FBE24CE]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_warnings] ADD  DEFAULT ((0)) FOR [post_id]
GO
/****** Object:  Default [DF__phpbb_war__log_i__60B24907]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_warnings] ADD  DEFAULT ((0)) FOR [log_id]
GO
/****** Object:  Default [DF__phpbb_war__warni__61A66D40]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_warnings] ADD  DEFAULT ((0)) FOR [warning_time]
GO
/****** Object:  Default [DF__phpbb_word__word__6482D9EB]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_words] ADD  DEFAULT ('') FOR [word]
GO
/****** Object:  Default [DF__phpbb_wor__repla__6576FE24]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_words] ADD  DEFAULT ('') FOR [replacement]
GO
/****** Object:  Default [DF__phpbb_zeb__user___68536ACF]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_zebra] ADD  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__phpbb_zeb__zebra__69478F08]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_zebra] ADD  DEFAULT ((0)) FOR [zebra_id]
GO
/****** Object:  Default [DF__phpbb_zeb__frien__6A3BB341]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_zebra] ADD  DEFAULT ((0)) FOR [friend]
GO
/****** Object:  Default [DF__phpbb_zebra__foe__6B2FD77A]    Script Date: 07/09/2019 17:07:37 ******/
ALTER TABLE [testforum].[phpbb_zebra] ADD  DEFAULT ((0)) FOR [foe]
GO
