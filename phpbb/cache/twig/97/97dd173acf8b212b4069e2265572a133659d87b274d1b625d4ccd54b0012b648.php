<?php

/* viewforum_body.html */
class __TwigTemplate_99c89dfed157943a51026cfe67745d5e17b2e650ce429bd1f297440e3507e80c extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        ob_start();
        // line 2
        echo "\t";
        if (((isset($context["S_HAS_SUBFORUM"]) ? $context["S_HAS_SUBFORUM"] : null) && (isset($context["U_MARK_FORUMS"]) ? $context["U_MARK_FORUMS"] : null))) {
            // line 3
            echo "\t\t<li class=\"small-icon icon-mark\"><a href=\"";
            echo (isset($context["U_MARK_FORUMS"]) ? $context["U_MARK_FORUMS"] : null);
            echo "\" data-ajax=\"mark_forums_read\">";
            echo $this->env->getExtension('phpbb')->lang("MARK_SUBFORUMS_READ");
            echo "</a></li>
\t";
        }
        // line 5
        echo "\t";
        if ((( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null)) && twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array())))) {
            // line 6
            echo "\t\t<li class=\"small-icon icon-mark\"><a href=\"";
            echo (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null);
            echo "\" accesskey=\"m\" data-ajax=\"mark_topics_read\">";
            echo $this->env->getExtension('phpbb')->lang("MARK_TOPICS_READ");
            echo "</a></li>
\t";
        }
        // line 8
        $value = 1;
        $context['definition']->set('NAVLINKS_SHOW_DEFAULT', $value);
        $value = ('' === $value = ob_get_clean()) ? '' : new \Twig_Markup($value, $this->env->getCharset());
        $context['definition']->set('NAVLINKS', $value);
        // line 10
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "viewforum_body.html", 10)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 11
        // line 12
        echo "<h2 class=\"forum-title\">";
        echo "<a href=\"";
        echo (isset($context["U_VIEW_FORUM"]) ? $context["U_VIEW_FORUM"] : null);
        echo "\">";
        echo (isset($context["FORUM_NAME"]) ? $context["FORUM_NAME"] : null);
        echo "</a>";
        echo "</h2>
";
        // line 13
        // line 14
        if ((((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null) || (isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) || (isset($context["U_MCP"]) ? $context["U_MCP"] : null))) {
            // line 15
            echo "<div>
\t<!-- NOTE: remove the style=\"display: none\" when you want to have the forum description on the forum body -->
\t";
            // line 17
            if ((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null)) {
                echo "<div style=\"display: none !important;\">";
                echo (isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null);
                echo "<br /></div>";
            }
            // line 18
            echo "\t";
            if ((isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) {
                echo "<p><strong>";
                if ((isset($context["S_SINGLE_MODERATOR"]) ? $context["S_SINGLE_MODERATOR"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("MODERATOR");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("MODERATORS");
                }
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo (isset($context["MODERATORS"]) ? $context["MODERATORS"] : null);
                echo "</p>";
            }
            // line 19
            echo "</div>
";
        }
        // line 21
        echo "
";
        // line 22
        if ((isset($context["S_FORUM_RULES"]) ? $context["S_FORUM_RULES"] : null)) {
            // line 23
            echo "\t<div class=\"rules";
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                echo " rules-link";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t";
            // line 26
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                // line 27
                echo "\t\t\t<a href=\"";
                echo (isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</a>
\t\t";
            } else {
                // line 29
                echo "\t\t\t<strong>";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</strong><br />
\t\t\t";
                // line 30
                echo (isset($context["FORUM_RULES"]) ? $context["FORUM_RULES"] : null);
                echo "
\t\t";
            }
            // line 32
            echo "
\t\t</div>
\t</div>
";
        }
        // line 36
        echo "
";
        // line 37
        if ((isset($context["S_HAS_SUBFORUM"]) ? $context["S_HAS_SUBFORUM"] : null)) {
            // line 38
            echo "\t";
            $location = "forumlist_body.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("forumlist_body.html", "viewforum_body.html", 38)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 40
        echo "
";
        // line 41
        if (((((isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null)) || (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null))) {
            // line 42
            echo "\t<div class=\"action-bar top\">

\t";
            // line 44
            if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null))) {
                // line 45
                echo "\t\t<div class=\"buttons\">
\t\t\t";
                // line 46
                // line 47
                echo "
\t\t\t<a href=\"";
                // line 48
                echo (isset($context["U_POST_NEW_TOPIC"]) ? $context["U_POST_NEW_TOPIC"] : null);
                echo "\" class=\"button icon-button ";
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo "locked-icon";
                } else {
                    echo "post-icon";
                }
                echo "\" title=\"";
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("FORUM_LOCKED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("POST_TOPIC");
                }
                echo "\">
\t\t\t\t";
                // line 49
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_FORUM_LOCKED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_NEW_TOPIC");
                }
                // line 50
                echo "\t\t\t</a>

\t\t\t";
                // line 52
                // line 53
                echo "\t\t</div>
\t";
            }
            // line 55
            echo "
\t";
            // line 56
            if ((isset($context["S_DISPLAY_SEARCHBOX"]) ? $context["S_DISPLAY_SEARCHBOX"] : null)) {
                // line 57
                echo "\t\t<div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"get\" id=\"forum-search\" action=\"";
                // line 58
                echo (isset($context["S_SEARCHBOX_ACTION"]) ? $context["S_SEARCHBOX_ACTION"] : null);
                echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\" type=\"search\" name=\"keywords\" id=\"search_keywords\" size=\"20\" placeholder=\"";
                // line 60
                echo $this->env->getExtension('phpbb')->lang("SEARCH_FORUM");
                echo "\" />
\t\t\t\t<button class=\"button icon-button search-icon\" type=\"submit\" title=\"";
                // line 61
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "</button>
\t\t\t\t<a href=\"";
                // line 62
                echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
                echo "\" class=\"button icon-button search-adv-icon\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
                echo "</a>
\t\t\t\t";
                // line 63
                echo (isset($context["S_SEARCH_LOCAL_HIDDEN_FIELDS"]) ? $context["S_SEARCH_LOCAL_HIDDEN_FIELDS"] : null);
                echo "
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t";
            }
            // line 68
            echo "
\t<div class=\"pagination\">
\t\t";
            // line 70
            if ((( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null)) && twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array())))) {
                echo "<a href=\"";
                echo (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null);
                echo "\" class=\"mark\" accesskey=\"m\" data-ajax=\"mark_topics_read\">";
                echo $this->env->getExtension('phpbb')->lang("MARK_TOPICS_READ");
                echo "</a> &bull; ";
            }
            // line 71
            echo "\t\t";
            echo (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null);
            echo "
\t\t";
            // line 72
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 73
                echo "\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewforum_body.html", 73)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 74
                echo "\t\t";
            } else {
                // line 75
                echo "\t\t\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t";
            }
            // line 77
            echo "\t</div>

\t</div>
";
        }
        // line 81
        echo "
";
        // line 82
        if ((isset($context["S_NO_READ_ACCESS"]) ? $context["S_NO_READ_ACCESS"] : null)) {
            // line 83
            echo "
\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<strong>";
            // line 86
            echo $this->env->getExtension('phpbb')->lang("NO_READ_ACCESS");
            echo "</strong>
\t\t</div>
\t</div>

\t";
            // line 90
            if (( !(isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                // line 91
                echo "
\t\t<form action=\"";
                // line 92
                echo (isset($context["S_LOGIN_ACTION"]) ? $context["S_LOGIN_ACTION"] : null);
                echo "\" method=\"post\">

\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">

\t\t\t<div class=\"content\">
\t\t\t\t<h3><a href=\"";
                // line 98
                echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
                echo "</a>";
                if ((isset($context["S_REGISTER_ENABLED"]) ? $context["S_REGISTER_ENABLED"] : null)) {
                    echo "&nbsp; &bull; &nbsp;<a href=\"";
                    echo (isset($context["U_REGISTER"]) ? $context["U_REGISTER"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("REGISTER");
                    echo "</a>";
                }
                echo "</h3>

\t\t\t\t<fieldset class=\"fields1\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"username\">";
                // line 102
                echo $this->env->getExtension('phpbb')->lang("USERNAME");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</label></dt>
\t\t\t\t\t<dd><input type=\"text\" tabindex=\"1\" name=\"username\" id=\"username\" size=\"25\" value=\"";
                // line 103
                echo (isset($context["USERNAME"]) ? $context["USERNAME"] : null);
                echo "\" class=\"inputbox autowidth\" /></dd>
\t\t\t\t</dl>
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"password\">";
                // line 106
                echo $this->env->getExtension('phpbb')->lang("PASSWORD");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</label></dt>
\t\t\t\t\t<dd><input type=\"password\" tabindex=\"2\" id=\"password\" name=\"password\" size=\"25\" class=\"inputbox autowidth\" autocomplete=\"off\" /></dd>
\t\t\t\t\t";
                // line 108
                if ((isset($context["S_AUTOLOGIN_ENABLED"]) ? $context["S_AUTOLOGIN_ENABLED"] : null)) {
                    echo "<dd><label for=\"autologin\"><input type=\"checkbox\" name=\"autologin\" id=\"autologin\" tabindex=\"3\" /> ";
                    echo $this->env->getExtension('phpbb')->lang("LOG_ME_IN");
                    echo "</label></dd>";
                }
                // line 109
                echo "\t\t\t\t\t<dd><label for=\"viewonline\"><input type=\"checkbox\" name=\"viewonline\" id=\"viewonline\" tabindex=\"4\" /> ";
                echo $this->env->getExtension('phpbb')->lang("HIDE_ME");
                echo "</label></dd>
\t\t\t\t</dl>
\t\t\t\t<dl>
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd><input type=\"submit\" name=\"login\" tabindex=\"5\" value=\"";
                // line 113
                echo $this->env->getExtension('phpbb')->lang("LOGIN");
                echo "\" class=\"button1\" /></dd>
\t\t\t\t</dl>
\t\t\t\t";
                // line 115
                echo (isset($context["S_LOGIN_REDIRECT"]) ? $context["S_LOGIN_REDIRECT"] : null);
                echo "
\t\t\t\t</fieldset>
\t\t\t</div>

\t\t\t</div>
\t\t</div>

\t\t</form>

\t";
            }
            // line 125
            echo "
";
        }
        // line 127
        echo "
";
        // line 128
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array()));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["topicrow"]) {
            // line 129
            echo "
\t";
            // line 130
            if (( !$this->getAttribute($context["topicrow"], "S_TOPIC_TYPE_SWITCH", array()) &&  !$this->getAttribute($context["topicrow"], "S_FIRST_ROW", array()))) {
                // line 131
                echo "\t\t</ul>
\t\t</div>
\t</div>
\t";
            }
            // line 135
            echo "
\t";
            // line 136
            if (($this->getAttribute($context["topicrow"], "S_FIRST_ROW", array()) ||  !$this->getAttribute($context["topicrow"], "S_TOPIC_TYPE_SWITCH", array()))) {
                // line 137
                echo "\t\t<div class=\"forumbg";
                if (($this->getAttribute($context["topicrow"], "S_TOPIC_TYPE_SWITCH", array()) && ($this->getAttribute($context["topicrow"], "S_POST_ANNOUNCE", array()) || $this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array())))) {
                    echo " announcement";
                }
                echo "\">
\t\t<div class=\"inner\">
\t\t<ul class=\"topiclist\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl class=\"icon\">
\t\t\t\t\t<dt";
                // line 142
                if ((isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null)) {
                    echo " id=\"active_topics\"";
                }
                echo "><div class=\"list-inner\">";
                if ((isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("ACTIVE_TOPICS");
                } elseif (($this->getAttribute($context["topicrow"], "S_TOPIC_TYPE_SWITCH", array()) && ($this->getAttribute($context["topicrow"], "S_POST_ANNOUNCE", array()) || $this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array())))) {
                    echo $this->env->getExtension('phpbb')->lang("ANNOUNCEMENTS");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("TOPICS");
                }
                echo "</div></dt>
\t\t\t\t\t<dd class=\"posts\">";
                // line 143
                echo $this->env->getExtension('phpbb')->lang("REPLIES");
                echo "</dd>
\t\t\t\t\t<dd class=\"views\">";
                // line 144
                echo $this->env->getExtension('phpbb')->lang("VIEWS");
                echo "</dd>
\t\t\t\t\t<dd class=\"lastpost\"><span>";
                // line 145
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo "</span></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist topics\">
\t";
            }
            // line 151
            echo "
\t\t";
            // line 152
            // line 153
            echo "\t\t<li class=\"row";
            if (($this->getAttribute($context["topicrow"], "S_ROW_COUNT", array()) % 2 == 0)) {
                echo " bg1";
            } else {
                echo " bg2";
            }
            if ($this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array())) {
                echo " global-announce";
            }
            if ($this->getAttribute($context["topicrow"], "S_POST_ANNOUNCE", array())) {
                echo " announce";
            }
            if ($this->getAttribute($context["topicrow"], "S_POST_STICKY", array())) {
                echo " sticky";
            }
            if ($this->getAttribute($context["topicrow"], "S_TOPIC_REPORTED", array())) {
                echo " reported";
            }
            echo "\">
\t\t\t";
            // line 154
            // line 155
            echo "\t\t\t<dl class=\"icon ";
            echo $this->getAttribute($context["topicrow"], "TOPIC_IMG_STYLE", array());
            echo "\">
\t\t\t\t<dt";
            // line 156
            if (($this->getAttribute($context["topicrow"], "TOPIC_ICON_IMG", array()) && (isset($context["S_TOPIC_ICONS"]) ? $context["S_TOPIC_ICONS"] : null))) {
                echo " style=\"background-image: url(";
                echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                echo $this->getAttribute($context["topicrow"], "TOPIC_ICON_IMG", array());
                echo "); background-repeat: no-repeat;\"";
            }
            echo " title=\"";
            echo $this->getAttribute($context["topicrow"], "TOPIC_FOLDER_IMG_ALT", array());
            echo "\">
\t\t\t\t\t";
            // line 157
            if (($this->getAttribute($context["topicrow"], "S_UNREAD_TOPIC", array()) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                echo "<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_NEWEST_POST", array());
                echo "\" class=\"icon-link\"></a>";
            }
            // line 158
            echo "\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t";
            // line 159
            // line 160
            echo "\t\t\t\t\t\t";
            if (($this->getAttribute($context["topicrow"], "S_UNREAD_TOPIC", array()) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                echo "<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_NEWEST_POST", array());
                echo "\">";
                echo (isset($context["NEWEST_POST_IMG"]) ? $context["NEWEST_POST_IMG"] : null);
                echo "</a> ";
            }
            echo "<a href=\"";
            echo $this->getAttribute($context["topicrow"], "U_VIEW_TOPIC", array());
            echo "\" class=\"topictitle\">";
            echo $this->getAttribute($context["topicrow"], "TOPIC_TITLE", array());
            echo "</a>
\t\t\t\t\t\t";
            // line 161
            if (($this->getAttribute($context["topicrow"], "S_TOPIC_UNAPPROVED", array()) || $this->getAttribute($context["topicrow"], "S_POSTS_UNAPPROVED", array()))) {
                echo "<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_MCP_QUEUE", array());
                echo "\">";
                echo $this->getAttribute($context["topicrow"], "UNAPPROVED_IMG", array());
                echo "</a> ";
            }
            // line 162
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute($context["topicrow"], "S_TOPIC_DELETED", array())) {
                echo "<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_MCP_QUEUE", array());
                echo "\">";
                echo (isset($context["DELETED_IMG"]) ? $context["DELETED_IMG"] : null);
                echo "</a> ";
            }
            // line 163
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute($context["topicrow"], "S_TOPIC_REPORTED", array())) {
                echo "<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_MCP_REPORT", array());
                echo "\">";
                echo (isset($context["REPORTED_IMG"]) ? $context["REPORTED_IMG"] : null);
                echo "</a>";
            }
            echo "<br />

\t\t\t\t\t\t";
            // line 165
            if ($this->getAttribute($context["topicrow"], "S_POST_STICKY", array())) {
                echo "<i class=\"topic-status sticky fa fa-thumb-tack\"></i>";
            }
            // line 166
            echo "
\t\t\t\t\t\t";
            // line 167
            if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                // line 168
                echo "\t\t\t\t\t\t<div class=\"responsive-show\" style=\"display: none;\">
\t\t\t\t\t\t\t";
                // line 169
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo " ";
                echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                echo " ";
                echo $this->getAttribute($context["topicrow"], "LAST_POST_AUTHOR_FULL", array());
                echo " &laquo; <a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_LAST_POST", array());
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                echo "\">";
                echo $this->getAttribute($context["topicrow"], "LAST_POST_TIME", array());
                echo "</a>
\t\t\t\t\t\t\t";
                // line 170
                if (($this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array()) && ((isset($context["FORUM_ID"]) ? $context["FORUM_ID"] : null) != $this->getAttribute($context["topicrow"], "FORUM_ID", array())))) {
                    echo "<br />";
                    echo $this->env->getExtension('phpbb')->lang("POSTED");
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("IN");
                    echo " <a href=\"";
                    echo $this->getAttribute($context["topicrow"], "U_VIEW_FORUM", array());
                    echo "\">";
                    echo $this->getAttribute($context["topicrow"], "FORUM_NAME", array());
                    echo "</a>";
                }
                // line 171
                echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                // line 172
                if ($this->getAttribute($context["topicrow"], "REPLIES", array())) {
                    echo "<span class=\"responsive-show left-box\" style=\"display: none;\">";
                    echo $this->env->getExtension('phpbb')->lang("REPLIES");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <strong>";
                    echo $this->getAttribute($context["topicrow"], "REPLIES", array());
                    echo "</strong></span>";
                }
                // line 173
                echo "\t\t\t\t\t\t";
            }
            // line 174
            echo "
\t\t\t\t\t\t";
            // line 175
            if (twig_length_filter($this->env, $this->getAttribute($context["topicrow"], "pagination", array()))) {
                // line 176
                echo "\t\t\t\t\t\t<div class=\"pagination\">
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t";
                // line 178
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["topicrow"], "pagination", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["pagination"]) {
                    // line 179
                    echo "\t\t\t\t\t\t\t\t";
                    if ($this->getAttribute($context["pagination"], "S_IS_PREV", array())) {
                        // line 180
                        echo "\t\t\t\t\t\t\t\t";
                    } elseif ($this->getAttribute($context["pagination"], "S_IS_CURRENT", array())) {
                        echo "<li class=\"active\"><span>";
                        echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                        echo "</span></li>
\t\t\t\t\t\t\t\t";
                    } elseif ($this->getAttribute(                    // line 181
$context["pagination"], "S_IS_ELLIPSIS", array())) {
                        echo "<li class=\"ellipsis\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("ELLIPSIS");
                        echo "</span></li>
\t\t\t\t\t\t\t\t";
                    } elseif ($this->getAttribute(                    // line 182
$context["pagination"], "S_IS_NEXT", array())) {
                        // line 183
                        echo "\t\t\t\t\t\t\t\t";
                    } else {
                        echo "<li><a href=\"";
                        echo $this->getAttribute($context["pagination"], "PAGE_URL", array());
                        echo "\">";
                        echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                        echo "</a></li>
\t\t\t\t\t\t\t\t";
                    }
                    // line 185
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pagination'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 186
                echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            }
            // line 189
            echo "
\t\t\t\t\t\t<div class=\"responsive-hide\">
\t\t\t\t\t\t\t";
            // line 191
            if ($this->getAttribute($context["topicrow"], "S_HAS_POLL", array())) {
                echo (isset($context["POLL_IMG"]) ? $context["POLL_IMG"] : null);
                echo " ";
            }
            // line 192
            echo "\t\t\t\t\t\t\t";
            if ($this->getAttribute($context["topicrow"], "ATTACH_ICON_IMG", array())) {
                echo $this->getAttribute($context["topicrow"], "ATTACH_ICON_IMG", array());
                echo " ";
            }
            // line 193
            echo "\t\t\t\t\t\t\t";
            echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
            echo " ";
            echo $this->getAttribute($context["topicrow"], "TOPIC_AUTHOR_FULL", array());
            echo " &raquo; ";
            echo $this->getAttribute($context["topicrow"], "FIRST_POST_TIME", array());
            echo "
\t\t\t\t\t\t\t";
            // line 194
            if (($this->getAttribute($context["topicrow"], "S_POST_GLOBAL", array()) && ((isset($context["FORUM_ID"]) ? $context["FORUM_ID"] : null) != $this->getAttribute($context["topicrow"], "FORUM_ID", array())))) {
                echo " &raquo; ";
                echo $this->env->getExtension('phpbb')->lang("IN");
                echo " <a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_VIEW_FORUM", array());
                echo "\">";
                echo $this->getAttribute($context["topicrow"], "FORUM_NAME", array());
                echo "</a>";
            }
            // line 195
            echo "\t\t\t\t\t\t</div>

\t\t\t\t\t\t";
            // line 197
            // line 198
            echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"posts\">";
            // line 200
            echo $this->getAttribute($context["topicrow"], "REPLIES", array());
            echo " <dfn>";
            echo $this->env->getExtension('phpbb')->lang("REPLIES");
            echo "</dfn></dd>
\t\t\t\t<dd class=\"views\">";
            // line 201
            echo $this->getAttribute($context["topicrow"], "VIEWS", array());
            echo " <dfn>";
            echo $this->env->getExtension('phpbb')->lang("VIEWS");
            echo "</dfn></dd>
\t\t\t\t<dd class=\"lastpost\"><span><dfn>";
            // line 202
            echo $this->env->getExtension('phpbb')->lang("LAST_POST");
            echo " </dfn>";
            echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
            echo " ";
            echo $this->getAttribute($context["topicrow"], "LAST_POST_AUTHOR_FULL", array());
            echo "
\t\t\t\t\t";
            // line 203
            if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                echo "<a href=\"";
                echo $this->getAttribute($context["topicrow"], "U_LAST_POST", array());
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                echo "\">";
                echo (isset($context["LAST_POST_IMG"]) ? $context["LAST_POST_IMG"] : null);
                echo "</a> ";
            }
            echo "<br />";
            echo $this->getAttribute($context["topicrow"], "LAST_POST_TIME", array());
            echo "</span>
\t\t\t\t</dd>
\t\t\t</dl>
\t\t\t";
            // line 206
            // line 207
            echo "\t\t</li>
\t\t";
            // line 208
            // line 209
            echo "
\t";
            // line 210
            if ($this->getAttribute($context["topicrow"], "S_LAST_ROW", array())) {
                // line 211
                echo "\t\t\t</ul>
\t\t</div>
\t</div>
\t";
            }
            // line 215
            echo "
";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 217
            echo "\t";
            if ((isset($context["S_IS_POSTABLE"]) ? $context["S_IS_POSTABLE"] : null)) {
                // line 218
                echo "\t<div class=\"panel\">
\t\t<div class=\"inner\">
\t\t<strong>";
                // line 220
                echo $this->env->getExtension('phpbb')->lang("NO_TOPICS");
                echo "</strong>
\t\t</div>
\t</div>
\t";
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topicrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 225
        echo "
";
        // line 226
        if (((isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null) &&  !(isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null))) {
            // line 227
            echo "\t<form method=\"post\" action=\"";
            echo (isset($context["S_FORUM_ACTION"]) ? $context["S_FORUM_ACTION"] : null);
            echo "\">
\t\t<fieldset class=\"display-options\">
\t";
            // line 229
            if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                // line 230
                echo "\t\t\t<label>";
                echo $this->env->getExtension('phpbb')->lang("DISPLAY_TOPICS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo " ";
                echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
                echo "</label>
\t\t\t<label>";
                // line 231
                echo $this->env->getExtension('phpbb')->lang("SORT_BY");
                echo " ";
                echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
                echo "</label>
\t\t\t<label>";
                // line 232
                echo (isset($context["S_SELECT_SORT_DIR"]) ? $context["S_SELECT_SORT_DIR"] : null);
                echo "</label>
\t\t\t<input type=\"submit\" name=\"sort\" value=\"";
                // line 233
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" class=\"button2\" />
\t";
            }
            // line 235
            echo "\t\t</fieldset>
\t</form>
\t<hr />
";
        }
        // line 239
        echo "
";
        // line 240
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array())) &&  !(isset($context["S_DISPLAY_ACTIVE"]) ? $context["S_DISPLAY_ACTIVE"] : null))) {
            // line 241
            echo "\t<div class=\"action-bar bottom\">
\t\t";
            // line 242
            if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null))) {
                // line 243
                echo "\t\t\t<div class=\"buttons\">
\t\t\t\t";
                // line 244
                // line 245
                echo "
\t\t\t\t<a href=\"";
                // line 246
                echo (isset($context["U_POST_NEW_TOPIC"]) ? $context["U_POST_NEW_TOPIC"] : null);
                echo "\" class=\"button icon-button ";
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo "locked-icon";
                } else {
                    echo "post-icon";
                }
                echo "\" title=\"";
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("FORUM_LOCKED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("POST_TOPIC");
                }
                echo "\">
\t\t\t\t\t";
                // line 247
                if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_FORUM_LOCKED");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("BUTTON_NEW_TOPIC");
                }
                // line 248
                echo "\t\t\t\t</a>

\t\t\t\t";
                // line 250
                // line 251
                echo "\t\t\t</div>
\t\t";
            }
            // line 253
            echo "
\t\t<div class=\"pagination\">
\t\t\t";
            // line 255
            if ((( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null)) && twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array())))) {
                echo "<a href=\"";
                echo (isset($context["U_MARK_TOPICS"]) ? $context["U_MARK_TOPICS"] : null);
                echo "\" data-ajax=\"mark_topics_read\">";
                echo $this->env->getExtension('phpbb')->lang("MARK_TOPICS_READ");
                echo "</a> &bull; ";
            }
            // line 256
            echo "\t\t\t";
            echo (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null);
            echo "
\t\t\t";
            // line 257
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 258
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewforum_body.html", 258)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 259
                echo "\t\t\t";
            } else {
                // line 260
                echo "\t\t\t\t &bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 262
            echo "\t\t</div>
\t</div>
";
        }
        // line 265
        echo "
";
        // line 266
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("jumpbox.html", "viewforum_body.html", 266)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 267
        echo "
";
        // line 268
        if ((isset($context["S_DISPLAY_ONLINE_LIST"]) ? $context["S_DISPLAY_ONLINE_LIST"] : null)) {
            // line 269
            echo "\t<div class=\"stat-block online-list\">
\t\t<h3>";
            // line 270
            if ((isset($context["U_VIEWONLINE"]) ? $context["U_VIEWONLINE"] : null)) {
                echo "<a href=\"";
                echo (isset($context["U_VIEWONLINE"]) ? $context["U_VIEWONLINE"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("WHO_IS_ONLINE");
                echo "</a>";
            } else {
                echo $this->env->getExtension('phpbb')->lang("WHO_IS_ONLINE");
            }
            echo "</h3>
\t\t<p>";
            // line 271
            echo (isset($context["LOGGED_IN_USER_LIST"]) ? $context["LOGGED_IN_USER_LIST"] : null);
            echo "</p>
\t</div>
";
        }
        // line 274
        echo "
";
        // line 275
        if ((isset($context["S_DISPLAY_POST_INFO"]) ? $context["S_DISPLAY_POST_INFO"] : null)) {
            // line 276
            echo "\t<div class=\"stat-block permissions\">
\t\t<h3>";
            // line 277
            echo $this->env->getExtension('phpbb')->lang("FORUM_PERMISSIONS");
            echo "</h3>
\t\t<p>";
            // line 278
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "rules", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["rules"]) {
                echo $this->getAttribute($context["rules"], "RULE", array());
                echo "<br />";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['rules'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "</p>
\t</div>
";
        }
        // line 281
        echo "
";
        // line 282
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "viewforum_body.html", 282)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "viewforum_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  988 => 282,  985 => 281,  971 => 278,  967 => 277,  964 => 276,  962 => 275,  959 => 274,  953 => 271,  941 => 270,  938 => 269,  936 => 268,  933 => 267,  921 => 266,  918 => 265,  913 => 262,  907 => 260,  904 => 259,  891 => 258,  889 => 257,  884 => 256,  876 => 255,  872 => 253,  868 => 251,  867 => 250,  863 => 248,  857 => 247,  841 => 246,  838 => 245,  837 => 244,  834 => 243,  832 => 242,  829 => 241,  827 => 240,  824 => 239,  818 => 235,  813 => 233,  809 => 232,  803 => 231,  795 => 230,  793 => 229,  787 => 227,  785 => 226,  782 => 225,  771 => 220,  767 => 218,  764 => 217,  758 => 215,  752 => 211,  750 => 210,  747 => 209,  746 => 208,  743 => 207,  742 => 206,  726 => 203,  718 => 202,  712 => 201,  706 => 200,  702 => 198,  701 => 197,  697 => 195,  687 => 194,  678 => 193,  672 => 192,  667 => 191,  663 => 189,  658 => 186,  652 => 185,  642 => 183,  640 => 182,  634 => 181,  627 => 180,  624 => 179,  620 => 178,  616 => 176,  614 => 175,  611 => 174,  608 => 173,  599 => 172,  596 => 171,  584 => 170,  570 => 169,  567 => 168,  565 => 167,  562 => 166,  558 => 165,  546 => 163,  537 => 162,  529 => 161,  514 => 160,  513 => 159,  510 => 158,  504 => 157,  493 => 156,  488 => 155,  487 => 154,  466 => 153,  465 => 152,  462 => 151,  453 => 145,  449 => 144,  445 => 143,  431 => 142,  420 => 137,  418 => 136,  415 => 135,  409 => 131,  407 => 130,  404 => 129,  399 => 128,  396 => 127,  392 => 125,  379 => 115,  374 => 113,  366 => 109,  360 => 108,  354 => 106,  348 => 103,  343 => 102,  326 => 98,  317 => 92,  314 => 91,  312 => 90,  305 => 86,  300 => 83,  298 => 82,  295 => 81,  289 => 77,  283 => 75,  280 => 74,  267 => 73,  265 => 72,  260 => 71,  252 => 70,  248 => 68,  240 => 63,  232 => 62,  226 => 61,  222 => 60,  217 => 58,  214 => 57,  212 => 56,  209 => 55,  205 => 53,  204 => 52,  200 => 50,  194 => 49,  178 => 48,  175 => 47,  174 => 46,  171 => 45,  169 => 44,  165 => 42,  163 => 41,  160 => 40,  146 => 38,  144 => 37,  141 => 36,  135 => 32,  130 => 30,  125 => 29,  117 => 27,  115 => 26,  106 => 23,  104 => 22,  101 => 21,  97 => 19,  83 => 18,  77 => 17,  73 => 15,  71 => 14,  70 => 13,  61 => 12,  60 => 11,  48 => 10,  43 => 8,  35 => 6,  32 => 5,  24 => 3,  21 => 2,  19 => 1,);
    }
}
/* <!-- DEFINE $NAVLINKS -->*/
/* 	<!-- IF S_HAS_SUBFORUM and U_MARK_FORUMS -->*/
/* 		<li class="small-icon icon-mark"><a href="{U_MARK_FORUMS}" data-ajax="mark_forums_read">{L_MARK_SUBFORUMS_READ}</a></li>*/
/* 	<!-- ENDIF -->*/
/* 	<!-- IF not S_IS_BOT and U_MARK_TOPICS and .topicrow -->*/
/* 		<li class="small-icon icon-mark"><a href="{U_MARK_TOPICS}" accesskey="m" data-ajax="mark_topics_read">{L_MARK_TOPICS_READ}</a></li>*/
/* 	<!-- ENDIF -->*/
/* <!-- DEFINE $NAVLINKS_SHOW_DEFAULT = 1 -->*/
/* <!-- ENDDEFINE -->*/
/* <!-- INCLUDE overall_header.html -->*/
/* <!-- EVENT viewforum_forum_title_before -->*/
/* <h2 class="forum-title"><!-- EVENT viewforum_forum_name_prepend --><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a><!-- EVENT viewforum_forum_name_append --></h2>*/
/* <!-- EVENT viewforum_forum_title_after -->*/
/* <!-- IF FORUM_DESC or MODERATORS or U_MCP -->*/
/* <div>*/
/* 	<!-- NOTE: remove the style="display: none" when you want to have the forum description on the forum body -->*/
/* 	<!-- IF FORUM_DESC --><div style="display: none !important;">{FORUM_DESC}<br /></div><!-- ENDIF -->*/
/* 	<!-- IF MODERATORS --><p><strong><!-- IF S_SINGLE_MODERATOR -->{L_MODERATOR}<!-- ELSE -->{L_MODERATORS}<!-- ENDIF -->{L_COLON}</strong> {MODERATORS}</p><!-- ENDIF -->*/
/* </div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_FORUM_RULES -->*/
/* 	<div class="rules<!-- IF U_FORUM_RULES --> rules-link<!-- ENDIF -->">*/
/* 		<div class="inner">*/
/* */
/* 		<!-- IF U_FORUM_RULES -->*/
/* 			<a href="{U_FORUM_RULES}">{L_FORUM_RULES}</a>*/
/* 		<!-- ELSE -->*/
/* 			<strong>{L_FORUM_RULES}</strong><br />*/
/* 			{FORUM_RULES}*/
/* 		<!-- ENDIF -->*/
/* */
/* 		</div>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_HAS_SUBFORUM -->*/
/* 	<!-- INCLUDE forumlist_body.html -->*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_DISPLAY_POST_INFO or .pagination or TOTAL_POSTS or TOTAL_TOPICS -->*/
/* 	<div class="action-bar top">*/
/* */
/* 	<!-- IF not S_IS_BOT and S_DISPLAY_POST_INFO -->*/
/* 		<div class="buttons">*/
/* 			<!-- EVENT viewforum_buttons_top_before -->*/
/* */
/* 			<a href="{U_POST_NEW_TOPIC}" class="button icon-button <!-- IF S_IS_LOCKED -->locked-icon<!-- ELSE -->post-icon<!-- ENDIF -->" title="<!-- IF S_IS_LOCKED -->{L_FORUM_LOCKED}<!-- ELSE -->{L_POST_TOPIC}<!-- ENDIF -->">*/
/* 				<!-- IF S_IS_LOCKED -->{L_BUTTON_FORUM_LOCKED}<!-- ELSE -->{L_BUTTON_NEW_TOPIC}<!-- ENDIF -->*/
/* 			</a>*/
/* */
/* 			<!-- EVENT viewforum_buttons_top_after -->*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_DISPLAY_SEARCHBOX -->*/
/* 		<div class="search-box" role="search">*/
/* 			<form method="get" id="forum-search" action="{S_SEARCHBOX_ACTION}">*/
/* 			<fieldset>*/
/* 				<input class="inputbox search tiny" type="search" name="keywords" id="search_keywords" size="20" placeholder="{L_SEARCH_FORUM}" />*/
/* 				<button class="button icon-button search-icon" type="submit" title="{L_SEARCH}">{L_SEARCH}</button>*/
/* 				<a href="{U_SEARCH}" class="button icon-button search-adv-icon" title="{L_SEARCH_ADV}">{L_SEARCH_ADV}</a>*/
/* 				{S_SEARCH_LOCAL_HIDDEN_FIELDS}*/
/* 			</fieldset>*/
/* 			</form>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<div class="pagination">*/
/* 		<!-- IF not S_IS_BOT and U_MARK_TOPICS and .topicrow --><a href="{U_MARK_TOPICS}" class="mark" accesskey="m" data-ajax="mark_topics_read">{L_MARK_TOPICS_READ}</a> &bull; <!-- ENDIF -->*/
/* 		{TOTAL_TOPICS}*/
/* 		<!-- IF .pagination -->*/
/* 			<!-- INCLUDE pagination.html -->*/
/* 		<!-- ELSE -->*/
/* 			&bull; {PAGE_NUMBER}*/
/* 		<!-- ENDIF -->*/
/* 	</div>*/
/* */
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_NO_READ_ACCESS -->*/
/* */
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* 		<strong>{L_NO_READ_ACCESS}</strong>*/
/* 		</div>*/
/* 	</div>*/
/* */
/* 	<!-- IF not S_USER_LOGGED_IN and not S_IS_BOT -->*/
/* */
/* 		<form action="{S_LOGIN_ACTION}" method="post">*/
/* */
/* 		<div class="panel">*/
/* 			<div class="inner">*/
/* */
/* 			<div class="content">*/
/* 				<h3><a href="{U_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT}</a><!-- IF S_REGISTER_ENABLED -->&nbsp; &bull; &nbsp;<a href="{U_REGISTER}">{L_REGISTER}</a><!-- ENDIF --></h3>*/
/* */
/* 				<fieldset class="fields1">*/
/* 				<dl>*/
/* 					<dt><label for="username">{L_USERNAME}{L_COLON}</label></dt>*/
/* 					<dd><input type="text" tabindex="1" name="username" id="username" size="25" value="{USERNAME}" class="inputbox autowidth" /></dd>*/
/* 				</dl>*/
/* 				<dl>*/
/* 					<dt><label for="password">{L_PASSWORD}{L_COLON}</label></dt>*/
/* 					<dd><input type="password" tabindex="2" id="password" name="password" size="25" class="inputbox autowidth" autocomplete="off" /></dd>*/
/* 					<!-- IF S_AUTOLOGIN_ENABLED --><dd><label for="autologin"><input type="checkbox" name="autologin" id="autologin" tabindex="3" /> {L_LOG_ME_IN}</label></dd><!-- ENDIF -->*/
/* 					<dd><label for="viewonline"><input type="checkbox" name="viewonline" id="viewonline" tabindex="4" /> {L_HIDE_ME}</label></dd>*/
/* 				</dl>*/
/* 				<dl>*/
/* 					<dt>&nbsp;</dt>*/
/* 					<dd><input type="submit" name="login" tabindex="5" value="{L_LOGIN}" class="button1" /></dd>*/
/* 				</dl>*/
/* 				{S_LOGIN_REDIRECT}*/
/* 				</fieldset>*/
/* 			</div>*/
/* */
/* 			</div>*/
/* 		</div>*/
/* */
/* 		</form>*/
/* */
/* 	<!-- ENDIF -->*/
/* */
/* <!-- ENDIF -->*/
/* */
/* <!-- BEGIN topicrow -->*/
/* */
/* 	<!-- IF not topicrow.S_TOPIC_TYPE_SWITCH and not topicrow.S_FIRST_ROW -->*/
/* 		</ul>*/
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF topicrow.S_FIRST_ROW or not topicrow.S_TOPIC_TYPE_SWITCH -->*/
/* 		<div class="forumbg<!-- IF topicrow.S_TOPIC_TYPE_SWITCH and (topicrow.S_POST_ANNOUNCE or topicrow.S_POST_GLOBAL) --> announcement<!-- ENDIF -->">*/
/* 		<div class="inner">*/
/* 		<ul class="topiclist">*/
/* 			<li class="header">*/
/* 				<dl class="icon">*/
/* 					<dt<!-- IF S_DISPLAY_ACTIVE --> id="active_topics"<!-- ENDIF -->><div class="list-inner"><!-- IF S_DISPLAY_ACTIVE -->{L_ACTIVE_TOPICS}<!-- ELSEIF topicrow.S_TOPIC_TYPE_SWITCH and (topicrow.S_POST_ANNOUNCE or topicrow.S_POST_GLOBAL) -->{L_ANNOUNCEMENTS}<!-- ELSE -->{L_TOPICS}<!-- ENDIF --></div></dt>*/
/* 					<dd class="posts">{L_REPLIES}</dd>*/
/* 					<dd class="views">{L_VIEWS}</dd>*/
/* 					<dd class="lastpost"><span>{L_LAST_POST}</span></dd>*/
/* 				</dl>*/
/* 			</li>*/
/* 		</ul>*/
/* 		<ul class="topiclist topics">*/
/* 	<!-- ENDIF -->*/
/* */
/* 		<!-- EVENT viewforum_body_topic_row_before -->*/
/* 		<li class="row<!-- IF topicrow.S_ROW_COUNT is even --> bg1<!-- ELSE --> bg2<!-- ENDIF --><!-- IF topicrow.S_POST_GLOBAL --> global-announce<!-- ENDIF --><!-- IF topicrow.S_POST_ANNOUNCE --> announce<!-- ENDIF --><!-- IF topicrow.S_POST_STICKY --> sticky<!-- ENDIF --><!-- IF topicrow.S_TOPIC_REPORTED --> reported<!-- ENDIF -->">*/
/* 			<!-- EVENT viewforum_body_topic_row_prepend -->*/
/* 			<dl class="icon {topicrow.TOPIC_IMG_STYLE}">*/
/* 				<dt<!-- IF topicrow.TOPIC_ICON_IMG and S_TOPIC_ICONS --> style="background-image: url({T_ICONS_PATH}{topicrow.TOPIC_ICON_IMG}); background-repeat: no-repeat;"<!-- ENDIF --> title="{topicrow.TOPIC_FOLDER_IMG_ALT}">*/
/* 					<!-- IF topicrow.S_UNREAD_TOPIC and not S_IS_BOT --><a href="{topicrow.U_NEWEST_POST}" class="icon-link"></a><!-- ENDIF -->*/
/* 					<div class="list-inner">*/
/* 						<!-- EVENT topiclist_row_prepend -->*/
/* 						<!-- IF topicrow.S_UNREAD_TOPIC and not S_IS_BOT --><a href="{topicrow.U_NEWEST_POST}">{NEWEST_POST_IMG}</a> <!-- ENDIF --><a href="{topicrow.U_VIEW_TOPIC}" class="topictitle">{topicrow.TOPIC_TITLE}</a>*/
/* 						<!-- IF topicrow.S_TOPIC_UNAPPROVED or topicrow.S_POSTS_UNAPPROVED --><a href="{topicrow.U_MCP_QUEUE}">{topicrow.UNAPPROVED_IMG}</a> <!-- ENDIF -->*/
/* 						<!-- IF topicrow.S_TOPIC_DELETED --><a href="{topicrow.U_MCP_QUEUE}">{DELETED_IMG}</a> <!-- ENDIF -->*/
/* 						<!-- IF topicrow.S_TOPIC_REPORTED --><a href="{topicrow.U_MCP_REPORT}">{REPORTED_IMG}</a><!-- ENDIF --><br />*/
/* */
/* 						<!-- IF topicrow.S_POST_STICKY --><i class="topic-status sticky fa fa-thumb-tack"></i><!-- ENDIF -->*/
/* */
/* 						<!-- IF not S_IS_BOT -->*/
/* 						<div class="responsive-show" style="display: none;">*/
/* 							{L_LAST_POST} {L_POST_BY_AUTHOR} {topicrow.LAST_POST_AUTHOR_FULL} &laquo; <a href="{topicrow.U_LAST_POST}" title="{L_GOTO_LAST_POST}">{topicrow.LAST_POST_TIME}</a>*/
/* 							<!-- IF topicrow.S_POST_GLOBAL and FORUM_ID != topicrow.FORUM_ID --><br />{L_POSTED} {L_IN} <a href="{topicrow.U_VIEW_FORUM}">{topicrow.FORUM_NAME}</a><!-- ENDIF -->*/
/* 						</div>*/
/* 						<!-- IF topicrow.REPLIES --><span class="responsive-show left-box" style="display: none;">{L_REPLIES}{L_COLON} <strong>{topicrow.REPLIES}</strong></span><!-- ENDIF -->*/
/* 						<!-- ENDIF -->*/
/* */
/* 						<!-- IF .topicrow.pagination -->*/
/* 						<div class="pagination">*/
/* 							<ul>*/
/* 							<!-- BEGIN pagination -->*/
/* 								<!-- IF topicrow.pagination.S_IS_PREV -->*/
/* 								<!-- ELSEIF topicrow.pagination.S_IS_CURRENT --><li class="active"><span>{topicrow.pagination.PAGE_NUMBER}</span></li>*/
/* 								<!-- ELSEIF topicrow.pagination.S_IS_ELLIPSIS --><li class="ellipsis"><span>{L_ELLIPSIS}</span></li>*/
/* 								<!-- ELSEIF topicrow.pagination.S_IS_NEXT -->*/
/* 								<!-- ELSE --><li><a href="{topicrow.pagination.PAGE_URL}">{topicrow.pagination.PAGE_NUMBER}</a></li>*/
/* 								<!-- ENDIF -->*/
/* 							<!-- END pagination -->*/
/* 							</ul>*/
/* 						</div>*/
/* 						<!-- ENDIF -->*/
/* */
/* 						<div class="responsive-hide">*/
/* 							<!-- IF topicrow.S_HAS_POLL -->{POLL_IMG} <!-- ENDIF -->*/
/* 							<!-- IF topicrow.ATTACH_ICON_IMG -->{topicrow.ATTACH_ICON_IMG} <!-- ENDIF -->*/
/* 							{L_POST_BY_AUTHOR} {topicrow.TOPIC_AUTHOR_FULL} &raquo; {topicrow.FIRST_POST_TIME}*/
/* 							<!-- IF topicrow.S_POST_GLOBAL and FORUM_ID != topicrow.FORUM_ID --> &raquo; {L_IN} <a href="{topicrow.U_VIEW_FORUM}">{topicrow.FORUM_NAME}</a><!-- ENDIF -->*/
/* 						</div>*/
/* */
/* 						<!-- EVENT topiclist_row_append -->*/
/* 					</div>*/
/* 				</dt>*/
/* 				<dd class="posts">{topicrow.REPLIES} <dfn>{L_REPLIES}</dfn></dd>*/
/* 				<dd class="views">{topicrow.VIEWS} <dfn>{L_VIEWS}</dfn></dd>*/
/* 				<dd class="lastpost"><span><dfn>{L_LAST_POST} </dfn>{L_POST_BY_AUTHOR} {topicrow.LAST_POST_AUTHOR_FULL}*/
/* 					<!-- IF not S_IS_BOT --><a href="{topicrow.U_LAST_POST}" title="{L_GOTO_LAST_POST}">{LAST_POST_IMG}</a> <!-- ENDIF --><br />{topicrow.LAST_POST_TIME}</span>*/
/* 				</dd>*/
/* 			</dl>*/
/* 			<!-- EVENT viewforum_body_topic_row_append -->*/
/* 		</li>*/
/* 		<!-- EVENT viewforum_body_topic_row_after -->*/
/* */
/* 	<!-- IF topicrow.S_LAST_ROW -->*/
/* 			</ul>*/
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* <!-- BEGINELSE -->*/
/* 	<!-- IF S_IS_POSTABLE -->*/
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* 		<strong>{L_NO_TOPICS}</strong>*/
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ENDIF -->*/
/* <!-- END topicrow -->*/
/* */
/* <!-- IF S_SELECT_SORT_DAYS and not S_DISPLAY_ACTIVE -->*/
/* 	<form method="post" action="{S_FORUM_ACTION}">*/
/* 		<fieldset class="display-options">*/
/* 	<!-- IF not S_IS_BOT -->*/
/* 			<label>{L_DISPLAY_TOPICS}{L_COLON} {S_SELECT_SORT_DAYS}</label>*/
/* 			<label>{L_SORT_BY} {S_SELECT_SORT_KEY}</label>*/
/* 			<label>{S_SELECT_SORT_DIR}</label>*/
/* 			<input type="submit" name="sort" value="{L_GO}" class="button2" />*/
/* 	<!-- ENDIF -->*/
/* 		</fieldset>*/
/* 	</form>*/
/* 	<hr />*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF .topicrow and not S_DISPLAY_ACTIVE -->*/
/* 	<div class="action-bar bottom">*/
/* 		<!-- IF not S_IS_BOT and S_DISPLAY_POST_INFO -->*/
/* 			<div class="buttons">*/
/* 				<!-- EVENT viewforum_buttons_bottom_before -->*/
/* */
/* 				<a href="{U_POST_NEW_TOPIC}" class="button icon-button <!-- IF S_IS_LOCKED -->locked-icon<!-- ELSE -->post-icon<!-- ENDIF -->" title="<!-- IF S_IS_LOCKED -->{L_FORUM_LOCKED}<!-- ELSE -->{L_POST_TOPIC}<!-- ENDIF -->">*/
/* 					<!-- IF S_IS_LOCKED -->{L_BUTTON_FORUM_LOCKED}<!-- ELSE -->{L_BUTTON_NEW_TOPIC}<!-- ENDIF -->*/
/* 				</a>*/
/* */
/* 				<!-- EVENT viewforum_buttons_bottom_after -->*/
/* 			</div>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<div class="pagination">*/
/* 			<!-- IF not S_IS_BOT and U_MARK_TOPICS and .topicrow --><a href="{U_MARK_TOPICS}" data-ajax="mark_topics_read">{L_MARK_TOPICS_READ}</a> &bull; <!-- ENDIF -->*/
/* 			{TOTAL_TOPICS}*/
/* 			<!-- IF .pagination -->*/
/* 				<!-- INCLUDE pagination.html -->*/
/* 			<!-- ELSE -->*/
/* 				 &bull; {PAGE_NUMBER}*/
/* 			<!-- ENDIF -->*/
/* 		</div>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- INCLUDE jumpbox.html -->*/
/* */
/* <!-- IF S_DISPLAY_ONLINE_LIST -->*/
/* 	<div class="stat-block online-list">*/
/* 		<h3><!-- IF U_VIEWONLINE --><a href="{U_VIEWONLINE}">{L_WHO_IS_ONLINE}</a><!-- ELSE -->{L_WHO_IS_ONLINE}<!-- ENDIF --></h3>*/
/* 		<p>{LOGGED_IN_USER_LIST}</p>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_DISPLAY_POST_INFO -->*/
/* 	<div class="stat-block permissions">*/
/* 		<h3>{L_FORUM_PERMISSIONS}</h3>*/
/* 		<p><!-- BEGIN rules -->{rules.RULE}<br /><!-- END rules --></p>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- INCLUDE overall_footer.html -->*/
/* */
