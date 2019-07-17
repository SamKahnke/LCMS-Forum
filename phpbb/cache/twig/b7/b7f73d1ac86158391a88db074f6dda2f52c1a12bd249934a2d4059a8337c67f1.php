<?php

/* viewtopic_body.html */
class __TwigTemplate_10f5acb910d2bb8e7c9b6654dbbc73bb1ad88815c95fe61313730e42ca6a634d extends Twig_Template
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
        if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (((((((isset($context["U_VIEW_UNREAD_POST"]) ? $context["U_VIEW_UNREAD_POST"] : null) || (isset($context["U_WATCH_TOPIC"]) ? $context["U_WATCH_TOPIC"] : null)) || (isset($context["U_BOOKMARK_TOPIC"]) ? $context["U_BOOKMARK_TOPIC"] : null)) || (isset($context["U_BUMP_TOPIC"]) ? $context["U_BUMP_TOPIC"] : null)) || (isset($context["U_EMAIL_TOPIC"]) ? $context["U_EMAIL_TOPIC"] : null)) || (isset($context["U_PRINT_TOPIC"]) ? $context["U_PRINT_TOPIC"] : null)) || (isset($context["S_DISPLAY_TOPIC_TOOLS"]) ? $context["S_DISPLAY_TOPIC_TOOLS"] : null)))) {
            // line 3
            echo "\t";
            if ((isset($context["U_VIEW_UNREAD_POST"]) ? $context["U_VIEW_UNREAD_POST"] : null)) {
                // line 4
                echo "\t\t<li class=\"small-icon icon-mark\"><a href=\"";
                echo (isset($context["U_VIEW_UNREAD_POST"]) ? $context["U_VIEW_UNREAD_POST"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("VIEW_UNREAD_POST");
                echo "</a></li>
\t";
            }
            // line 6
            echo "\t";
            if ((isset($context["U_WATCH_TOPIC"]) ? $context["U_WATCH_TOPIC"] : null)) {
                // line 7
                echo "\t\t<li class=\"small-icon icon-";
                if ((isset($context["S_WATCHING_TOPIC"]) ? $context["S_WATCHING_TOPIC"] : null)) {
                    echo "unsubscribe";
                } else {
                    echo "subscribe";
                }
                echo "\">
\t\t\t<a href=\"";
                // line 8
                echo (isset($context["U_WATCH_TOPIC"]) ? $context["U_WATCH_TOPIC"] : null);
                echo "\" class=\"watch-topic-link\" title=\"";
                echo (isset($context["S_WATCH_TOPIC_TITLE"]) ? $context["S_WATCH_TOPIC_TITLE"] : null);
                echo "\" data-ajax=\"toggle_link\" data-toggle-class=\"small-icon icon-";
                if ( !(isset($context["S_WATCHING_TOPIC"]) ? $context["S_WATCHING_TOPIC"] : null)) {
                    echo "unsubscribe";
                } else {
                    echo "subscribe";
                }
                echo "\" data-toggle-text=\"";
                echo (isset($context["S_WATCH_TOPIC_TOGGLE"]) ? $context["S_WATCH_TOPIC_TOGGLE"] : null);
                echo "\" data-toggle-url=\"";
                echo (isset($context["U_WATCH_TOPIC_TOGGLE"]) ? $context["U_WATCH_TOPIC_TOGGLE"] : null);
                echo "\" data-update-all=\".watch-topic-link\">";
                echo (isset($context["S_WATCH_TOPIC_TITLE"]) ? $context["S_WATCH_TOPIC_TITLE"] : null);
                echo "</a>
\t\t</li>
\t";
            }
            // line 11
            $value = 1;
            $context['definition']->set('NAVLINKS_SHOW_DEFAULT', $value);
        }
        $value = ('' === $value = ob_get_clean()) ? '' : new \Twig_Markup($value, $this->env->getCharset());
        $context['definition']->set('NAVLINKS', $value);
        // line 14
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "viewtopic_body.html", 14)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 15
        echo "
<h2 class=\"topic-title\">";
        // line 16
        echo "<a href=\"";
        echo (isset($context["U_VIEW_TOPIC"]) ? $context["U_VIEW_TOPIC"] : null);
        echo "\">";
        echo (isset($context["TOPIC_TITLE"]) ? $context["TOPIC_TITLE"] : null);
        echo "</a>";
        echo "</h2>
";
        // line 17
        // line 18
        echo "<!-- NOTE: remove the style=\"display: none\" when you want to have the forum description on the topic body -->
";
        // line 19
        if ((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null)) {
            echo "<div style=\"display: none !important;\">";
            echo (isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null);
            echo "<br /></div>";
        }
        // line 20
        echo "
";
        // line 21
        if ((isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) {
            // line 22
            echo "<p>
\t<strong>";
            // line 23
            if ((isset($context["S_SINGLE_MODERATOR"]) ? $context["S_SINGLE_MODERATOR"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("MODERATOR");
            } else {
                echo $this->env->getExtension('phpbb')->lang("MODERATORS");
            }
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</strong> ";
            echo (isset($context["MODERATORS"]) ? $context["MODERATORS"] : null);
            echo "
</p>
";
        }
        // line 26
        echo "
";
        // line 27
        if ((isset($context["S_FORUM_RULES"]) ? $context["S_FORUM_RULES"] : null)) {
            // line 28
            echo "\t<div class=\"rules";
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                echo " rules-link";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t";
            // line 31
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                // line 32
                echo "\t\t\t<a href=\"";
                echo (isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</a>
\t\t";
            } else {
                // line 34
                echo "\t\t\t<strong>";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</strong><br />
\t\t\t";
                // line 35
                echo (isset($context["FORUM_RULES"]) ? $context["FORUM_RULES"] : null);
                echo "
\t\t";
            }
            // line 37
            echo "
\t\t</div>
\t</div>
";
        }
        // line 41
        echo "
<div class=\"action-bar top\">

\t<div class=\"buttons\">
\t\t";
        // line 45
        // line 46
        echo "
\t";
        // line 47
        if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["S_DISPLAY_REPLY_INFO"]) ? $context["S_DISPLAY_REPLY_INFO"] : null))) {
            // line 48
            echo "\t\t<a href=\"";
            echo (isset($context["U_POST_REPLY_TOPIC"]) ? $context["U_POST_REPLY_TOPIC"] : null);
            echo "\" class=\"button icon-button ";
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo "locked-icon";
            } else {
                echo "reply-icon";
            }
            echo "\" title=\"";
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("POST_REPLY");
            }
            echo "\">
\t\t\t";
            // line 49
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_POST_REPLY");
            }
            // line 50
            echo "\t\t</a>
\t";
        }
        // line 52
        echo "
\t\t";
        // line 53
        // line 54
        echo "\t</div>

\t";
        // line 56
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("viewtopic_topic_tools.html", "viewtopic_body.html", 56)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 57
        echo "\t";
        // line 58
        echo "
\t";
        // line 59
        if ((isset($context["S_DISPLAY_SEARCHBOX"]) ? $context["S_DISPLAY_SEARCHBOX"] : null)) {
            // line 60
            echo "\t\t<div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"get\" id=\"topic-search\" action=\"";
            // line 61
            echo (isset($context["S_SEARCHBOX_ACTION"]) ? $context["S_SEARCHBOX_ACTION"] : null);
            echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\"  type=\"search\" name=\"keywords\" id=\"search_keywords\" size=\"20\" placeholder=\"";
            // line 63
            echo $this->env->getExtension('phpbb')->lang("SEARCH_TOPIC");
            echo "\" />
\t\t\t\t<button class=\"button icon-button search-icon\" type=\"submit\" title=\"";
            // line 64
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "</button>
\t\t\t\t<a href=\"";
            // line 65
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" class=\"button icon-button search-adv-icon\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "</a>
\t\t\t\t";
            // line 66
            echo (isset($context["S_SEARCH_LOCAL_HIDDEN_FIELDS"]) ? $context["S_SEARCH_LOCAL_HIDDEN_FIELDS"] : null);
            echo "
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t";
        }
        // line 71
        echo "
\t";
        // line 72
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null))) {
            // line 73
            echo "\t\t<div class=\"pagination\">
\t\t\t";
            // line 74
            if (((isset($context["U_VIEW_UNREAD_POST"]) ? $context["U_VIEW_UNREAD_POST"] : null) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                echo "<a href=\"";
                echo (isset($context["U_VIEW_UNREAD_POST"]) ? $context["U_VIEW_UNREAD_POST"] : null);
                echo "\" class=\"mark\">";
                echo $this->env->getExtension('phpbb')->lang("VIEW_UNREAD_POST");
                echo "</a> &bull; ";
            }
            echo (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null);
            echo "
\t\t\t";
            // line 75
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 76
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewtopic_body.html", 76)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 77
                echo "\t\t\t";
            } else {
                // line 78
                echo "\t\t\t\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 80
            echo "\t\t</div>
\t";
        }
        // line 82
        echo "\t";
        // line 83
        echo "</div>

";
        // line 85
        // line 86
        echo "
";
        // line 87
        if ((isset($context["S_HAS_POLL"]) ? $context["S_HAS_POLL"] : null)) {
            // line 88
            echo "\t<form method=\"post\" action=\"";
            echo (isset($context["S_POLL_ACTION"]) ? $context["S_POLL_ACTION"] : null);
            echo "\" data-ajax=\"vote_poll\" class=\"topic_poll\">

\t<div class=\"panel\">
\t\t<div class=\"inner\">

\t\t<div class=\"content\">
\t\t\t<h2 class=\"poll-title\">";
            // line 94
            echo (isset($context["POLL_QUESTION"]) ? $context["POLL_QUESTION"] : null);
            echo "</h2>
\t\t\t<p class=\"author\">";
            // line 95
            echo $this->env->getExtension('phpbb')->lang("POLL_LENGTH");
            if (((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null) && (isset($context["L_POLL_LENGTH"]) ? $context["L_POLL_LENGTH"] : null))) {
                echo "<br />";
            }
            if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                echo "<span class=\"poll_max_votes\">";
                echo $this->env->getExtension('phpbb')->lang("MAX_VOTES");
                echo "</span>";
            }
            echo "</p>

\t\t\t<fieldset class=\"polls\">
\t\t\t";
            // line 98
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "poll_option", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["poll_option"]) {
                // line 99
                echo "\t\t\t\t";
                // line 100
                echo "\t\t\t\t<dl class=\"";
                if ($this->getAttribute($context["poll_option"], "POLL_OPTION_VOTED", array())) {
                    echo "voted";
                }
                if ($this->getAttribute($context["poll_option"], "POLL_OPTION_MOST_VOTES", array())) {
                    echo " most-votes";
                }
                echo "\"";
                if ($this->getAttribute($context["poll_option"], "POLL_OPTION_VOTED", array())) {
                    echo " title=\"";
                    echo $this->env->getExtension('phpbb')->lang("POLL_VOTED_OPTION");
                    echo "\"";
                }
                echo " data-alt-text=\"";
                echo $this->env->getExtension('phpbb')->lang("POLL_VOTED_OPTION");
                echo "\" data-poll-option-id=\"";
                echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                echo "\">
\t\t\t\t\t<dt>";
                // line 101
                if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                    echo "<label for=\"vote_";
                    echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                    echo "\">";
                    echo $this->getAttribute($context["poll_option"], "POLL_OPTION_CAPTION", array());
                    echo "</label>";
                } else {
                    echo $this->getAttribute($context["poll_option"], "POLL_OPTION_CAPTION", array());
                }
                echo "</dt>
\t\t\t\t\t";
                // line 102
                if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                    echo "<dd style=\"width: auto;\" class=\"poll_option_select\">";
                    if ((isset($context["S_IS_MULTI_CHOICE"]) ? $context["S_IS_MULTI_CHOICE"] : null)) {
                        echo "<input type=\"checkbox\" name=\"vote_id[]\" id=\"vote_";
                        echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                        echo "\" value=\"";
                        echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                        echo "\"";
                        if ($this->getAttribute($context["poll_option"], "POLL_OPTION_VOTED", array())) {
                            echo " checked=\"checked\"";
                        }
                        echo " />";
                    } else {
                        echo "<input type=\"radio\" name=\"vote_id[]\" id=\"vote_";
                        echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                        echo "\" value=\"";
                        echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                        echo "\"";
                        if ($this->getAttribute($context["poll_option"], "POLL_OPTION_VOTED", array())) {
                            echo " checked=\"checked\"";
                        }
                        echo " />";
                    }
                    echo "</dd>";
                }
                // line 103
                echo "\t\t\t\t\t<dd class=\"resultbar";
                if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                    echo " hidden";
                }
                echo "\"><div class=\"";
                if (($this->getAttribute($context["poll_option"], "POLL_OPTION_PCT", array()) < 20)) {
                    echo "pollbar1";
                } elseif (($this->getAttribute($context["poll_option"], "POLL_OPTION_PCT", array()) < 40)) {
                    echo "pollbar2";
                } elseif (($this->getAttribute($context["poll_option"], "POLL_OPTION_PCT", array()) < 60)) {
                    echo "pollbar3";
                } elseif (($this->getAttribute($context["poll_option"], "POLL_OPTION_PCT", array()) < 80)) {
                    echo "pollbar4";
                } else {
                    echo "pollbar5";
                }
                echo "\" style=\"width:";
                echo $this->getAttribute($context["poll_option"], "POLL_OPTION_PERCENT_REL", array());
                echo ";\">";
                echo $this->getAttribute($context["poll_option"], "POLL_OPTION_RESULT", array());
                echo "</div></dd>
\t\t\t\t\t<dd class=\"poll_option_percent";
                // line 104
                if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                    echo " hidden";
                }
                echo "\">";
                if (($this->getAttribute($context["poll_option"], "POLL_OPTION_RESULT", array()) == 0)) {
                    echo $this->env->getExtension('phpbb')->lang("NO_VOTES");
                } else {
                    echo $this->getAttribute($context["poll_option"], "POLL_OPTION_PERCENT", array());
                }
                echo "</dd>
\t\t\t\t</dl>
\t\t\t\t";
                // line 106
                // line 107
                echo "\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['poll_option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 108
            echo "
\t\t\t\t<dl class=\"poll_total_votes";
            // line 109
            if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                echo " hidden";
            }
            echo "\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\">";
            // line 111
            echo $this->env->getExtension('phpbb')->lang("TOTAL_VOTES");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <span class=\"poll_total_vote_cnt\">";
            echo (isset($context["TOTAL_VOTES"]) ? $context["TOTAL_VOTES"] : null);
            echo "</span></dd>
\t\t\t\t</dl>

\t\t\t";
            // line 114
            if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                // line 115
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_vote\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><input type=\"submit\" name=\"update\" value=\"";
                // line 117
                echo $this->env->getExtension('phpbb')->lang("SUBMIT_VOTE");
                echo "\" class=\"button1\" /></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 120
            echo "
\t\t\t";
            // line 121
            if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                // line 122
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_view_results\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><a href=\"";
                // line 124
                echo (isset($context["U_VIEW_RESULTS"]) ? $context["U_VIEW_RESULTS"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("VIEW_RESULTS");
                echo "</a></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 127
            echo "\t\t\t</fieldset>
\t\t\t<div class=\"vote-submitted hidden\">";
            // line 128
            echo $this->env->getExtension('phpbb')->lang("VOTE_SUBMITTED");
            echo "</div>
\t\t</div>

\t\t</div>
\t\t";
            // line 132
            echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
            echo "
\t\t";
            // line 133
            echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
            echo "
\t</div>

\t</form>
";
        }
        // line 138
        echo "
";
        // line 139
        // line 140
        echo "
";
        // line 141
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "postrow", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["postrow"]) {
            // line 142
            echo "\t";
            // line 143
            echo "\t";
            if ($this->getAttribute($context["postrow"], "S_FIRST_UNREAD", array())) {
                // line 144
                echo "\t\t<a id=\"unread\" class=\"anchor\"";
                if ((isset($context["S_UNREAD_VIEW"]) ? $context["S_UNREAD_VIEW"] : null)) {
                    echo " data-url=\"";
                    echo $this->getAttribute($context["postrow"], "U_MINI_POST", array());
                    echo "\"";
                }
                echo "></a>
\t";
            }
            // line 146
            echo "\t<div id=\"p";
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\" class=\"post has-profile ";
            if (($this->getAttribute($context["postrow"], "S_ROW_COUNT", array()) % 2 == 1)) {
                echo "bg1";
            } else {
                echo "bg2";
            }
            if ($this->getAttribute($context["postrow"], "S_UNREAD_POST", array())) {
                echo " unreadpost";
            }
            if ($this->getAttribute($context["postrow"], "S_POST_REPORTED", array())) {
                echo " reported";
            }
            if ($this->getAttribute($context["postrow"], "S_POST_DELETED", array())) {
                echo " deleted";
            }
            if (($this->getAttribute($context["postrow"], "S_ONLINE", array()) &&  !$this->getAttribute($context["postrow"], "S_POST_HIDDEN", array()))) {
                echo " online";
            }
            if ($this->getAttribute($context["postrow"], "POSTER_WARNINGS", array())) {
                echo " warned";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t<dl class=\"postprofile\" id=\"profile";
            // line 149
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\"";
            if ($this->getAttribute($context["postrow"], "S_POST_HIDDEN", array())) {
                echo " style=\"display: none;\"";
            }
            echo ">
\t\t\t<dt class=\"";
            // line 150
            if (($this->getAttribute($context["postrow"], "RANK_TITLE", array()) || $this->getAttribute($context["postrow"], "RANK_IMG", array()))) {
                echo "has-profile-rank";
            } else {
                echo "no-profile-rank";
            }
            echo " ";
            if ($this->getAttribute($context["postrow"], "POSTER_AVATAR", array())) {
                echo "has-avatar";
            } else {
                echo "no-avatar";
            }
            echo "\">
\t\t\t\t<div class=\"avatar-container\">
\t\t\t\t\t";
            // line 152
            // line 153
            echo "\t\t\t\t\t";
            if ($this->getAttribute($context["postrow"], "POSTER_AVATAR", array())) {
                // line 154
                echo "\t\t\t\t\t\t";
                if ($this->getAttribute($context["postrow"], "U_POST_AUTHOR", array())) {
                    echo "<a href=\"";
                    echo $this->getAttribute($context["postrow"], "U_POST_AUTHOR", array());
                    echo "\" class=\"avatar\">";
                    echo $this->getAttribute($context["postrow"], "POSTER_AVATAR", array());
                    echo "</a>";
                } else {
                    echo "<span class=\"avatar\">";
                    echo $this->getAttribute($context["postrow"], "POSTER_AVATAR", array());
                    echo "</span>";
                }
                // line 155
                echo "\t\t\t\t\t";
            }
            // line 156
            echo "\t\t\t\t\t";
            // line 157
            echo "\t\t\t\t</div>
\t\t\t\t";
            // line 158
            // line 159
            echo "\t\t\t\t";
            if ( !$this->getAttribute($context["postrow"], "U_POST_AUTHOR", array())) {
                echo "<strong>";
                echo $this->getAttribute($context["postrow"], "POST_AUTHOR_FULL", array());
                echo "</strong>";
            } else {
                echo $this->getAttribute($context["postrow"], "POST_AUTHOR_FULL", array());
            }
            // line 160
            echo "\t\t\t\t";
            // line 161
            echo "\t\t\t</dt>

\t\t\t";
            // line 163
            // line 164
            echo "\t\t\t";
            if (($this->getAttribute($context["postrow"], "RANK_TITLE", array()) || $this->getAttribute($context["postrow"], "RANK_IMG", array()))) {
                echo "<dd class=\"profile-rank\">";
                echo $this->getAttribute($context["postrow"], "RANK_TITLE", array());
                if (($this->getAttribute($context["postrow"], "RANK_TITLE", array()) && $this->getAttribute($context["postrow"], "RANK_IMG", array()))) {
                    echo "<br />";
                }
                echo $this->getAttribute($context["postrow"], "RANK_IMG", array());
                echo "</dd>";
            }
            // line 165
            echo "\t\t\t";
            // line 166
            echo "
\t\t";
            // line 167
            if (($this->getAttribute($context["postrow"], "POSTER_POSTS", array()) != "")) {
                echo "<dd class=\"profile-posts\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("POSTS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                if (($this->getAttribute($context["postrow"], "U_SEARCH", array()) !== "")) {
                    echo "<a href=\"";
                    echo $this->getAttribute($context["postrow"], "U_SEARCH", array());
                    echo "\">";
                }
                echo $this->getAttribute($context["postrow"], "POSTER_POSTS", array());
                if (($this->getAttribute($context["postrow"], "U_SEARCH", array()) !== "")) {
                    echo "</a>";
                }
                echo "</dd>";
            }
            // line 168
            echo "\t\t";
            if ($this->getAttribute($context["postrow"], "POSTER_JOINED", array())) {
                echo "<dd class=\"profile-joined\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("JOINED");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo $this->getAttribute($context["postrow"], "POSTER_JOINED", array());
                echo "</dd>";
            }
            // line 169
            echo "\t\t";
            if ($this->getAttribute($context["postrow"], "POSTER_WARNINGS", array())) {
                echo "<dd class=\"profile-warnings\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("WARNINGS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo $this->getAttribute($context["postrow"], "POSTER_WARNINGS", array());
                echo "</dd>";
            }
            // line 170
            echo "
\t\t";
            // line 171
            if ($this->getAttribute($context["postrow"], "S_PROFILE_FIELD1", array())) {
                // line 172
                echo "\t\t\t<!-- Use a construct like this to include admin defined profile fields. Replace FIELD1 with the name of your field. -->
\t\t\t<dd><strong>";
                // line 173
                echo $this->getAttribute($context["postrow"], "PROFILE_FIELD1_NAME", array());
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo $this->getAttribute($context["postrow"], "PROFILE_FIELD1_VALUE", array());
                echo "</dd>
\t\t";
            }
            // line 175
            echo "
\t\t";
            // line 176
            // line 177
            echo "\t\t";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["postrow"], "custom_fields", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
                // line 178
                echo "\t\t\t";
                if ( !$this->getAttribute($context["custom_fields"], "S_PROFILE_CONTACT", array())) {
                    // line 179
                    echo "\t\t\t\t<dd class=\"profile-custom-field profile-";
                    echo $this->getAttribute($context["custom_fields"], "PROFILE_FIELD_IDENT", array());
                    echo "\"><strong>";
                    echo $this->getAttribute($context["custom_fields"], "PROFILE_FIELD_NAME", array());
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> ";
                    echo $this->getAttribute($context["custom_fields"], "PROFILE_FIELD_VALUE", array());
                    echo "</dd>
\t\t\t";
                }
                // line 181
                echo "\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 182
            echo "\t\t";
            // line 183
            echo "
\t\t";
            // line 184
            // line 185
            echo "\t\t";
            if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && twig_length_filter($this->env, $this->getAttribute($context["postrow"], "contact", array())))) {
                // line 186
                echo "\t\t\t<dd class=\"profile-contact\">
\t\t\t\t<strong>";
                // line 187
                echo $this->env->getExtension('phpbb')->lang("CONTACT");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong>
\t\t\t\t<div class=\"dropdown-container dropdown-";
                // line 188
                echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
                echo " dropdown-down\">
\t\t\t\t\t<a href=\"#\" class=\"dropdown-trigger\"><span class=\"imageset icon_contact\" title=\"";
                // line 189
                echo $this->getAttribute($context["postrow"], "CONTACT_USER", array());
                echo "\">";
                echo $this->getAttribute($context["postrow"], "CONTACT_USER", array());
                echo "</span></a>
\t\t\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t<div class=\"dropdown-contents contact-icons\">
\t\t\t\t\t\t\t";
                // line 193
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["postrow"], "contact", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["contact"]) {
                    // line 194
                    echo "\t\t\t\t\t\t\t\t";
                    $context["REMAINDER"] = ($this->getAttribute($context["contact"], "S_ROW_COUNT", array()) % 4);
                    // line 195
                    echo "\t\t\t\t\t\t\t\t";
                    $value = (((isset($context["REMAINDER"]) ? $context["REMAINDER"] : null) == 3) || ($this->getAttribute($context["contact"], "S_LAST_ROW", array()) && ($this->getAttribute($context["contact"], "S_NUM_ROWS", array()) < 4)));
                    $context['definition']->set('S_LAST_CELL', $value);
                    // line 196
                    echo "\t\t\t\t\t\t\t\t";
                    if (((isset($context["REMAINDER"]) ? $context["REMAINDER"] : null) == 0)) {
                        // line 197
                        echo "\t\t\t\t\t\t\t\t\t<div>
\t\t\t\t\t\t\t\t";
                    }
                    // line 199
                    echo "\t\t\t\t\t\t\t\t\t<a href=\"";
                    if ($this->getAttribute($context["contact"], "U_CONTACT", array())) {
                        echo $this->getAttribute($context["contact"], "U_CONTACT", array());
                    } else {
                        echo $this->getAttribute($context["postrow"], "U_POST_AUTHOR", array());
                    }
                    echo "\" title=\"";
                    echo $this->getAttribute($context["contact"], "NAME", array());
                    echo "\"";
                    if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "S_LAST_CELL", array())) {
                        echo " class=\"last-cell\"";
                    }
                    if (($this->getAttribute($context["contact"], "ID", array()) == "jabber")) {
                        echo " onclick=\"popup(this.href, 750, 320); return false;\"";
                    }
                    echo ">
\t\t\t\t\t\t\t\t\t\t<span class=\"contact-icon ";
                    // line 200
                    echo $this->getAttribute($context["contact"], "ID", array());
                    echo "-icon\">";
                    echo $this->getAttribute($context["contact"], "NAME", array());
                    echo "</span>
\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t";
                    // line 202
                    if ((((isset($context["REMAINDER"]) ? $context["REMAINDER"] : null) == 3) || $this->getAttribute($context["contact"], "S_LAST_ROW", array()))) {
                        // line 203
                        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
                    }
                    // line 205
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['contact'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 206
                echo "\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</dd>
\t\t";
            }
            // line 211
            echo "\t\t";
            // line 212
            echo "
\t\t</dl>

\t\t<div class=\"postbody\">

\t\t\t";
            // line 217
            if ($this->getAttribute($context["postrow"], "S_POST_HIDDEN", array())) {
                // line 218
                echo "\t\t\t\t";
                if ($this->getAttribute($context["postrow"], "S_POST_DELETED", array())) {
                    // line 219
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo $this->getAttribute($context["postrow"], "POST_ID", array());
                    echo "\">
\t\t\t\t\t\t";
                    // line 220
                    echo $this->getAttribute($context["postrow"], "L_POST_DELETED_MESSAGE", array());
                    echo "<br />
\t\t\t\t\t\t";
                    // line 221
                    echo $this->getAttribute($context["postrow"], "L_POST_DISPLAY", array());
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                } elseif ($this->getAttribute(                // line 223
$context["postrow"], "S_IGNORE_POST", array())) {
                    // line 224
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo $this->getAttribute($context["postrow"], "POST_ID", array());
                    echo "\">
\t\t\t\t\t\t";
                    // line 225
                    echo $this->getAttribute($context["postrow"], "L_IGNORE_POST", array());
                    echo "<br />
\t\t\t\t\t\t";
                    // line 226
                    echo $this->getAttribute($context["postrow"], "L_POST_DISPLAY", array());
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                }
                // line 229
                echo "\t\t\t";
            }
            // line 230
            echo "\t\t\t<div id=\"post_content";
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\"";
            if ($this->getAttribute($context["postrow"], "S_POST_HIDDEN", array())) {
                echo " style=\"display: none;\"";
            }
            echo ">

\t\t\t";
            // line 232
            // line 233
            echo "\t\t\t<h3 ";
            if ($this->getAttribute($context["postrow"], "S_FIRST_ROW", array())) {
                echo "class=\"first\"";
            }
            echo ">";
            if ($this->getAttribute($context["postrow"], "POST_ICON_IMG", array())) {
                echo "<img src=\"";
                echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                echo $this->getAttribute($context["postrow"], "POST_ICON_IMG", array());
                echo "\" width=\"";
                echo $this->getAttribute($context["postrow"], "POST_ICON_IMG_WIDTH", array());
                echo "\" height=\"";
                echo $this->getAttribute($context["postrow"], "POST_ICON_IMG_HEIGHT", array());
                echo "\" alt=\"\" /> ";
            }
            echo "<a href=\"#p";
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\">";
            echo $this->getAttribute($context["postrow"], "POST_SUBJECT", array());
            echo "</a></h3>

\t\t";
            // line 235
            $value = ((((($this->getAttribute($context["postrow"], "U_EDIT", array()) || $this->getAttribute($context["postrow"], "U_DELETE", array())) || $this->getAttribute($context["postrow"], "U_REPORT", array())) || $this->getAttribute($context["postrow"], "U_WARN", array())) || $this->getAttribute($context["postrow"], "U_INFO", array())) || $this->getAttribute($context["postrow"], "U_QUOTE", array()));
            $context['definition']->set('SHOW_POST_BUTTONS', $value);
            // line 236
            echo "\t\t";
            // line 237
            echo "\t\t";
            if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                // line 238
                echo "\t\t\t";
                if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SHOW_POST_BUTTONS", array())) {
                    // line 239
                    echo "\t\t\t\t<ul class=\"post-buttons\">
\t\t\t\t\t";
                    // line 240
                    // line 241
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_EDIT", array())) {
                        // line 242
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 243
                        echo $this->getAttribute($context["postrow"], "U_EDIT", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("EDIT_POST");
                        echo "\" class=\"button icon-button edit-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("BUTTON_EDIT");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 246
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_DELETE", array())) {
                        // line 247
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 248
                        echo $this->getAttribute($context["postrow"], "U_DELETE", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("DELETE_POST");
                        echo "\" class=\"button icon-button delete-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("DELETE_POST");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 251
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_REPORT", array())) {
                        // line 252
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 253
                        echo $this->getAttribute($context["postrow"], "U_REPORT", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("REPORT_POST");
                        echo "\" class=\"button icon-button report-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("REPORT_POST");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 256
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_WARN", array())) {
                        // line 257
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 258
                        echo $this->getAttribute($context["postrow"], "U_WARN", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("WARN_USER");
                        echo "\" class=\"button icon-button warn-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("WARN_USER");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 261
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_INFO", array())) {
                        // line 262
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 263
                        echo $this->getAttribute($context["postrow"], "U_INFO", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("INFORMATION");
                        echo "\" class=\"button icon-button info-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("INFORMATION");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 266
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_QUOTE", array())) {
                        // line 267
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 268
                        echo $this->getAttribute($context["postrow"], "U_QUOTE", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("REPLY_WITH_QUOTE");
                        echo "\" class=\"button icon-button quote-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("QUOTE");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 271
                    echo "\t\t\t\t\t";
                    // line 272
                    echo "\t\t\t\t</ul>
\t\t\t";
                }
                // line 274
                echo "\t\t";
            }
            // line 275
            echo "\t\t";
            // line 276
            echo "
\t\t\t";
            // line 277
            // line 278
            echo "\t\t\t<p class=\"author\">";
            if ((isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                echo $this->getAttribute($context["postrow"], "MINI_POST_IMG", array());
            } else {
                echo "<a href=\"";
                echo $this->getAttribute($context["postrow"], "U_MINI_POST", array());
                echo "\">";
                echo $this->getAttribute($context["postrow"], "MINI_POST_IMG", array());
                echo "</a>";
            }
            echo "<span class=\"responsive-hide\">";
            echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
            echo " <strong>";
            echo $this->getAttribute($context["postrow"], "POST_AUTHOR_FULL", array());
            echo "</strong> &raquo; </span>";
            echo $this->getAttribute($context["postrow"], "POST_DATE", array());
            echo " </p>
\t\t\t";
            // line 279
            // line 280
            echo "
\t\t\t";
            // line 281
            if ($this->getAttribute($context["postrow"], "S_POST_UNAPPROVED", array())) {
                // line 282
                echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                echo $this->getAttribute($context["postrow"], "U_APPROVE_ACTION", array());
                echo "\">
\t\t\t\t<p class=\"post-notice unapproved\">
\t\t\t\t\t<strong>";
                // line 284
                echo $this->env->getExtension('phpbb')->lang("POST_UNAPPROVED_ACTION");
                echo "</strong>
\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                // line 285
                echo $this->env->getExtension('phpbb')->lang("DISAPPROVE");
                echo "\" name=\"action[disapprove]\" />
\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                // line 286
                echo $this->env->getExtension('phpbb')->lang("APPROVE");
                echo "\" name=\"action[approve]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                // line 287
                echo $this->getAttribute($context["postrow"], "POST_ID", array());
                echo "\" />
\t\t\t\t\t";
                // line 288
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
            } elseif ($this->getAttribute(            // line 291
$context["postrow"], "S_POST_DELETED", array())) {
                // line 292
                echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                echo $this->getAttribute($context["postrow"], "U_APPROVE_ACTION", array());
                echo "\">
\t\t\t\t<p class=\"post-notice deleted\">
\t\t\t\t\t<strong>";
                // line 294
                echo $this->env->getExtension('phpbb')->lang("POST_DELETED_ACTION");
                echo "</strong>
\t\t\t\t\t";
                // line 295
                if ($this->getAttribute($context["postrow"], "S_DELETE_PERMANENT", array())) {
                    // line 296
                    echo "\t\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                    echo $this->env->getExtension('phpbb')->lang("DELETE");
                    echo "\" name=\"action[delete]\" />
\t\t\t\t\t";
                }
                // line 298
                echo "\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                echo $this->env->getExtension('phpbb')->lang("RESTORE");
                echo "\" name=\"action[restore]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                // line 299
                echo $this->getAttribute($context["postrow"], "POST_ID", array());
                echo "\" />
\t\t\t\t\t";
                // line 300
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
            }
            // line 304
            echo "
\t\t\t";
            // line 305
            if ($this->getAttribute($context["postrow"], "S_POST_REPORTED", array())) {
                // line 306
                echo "\t\t\t<p class=\"post-notice reported\">
\t\t\t\t<a href=\"";
                // line 307
                echo $this->getAttribute($context["postrow"], "U_MCP_REPORT", array());
                echo "\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("POST_REPORTED");
                echo "</strong></a>
\t\t\t</p>
\t\t\t";
            }
            // line 310
            echo "
\t\t\t<div class=\"content\">";
            // line 311
            echo $this->getAttribute($context["postrow"], "MESSAGE", array());
            echo "</div>

\t\t\t";
            // line 313
            if ($this->getAttribute($context["postrow"], "S_HAS_ATTACHMENTS", array())) {
                // line 314
                echo "\t\t\t\t<dl class=\"attachbox\">
\t\t\t\t\t<dt>
\t\t\t\t\t\t";
                // line 316
                echo $this->env->getExtension('phpbb')->lang("ATTACHMENTS");
                echo "
\t\t\t\t\t</dt>
\t\t\t\t\t";
                // line 318
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["postrow"], "attachment", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["attachment"]) {
                    // line 319
                    echo "\t\t\t\t\t\t<dd>";
                    echo $this->getAttribute($context["attachment"], "DISPLAY_ATTACHMENT", array());
                    echo "</dd>
\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attachment'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 321
                echo "\t\t\t\t</dl>
\t\t\t";
            }
            // line 323
            echo "
\t\t\t";
            // line 324
            // line 325
            echo "\t\t\t";
            if ($this->getAttribute($context["postrow"], "S_DISPLAY_NOTICE", array())) {
                echo "<div class=\"rules\">";
                echo $this->env->getExtension('phpbb')->lang("DOWNLOAD_NOTICE");
                echo "</div>";
            }
            // line 326
            echo "\t\t\t";
            if (($this->getAttribute($context["postrow"], "DELETED_MESSAGE", array()) || $this->getAttribute($context["postrow"], "DELETE_REASON", array()))) {
                // line 327
                echo "\t\t\t\t<div class=\"notice post_deleted_msg\">
\t\t\t\t\t";
                // line 328
                echo $this->getAttribute($context["postrow"], "DELETED_MESSAGE", array());
                echo "
\t\t\t\t\t";
                // line 329
                if ($this->getAttribute($context["postrow"], "DELETE_REASON", array())) {
                    echo "<br /><strong>";
                    echo $this->env->getExtension('phpbb')->lang("REASON");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> <em>";
                    echo $this->getAttribute($context["postrow"], "DELETE_REASON", array());
                    echo "</em>";
                }
                // line 330
                echo "\t\t\t\t</div>
\t\t\t";
            } elseif (($this->getAttribute(            // line 331
$context["postrow"], "EDITED_MESSAGE", array()) || $this->getAttribute($context["postrow"], "EDIT_REASON", array()))) {
                // line 332
                echo "\t\t\t\t<div class=\"notice\">
\t\t\t\t\t";
                // line 333
                echo $this->getAttribute($context["postrow"], "EDITED_MESSAGE", array());
                echo "
\t\t\t\t\t";
                // line 334
                if ($this->getAttribute($context["postrow"], "EDIT_REASON", array())) {
                    echo "<br /><strong>";
                    echo $this->env->getExtension('phpbb')->lang("REASON");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> <em>";
                    echo $this->getAttribute($context["postrow"], "EDIT_REASON", array());
                    echo "</em>";
                }
                // line 335
                echo "\t\t\t\t</div>
\t\t\t";
            }
            // line 337
            echo "
\t\t\t";
            // line 338
            if ($this->getAttribute($context["postrow"], "BUMPED_MESSAGE", array())) {
                echo "<div class=\"notice\"><br /><br />";
                echo $this->getAttribute($context["postrow"], "BUMPED_MESSAGE", array());
                echo "</div>";
            }
            // line 339
            echo "\t\t\t";
            // line 340
            echo "\t\t\t";
            if ($this->getAttribute($context["postrow"], "SIGNATURE", array())) {
                echo "<div id=\"sig";
                echo $this->getAttribute($context["postrow"], "POST_ID", array());
                echo "\" class=\"signature\">";
                echo $this->getAttribute($context["postrow"], "SIGNATURE", array());
                echo "</div>";
            }
            // line 341
            echo "
\t\t\t";
            // line 342
            // line 343
            echo "\t\t\t</div>

\t\t</div>

\t\t</div>
\t\t";
            // line 348
            // line 349
            echo "\t\t<div class=\"back2top\">";
            echo "<a href=\"#top\" class=\"top\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("BACK_TO_TOP");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("BACK_TO_TOP");
            echo "</a>";
            echo "</div>
\t\t";
            // line 350
            // line 351
            echo "\t</div>

\t";
            // line 353
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['postrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 355
        echo "
";
        // line 356
        if ((isset($context["S_QUICK_REPLY"]) ? $context["S_QUICK_REPLY"] : null)) {
            // line 357
            echo "\t";
            $location = "quickreply_editor.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("quickreply_editor.html", "viewtopic_body.html", 357)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 359
        echo "
";
        // line 360
        if ((((isset($context["S_NUM_POSTS"]) ? $context["S_NUM_POSTS"] : null) > 1) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())))) {
            // line 361
            echo "\t<form id=\"viewtopic\" method=\"post\" action=\"";
            echo (isset($context["S_TOPIC_ACTION"]) ? $context["S_TOPIC_ACTION"] : null);
            echo "\">
\t<fieldset class=\"display-options\" style=\"margin-top: 0; \">
\t\t";
            // line 363
            if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                // line 364
                echo "\t\t<label>";
                echo $this->env->getExtension('phpbb')->lang("DISPLAY_POSTS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo " ";
                echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
                echo "</label>
\t\t<label>";
                // line 365
                echo $this->env->getExtension('phpbb')->lang("SORT_BY");
                echo " ";
                echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
                echo "</label> <label>";
                echo (isset($context["S_SELECT_SORT_DIR"]) ? $context["S_SELECT_SORT_DIR"] : null);
                echo "</label>
\t\t<input type=\"submit\" name=\"sort\" value=\"";
                // line 366
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" class=\"button2\" />
\t\t";
            }
            // line 368
            echo "\t</fieldset>
\t</form>
\t<hr />
";
        }
        // line 372
        echo "
";
        // line 373
        // line 374
        echo "<div class=\"action-bar bottom\">
\t<div class=\"buttons\">
\t\t";
        // line 376
        // line 377
        echo "
\t";
        // line 378
        if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["S_DISPLAY_REPLY_INFO"]) ? $context["S_DISPLAY_REPLY_INFO"] : null))) {
            // line 379
            echo "\t\t<a href=\"";
            echo (isset($context["U_POST_REPLY_TOPIC"]) ? $context["U_POST_REPLY_TOPIC"] : null);
            echo "\" class=\"button icon-button ";
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo "locked-icon";
            } else {
                echo "reply-icon";
            }
            echo "\" title=\"";
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("POST_REPLY");
            }
            echo "\">
\t\t\t";
            // line 380
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_POST_REPLY");
            }
            // line 381
            echo "\t\t</a>
\t";
        }
        // line 383
        echo "
\t\t";
        // line 384
        // line 385
        echo "\t</div>

\t";
        // line 387
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("viewtopic_topic_tools.html", "viewtopic_body.html", 387)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 388
        echo "
\t";
        // line 389
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "quickmod", array()))) {
            // line 390
            echo "\t\t<div class=\"dropdown-container dropdown-container-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo " dropdown-up dropdown-";
            echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
            echo " dropdown-button-control\" id=\"quickmod\">
\t\t\t<span title=\"";
            // line 391
            echo $this->env->getExtension('phpbb')->lang("QUICK_MOD");
            echo "\" class=\"dropdown-trigger button icon-button modtools-icon dropdown-select\">";
            echo $this->env->getExtension('phpbb')->lang("QUICK_MOD");
            echo "</span>
\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t";
            // line 395
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "quickmod", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["quickmod"]) {
                // line 396
                echo "\t\t\t\t\t";
                $value = twig_in_filter($this->getAttribute($context["quickmod"], "VALUE", array()), array(0 => "lock", 1 => "unlock", 2 => "delete_topic", 3 => "restore_topic", 4 => "make_normal", 5 => "make_sticky", 6 => "make_announce", 7 => "make_global"));
                $context['definition']->set('QUICKMOD_AJAX', $value);
                // line 397
                echo "\t\t\t\t\t<li><a href=\"";
                echo $this->getAttribute($context["quickmod"], "LINK", array());
                echo "\"";
                if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "QUICKMOD_AJAX", array())) {
                    echo " data-ajax=\"true\" data-refresh=\"true\"";
                }
                echo ">";
                echo $this->getAttribute($context["quickmod"], "TITLE", array());
                echo "</a></li>
\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['quickmod'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 399
            echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t</div>
\t";
        }
        // line 403
        echo "\t
\t";
        // line 404
        // line 405
        echo "
\t";
        // line 406
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null))) {
            // line 407
            echo "\t\t<div class=\"pagination\">
\t\t\t";
            // line 408
            echo (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null);
            echo "
\t\t\t";
            // line 409
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 410
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewtopic_body.html", 410)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 411
                echo "\t\t\t";
            } else {
                // line 412
                echo "\t\t\t\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 414
            echo "\t\t</div>
\t";
        }
        // line 416
        echo "\t<div class=\"clear\"></div>
</div>

";
        // line 419
        // line 420
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("jumpbox.html", "viewtopic_body.html", 420)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 421
        echo "
";
        // line 422
        if ((isset($context["S_DISPLAY_ONLINE_LIST"]) ? $context["S_DISPLAY_ONLINE_LIST"] : null)) {
            // line 423
            echo "\t<div class=\"stat-block online-list\">
\t\t<h3>";
            // line 424
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
            // line 425
            echo (isset($context["LOGGED_IN_USER_LIST"]) ? $context["LOGGED_IN_USER_LIST"] : null);
            echo "</p>
\t</div>
";
        }
        // line 428
        echo "
";
        // line 429
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "viewtopic_body.html", 429)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "viewtopic_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  1555 => 429,  1552 => 428,  1546 => 425,  1534 => 424,  1531 => 423,  1529 => 422,  1526 => 421,  1514 => 420,  1513 => 419,  1508 => 416,  1504 => 414,  1498 => 412,  1495 => 411,  1482 => 410,  1480 => 409,  1476 => 408,  1473 => 407,  1471 => 406,  1468 => 405,  1467 => 404,  1464 => 403,  1458 => 399,  1443 => 397,  1439 => 396,  1435 => 395,  1426 => 391,  1419 => 390,  1417 => 389,  1414 => 388,  1402 => 387,  1398 => 385,  1397 => 384,  1394 => 383,  1390 => 381,  1384 => 380,  1367 => 379,  1365 => 378,  1362 => 377,  1361 => 376,  1357 => 374,  1356 => 373,  1353 => 372,  1347 => 368,  1342 => 366,  1334 => 365,  1326 => 364,  1324 => 363,  1318 => 361,  1316 => 360,  1313 => 359,  1299 => 357,  1297 => 356,  1294 => 355,  1289 => 353,  1285 => 351,  1284 => 350,  1275 => 349,  1274 => 348,  1267 => 343,  1266 => 342,  1263 => 341,  1254 => 340,  1252 => 339,  1246 => 338,  1243 => 337,  1239 => 335,  1230 => 334,  1226 => 333,  1223 => 332,  1221 => 331,  1218 => 330,  1209 => 329,  1205 => 328,  1202 => 327,  1199 => 326,  1192 => 325,  1191 => 324,  1188 => 323,  1184 => 321,  1175 => 319,  1171 => 318,  1166 => 316,  1162 => 314,  1160 => 313,  1155 => 311,  1152 => 310,  1144 => 307,  1141 => 306,  1139 => 305,  1136 => 304,  1129 => 300,  1125 => 299,  1120 => 298,  1114 => 296,  1112 => 295,  1108 => 294,  1102 => 292,  1100 => 291,  1094 => 288,  1090 => 287,  1086 => 286,  1082 => 285,  1078 => 284,  1072 => 282,  1070 => 281,  1067 => 280,  1066 => 279,  1047 => 278,  1046 => 277,  1043 => 276,  1041 => 275,  1038 => 274,  1034 => 272,  1032 => 271,  1022 => 268,  1019 => 267,  1016 => 266,  1006 => 263,  1003 => 262,  1000 => 261,  990 => 258,  987 => 257,  984 => 256,  974 => 253,  971 => 252,  968 => 251,  958 => 248,  955 => 247,  952 => 246,  942 => 243,  939 => 242,  936 => 241,  935 => 240,  932 => 239,  929 => 238,  926 => 237,  924 => 236,  921 => 235,  898 => 233,  897 => 232,  887 => 230,  884 => 229,  878 => 226,  874 => 225,  869 => 224,  867 => 223,  862 => 221,  858 => 220,  853 => 219,  850 => 218,  848 => 217,  841 => 212,  839 => 211,  832 => 206,  826 => 205,  822 => 203,  820 => 202,  813 => 200,  795 => 199,  791 => 197,  788 => 196,  784 => 195,  781 => 194,  777 => 193,  768 => 189,  764 => 188,  759 => 187,  756 => 186,  753 => 185,  752 => 184,  749 => 183,  747 => 182,  741 => 181,  730 => 179,  727 => 178,  722 => 177,  721 => 176,  718 => 175,  710 => 173,  707 => 172,  705 => 171,  702 => 170,  692 => 169,  682 => 168,  665 => 167,  662 => 166,  660 => 165,  649 => 164,  648 => 163,  644 => 161,  642 => 160,  633 => 159,  632 => 158,  629 => 157,  627 => 156,  624 => 155,  611 => 154,  608 => 153,  607 => 152,  592 => 150,  584 => 149,  556 => 146,  546 => 144,  543 => 143,  541 => 142,  537 => 141,  534 => 140,  533 => 139,  530 => 138,  522 => 133,  518 => 132,  511 => 128,  508 => 127,  500 => 124,  496 => 122,  494 => 121,  491 => 120,  485 => 117,  481 => 115,  479 => 114,  470 => 111,  463 => 109,  460 => 108,  454 => 107,  453 => 106,  440 => 104,  417 => 103,  391 => 102,  379 => 101,  359 => 100,  357 => 99,  353 => 98,  339 => 95,  335 => 94,  325 => 88,  323 => 87,  320 => 86,  319 => 85,  315 => 83,  313 => 82,  309 => 80,  303 => 78,  300 => 77,  287 => 76,  285 => 75,  274 => 74,  271 => 73,  269 => 72,  266 => 71,  258 => 66,  250 => 65,  244 => 64,  240 => 63,  235 => 61,  232 => 60,  230 => 59,  227 => 58,  225 => 57,  213 => 56,  209 => 54,  208 => 53,  205 => 52,  201 => 50,  195 => 49,  178 => 48,  176 => 47,  173 => 46,  172 => 45,  166 => 41,  160 => 37,  155 => 35,  150 => 34,  142 => 32,  140 => 31,  131 => 28,  129 => 27,  126 => 26,  113 => 23,  110 => 22,  108 => 21,  105 => 20,  99 => 19,  96 => 18,  95 => 17,  87 => 16,  84 => 15,  72 => 14,  66 => 11,  46 => 8,  37 => 7,  34 => 6,  26 => 4,  23 => 3,  21 => 2,  19 => 1,);
    }
}
/* <!-- DEFINE $NAVLINKS -->*/
/* <!-- IF not S_IS_BOT and (U_VIEW_UNREAD_POST or U_WATCH_TOPIC or U_BOOKMARK_TOPIC or U_BUMP_TOPIC or U_EMAIL_TOPIC or U_PRINT_TOPIC or S_DISPLAY_TOPIC_TOOLS) -->*/
/* 	<!-- IF U_VIEW_UNREAD_POST -->*/
/* 		<li class="small-icon icon-mark"><a href="{U_VIEW_UNREAD_POST}">{L_VIEW_UNREAD_POST}</a></li>*/
/* 	<!-- ENDIF -->*/
/* 	<!-- IF U_WATCH_TOPIC -->*/
/* 		<li class="small-icon icon-<!-- IF S_WATCHING_TOPIC -->unsubscribe<!-- ELSE -->subscribe<!-- ENDIF -->">*/
/* 			<a href="{U_WATCH_TOPIC}" class="watch-topic-link" title="{S_WATCH_TOPIC_TITLE}" data-ajax="toggle_link" data-toggle-class="small-icon icon-<!-- IF not S_WATCHING_TOPIC -->unsubscribe<!-- ELSE -->subscribe<!-- ENDIF -->" data-toggle-text="{S_WATCH_TOPIC_TOGGLE}" data-toggle-url="{U_WATCH_TOPIC_TOGGLE}" data-update-all=".watch-topic-link">{S_WATCH_TOPIC_TITLE}</a>*/
/* 		</li>*/
/* 	<!-- ENDIF -->*/
/* <!-- DEFINE $NAVLINKS_SHOW_DEFAULT = 1 -->*/
/* <!-- ENDIF -->*/
/* <!-- ENDDEFINE -->*/
/* <!-- INCLUDE overall_header.html -->*/
/* */
/* <h2 class="topic-title"><!-- EVENT viewtopic_topic_title_prepend --><a href="{U_VIEW_TOPIC}">{TOPIC_TITLE}</a><!-- EVENT viewtopic_topic_title_append --></h2>*/
/* <!-- EVENT viewtopic_topic_title_after -->*/
/* <!-- NOTE: remove the style="display: none" when you want to have the forum description on the topic body -->*/
/* <!-- IF FORUM_DESC --><div style="display: none !important;">{FORUM_DESC}<br /></div><!-- ENDIF -->*/
/* */
/* <!-- IF MODERATORS -->*/
/* <p>*/
/* 	<strong><!-- IF S_SINGLE_MODERATOR -->{L_MODERATOR}<!-- ELSE -->{L_MODERATORS}<!-- ENDIF -->{L_COLON}</strong> {MODERATORS}*/
/* </p>*/
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
/* <div class="action-bar top">*/
/* */
/* 	<div class="buttons">*/
/* 		<!-- EVENT viewtopic_buttons_top_before -->*/
/* */
/* 	<!-- IF not S_IS_BOT and S_DISPLAY_REPLY_INFO -->*/
/* 		<a href="{U_POST_REPLY_TOPIC}" class="button icon-button <!-- IF S_IS_LOCKED -->locked-icon<!-- ELSE -->reply-icon<!-- ENDIF -->" title="<!-- IF S_IS_LOCKED -->{L_TOPIC_LOCKED}<!-- ELSE -->{L_POST_REPLY}<!-- ENDIF -->">*/
/* 			<!-- IF S_IS_LOCKED -->{L_BUTTON_TOPIC_LOCKED}<!-- ELSE -->{L_BUTTON_POST_REPLY}<!-- ENDIF -->*/
/* 		</a>*/
/* 	<!-- ENDIF -->*/
/* */
/* 		<!-- EVENT viewtopic_buttons_top_after -->*/
/* 	</div>*/
/* */
/* 	<!-- INCLUDE viewtopic_topic_tools.html -->*/
/* 	<!-- EVENT viewtopic_dropdown_top_custom -->*/
/* */
/* 	<!-- IF S_DISPLAY_SEARCHBOX -->*/
/* 		<div class="search-box" role="search">*/
/* 			<form method="get" id="topic-search" action="{S_SEARCHBOX_ACTION}">*/
/* 			<fieldset>*/
/* 				<input class="inputbox search tiny"  type="search" name="keywords" id="search_keywords" size="20" placeholder="{L_SEARCH_TOPIC}" />*/
/* 				<button class="button icon-button search-icon" type="submit" title="{L_SEARCH}">{L_SEARCH}</button>*/
/* 				<a href="{U_SEARCH}" class="button icon-button search-adv-icon" title="{L_SEARCH_ADV}">{L_SEARCH_ADV}</a>*/
/* 				{S_SEARCH_LOCAL_HIDDEN_FIELDS}*/
/* 			</fieldset>*/
/* 			</form>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF .pagination or TOTAL_POSTS -->*/
/* 		<div class="pagination">*/
/* 			<!-- IF U_VIEW_UNREAD_POST and not S_IS_BOT --><a href="{U_VIEW_UNREAD_POST}" class="mark">{L_VIEW_UNREAD_POST}</a> &bull; <!-- ENDIF -->{TOTAL_POSTS}*/
/* 			<!-- IF .pagination -->*/
/* 				<!-- INCLUDE pagination.html -->*/
/* 			<!-- ELSE -->*/
/* 				&bull; {PAGE_NUMBER}*/
/* 			<!-- ENDIF -->*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* 	<!-- EVENT viewtopic_body_pagination_top_after -->*/
/* </div>*/
/* */
/* <!-- EVENT viewtopic_body_poll_before -->*/
/* */
/* <!-- IF S_HAS_POLL -->*/
/* 	<form method="post" action="{S_POLL_ACTION}" data-ajax="vote_poll" class="topic_poll">*/
/* */
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* */
/* 		<div class="content">*/
/* 			<h2 class="poll-title"><!-- EVENT viewtopic_body_poll_question_prepend -->{POLL_QUESTION}<!-- EVENT viewtopic_body_poll_question_append --></h2>*/
/* 			<p class="author">{L_POLL_LENGTH}<!-- IF S_CAN_VOTE and L_POLL_LENGTH --><br /><!-- ENDIF --><!-- IF S_CAN_VOTE --><span class="poll_max_votes">{L_MAX_VOTES}</span><!-- ENDIF --></p>*/
/* */
/* 			<fieldset class="polls">*/
/* 			<!-- BEGIN poll_option -->*/
/* 				<!-- EVENT viewtopic_body_poll_option_before -->*/
/* 				<dl class="<!-- IF poll_option.POLL_OPTION_VOTED -->voted<!-- ENDIF --><!-- IF poll_option.POLL_OPTION_MOST_VOTES --> most-votes<!-- ENDIF -->"<!-- IF poll_option.POLL_OPTION_VOTED --> title="{L_POLL_VOTED_OPTION}"<!-- ENDIF --> data-alt-text="{L_POLL_VOTED_OPTION}" data-poll-option-id="{poll_option.POLL_OPTION_ID}">*/
/* 					<dt><!-- IF S_CAN_VOTE --><label for="vote_{poll_option.POLL_OPTION_ID}">{poll_option.POLL_OPTION_CAPTION}</label><!-- ELSE -->{poll_option.POLL_OPTION_CAPTION}<!-- ENDIF --></dt>*/
/* 					<!-- IF S_CAN_VOTE --><dd style="width: auto;" class="poll_option_select"><!-- IF S_IS_MULTI_CHOICE --><input type="checkbox" name="vote_id[]" id="vote_{poll_option.POLL_OPTION_ID}" value="{poll_option.POLL_OPTION_ID}"<!-- IF poll_option.POLL_OPTION_VOTED --> checked="checked"<!-- ENDIF --> /><!-- ELSE --><input type="radio" name="vote_id[]" id="vote_{poll_option.POLL_OPTION_ID}" value="{poll_option.POLL_OPTION_ID}"<!-- IF poll_option.POLL_OPTION_VOTED --> checked="checked"<!-- ENDIF --> /><!-- ENDIF --></dd><!-- ENDIF -->*/
/* 					<dd class="resultbar<!-- IF not S_DISPLAY_RESULTS --> hidden<!-- ENDIF -->"><div class="<!-- IF poll_option.POLL_OPTION_PCT < 20 -->pollbar1<!-- ELSEIF poll_option.POLL_OPTION_PCT < 40 -->pollbar2<!-- ELSEIF poll_option.POLL_OPTION_PCT < 60 -->pollbar3<!-- ELSEIF poll_option.POLL_OPTION_PCT < 80 -->pollbar4<!-- ELSE -->pollbar5<!-- ENDIF -->" style="width:{poll_option.POLL_OPTION_PERCENT_REL};">{poll_option.POLL_OPTION_RESULT}</div></dd>*/
/* 					<dd class="poll_option_percent<!-- IF not S_DISPLAY_RESULTS --> hidden<!-- ENDIF -->"><!-- IF poll_option.POLL_OPTION_RESULT == 0 -->{L_NO_VOTES}<!-- ELSE -->{poll_option.POLL_OPTION_PERCENT}<!-- ENDIF --></dd>*/
/* 				</dl>*/
/* 				<!-- EVENT viewtopic_body_poll_option_after -->*/
/* 			<!-- END poll_option -->*/
/* */
/* 				<dl class="poll_total_votes<!-- IF not S_DISPLAY_RESULTS --> hidden<!-- ENDIF -->">*/
/* 					<dt>&nbsp;</dt>*/
/* 					<dd class="resultbar">{L_TOTAL_VOTES}{L_COLON} <span class="poll_total_vote_cnt">{TOTAL_VOTES}</span></dd>*/
/* 				</dl>*/
/* */
/* 			<!-- IF S_CAN_VOTE -->*/
/* 				<dl style="border-top: none;" class="poll_vote">*/
/* 					<dt>&nbsp;</dt>*/
/* 					<dd class="resultbar"><input type="submit" name="update" value="{L_SUBMIT_VOTE}" class="button1" /></dd>*/
/* 				</dl>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- IF not S_DISPLAY_RESULTS -->*/
/* 				<dl style="border-top: none;" class="poll_view_results">*/
/* 					<dt>&nbsp;</dt>*/
/* 					<dd class="resultbar"><a href="{U_VIEW_RESULTS}">{L_VIEW_RESULTS}</a></dd>*/
/* 				</dl>*/
/* 			<!-- ENDIF -->*/
/* 			</fieldset>*/
/* 			<div class="vote-submitted hidden">{L_VOTE_SUBMITTED}</div>*/
/* 		</div>*/
/* */
/* 		</div>*/
/* 		{S_FORM_TOKEN}*/
/* 		{S_HIDDEN_FIELDS}*/
/* 	</div>*/
/* */
/* 	</form>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT viewtopic_body_poll_after -->*/
/* */
/* <!-- BEGIN postrow -->*/
/* 	<!-- EVENT viewtopic_body_postrow_post_before -->*/
/* 	<!-- IF postrow.S_FIRST_UNREAD -->*/
/* 		<a id="unread" class="anchor"<!-- IF S_UNREAD_VIEW --> data-url="{postrow.U_MINI_POST}"<!-- ENDIF -->></a>*/
/* 	<!-- ENDIF -->*/
/* 	<div id="p{postrow.POST_ID}" class="post has-profile <!-- IF postrow.S_ROW_COUNT is odd -->bg1<!-- ELSE -->bg2<!-- ENDIF --><!-- IF postrow.S_UNREAD_POST --> unreadpost<!-- ENDIF --><!-- IF postrow.S_POST_REPORTED --> reported<!-- ENDIF --><!-- IF postrow.S_POST_DELETED --> deleted<!-- ENDIF --><!-- IF postrow.S_ONLINE and not postrow.S_POST_HIDDEN --> online<!-- ENDIF --><!-- IF postrow.POSTER_WARNINGS --> warned<!-- ENDIF -->">*/
/* 		<div class="inner">*/
/* */
/* 		<dl class="postprofile" id="profile{postrow.POST_ID}"<!-- IF postrow.S_POST_HIDDEN --> style="display: none;"<!-- ENDIF -->>*/
/* 			<dt class="<!-- IF postrow.RANK_TITLE or postrow.RANK_IMG -->has-profile-rank<!-- ELSE -->no-profile-rank<!-- ENDIF --> <!-- IF postrow.POSTER_AVATAR -->has-avatar<!-- ELSE -->no-avatar<!-- ENDIF -->">*/
/* 				<div class="avatar-container">*/
/* 					<!-- EVENT viewtopic_body_avatar_before -->*/
/* 					<!-- IF postrow.POSTER_AVATAR -->*/
/* 						<!-- IF postrow.U_POST_AUTHOR --><a href="{postrow.U_POST_AUTHOR}" class="avatar">{postrow.POSTER_AVATAR}</a><!-- ELSE --><span class="avatar">{postrow.POSTER_AVATAR}</span><!-- ENDIF -->*/
/* 					<!-- ENDIF -->*/
/* 					<!-- EVENT viewtopic_body_avatar_after -->*/
/* 				</div>*/
/* 				<!-- EVENT viewtopic_body_post_author_before -->*/
/* 				<!-- IF not postrow.U_POST_AUTHOR --><strong>{postrow.POST_AUTHOR_FULL}</strong><!-- ELSE -->{postrow.POST_AUTHOR_FULL}<!-- ENDIF -->*/
/* 				<!-- EVENT viewtopic_body_post_author_after -->*/
/* 			</dt>*/
/* */
/* 			<!-- EVENT viewtopic_body_postrow_rank_before -->*/
/* 			<!-- IF postrow.RANK_TITLE or postrow.RANK_IMG --><dd class="profile-rank">{postrow.RANK_TITLE}<!-- IF postrow.RANK_TITLE and postrow.RANK_IMG --><br /><!-- ENDIF -->{postrow.RANK_IMG}</dd><!-- ENDIF -->*/
/* 			<!-- EVENT viewtopic_body_postrow_rank_after -->*/
/* */
/* 		<!-- IF postrow.POSTER_POSTS != '' --><dd class="profile-posts"><strong>{L_POSTS}{L_COLON}</strong> <!-- IF postrow.U_SEARCH !== '' --><a href="{postrow.U_SEARCH}"><!-- ENDIF -->{postrow.POSTER_POSTS}<!-- IF postrow.U_SEARCH !== '' --></a><!-- ENDIF --></dd><!-- ENDIF -->*/
/* 		<!-- IF postrow.POSTER_JOINED --><dd class="profile-joined"><strong>{L_JOINED}{L_COLON}</strong> {postrow.POSTER_JOINED}</dd><!-- ENDIF -->*/
/* 		<!-- IF postrow.POSTER_WARNINGS --><dd class="profile-warnings"><strong>{L_WARNINGS}{L_COLON}</strong> {postrow.POSTER_WARNINGS}</dd><!-- ENDIF -->*/
/* */
/* 		<!-- IF postrow.S_PROFILE_FIELD1 -->*/
/* 			<!-- Use a construct like this to include admin defined profile fields. Replace FIELD1 with the name of your field. -->*/
/* 			<dd><strong>{postrow.PROFILE_FIELD1_NAME}{L_COLON}</strong> {postrow.PROFILE_FIELD1_VALUE}</dd>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- EVENT viewtopic_body_postrow_custom_fields_before -->*/
/* 		<!-- BEGIN custom_fields -->*/
/* 			<!-- IF not postrow.custom_fields.S_PROFILE_CONTACT -->*/
/* 				<dd class="profile-custom-field profile-{postrow.custom_fields.PROFILE_FIELD_IDENT}"><strong>{postrow.custom_fields.PROFILE_FIELD_NAME}{L_COLON}</strong> {postrow.custom_fields.PROFILE_FIELD_VALUE}</dd>*/
/* 			<!-- ENDIF -->*/
/* 		<!-- END custom_fields -->*/
/* 		<!-- EVENT viewtopic_body_postrow_custom_fields_after -->*/
/* */
/* 		<!-- EVENT viewtopic_body_contact_fields_before -->*/
/* 		<!-- IF not S_IS_BOT and .postrow.contact -->*/
/* 			<dd class="profile-contact">*/
/* 				<strong>{L_CONTACT}{L_COLON}</strong>*/
/* 				<div class="dropdown-container dropdown-{S_CONTENT_FLOW_END} dropdown-down">*/
/* 					<a href="#" class="dropdown-trigger"><span class="imageset icon_contact" title="{postrow.CONTACT_USER}">{postrow.CONTACT_USER}</span></a>*/
/* 					<div class="dropdown hidden">*/
/* 						<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 						<div class="dropdown-contents contact-icons">*/
/* 							<!-- BEGIN contact -->*/
/* 								{% set REMAINDER = postrow.contact.S_ROW_COUNT % 4 %}*/
/* 								<!-- DEFINE $S_LAST_CELL = ((REMAINDER eq 3) or (postrow.contact.S_LAST_ROW and postrow.contact.S_NUM_ROWS < 4)) -->*/
/* 								<!-- IF REMAINDER eq 0 -->*/
/* 									<div>*/
/* 								<!-- ENDIF -->*/
/* 									<a href="<!-- IF postrow.contact.U_CONTACT -->{postrow.contact.U_CONTACT}<!-- ELSE -->{postrow.U_POST_AUTHOR}<!-- ENDIF -->" title="{postrow.contact.NAME}"<!-- IF $S_LAST_CELL --> class="last-cell"<!-- ENDIF --><!-- IF postrow.contact.ID eq 'jabber' --> onclick="popup(this.href, 750, 320); return false;"<!-- ENDIF -->>*/
/* 										<span class="contact-icon {postrow.contact.ID}-icon">{postrow.contact.NAME}</span>*/
/* 									</a>*/
/* 								<!-- IF REMAINDER eq 3 or postrow.contact.S_LAST_ROW -->*/
/* 									</div>*/
/* 								<!-- ENDIF -->*/
/* 							<!-- END contact -->*/
/* 						</div>*/
/* 					</div>*/
/* 				</div>*/
/* 			</dd>*/
/* 		<!-- ENDIF -->*/
/* 		<!-- EVENT viewtopic_body_contact_fields_after -->*/
/* */
/* 		</dl>*/
/* */
/* 		<div class="postbody">*/
/* */
/* 			<!-- IF postrow.S_POST_HIDDEN -->*/
/* 				<!-- IF postrow.S_POST_DELETED -->*/
/* 					<div class="ignore" id="post_hidden{postrow.POST_ID}">*/
/* 						{postrow.L_POST_DELETED_MESSAGE}<br />*/
/* 						{postrow.L_POST_DISPLAY}*/
/* 					</div>*/
/* 				<!-- ELSEIF postrow.S_IGNORE_POST -->*/
/* 					<div class="ignore" id="post_hidden{postrow.POST_ID}">*/
/* 						{postrow.L_IGNORE_POST}<br />*/
/* 						{postrow.L_POST_DISPLAY}*/
/* 					</div>*/
/* 				<!-- ENDIF -->*/
/* 			<!-- ENDIF -->*/
/* 			<div id="post_content{postrow.POST_ID}"<!-- IF postrow.S_POST_HIDDEN --> style="display: none;"<!-- ENDIF -->>*/
/* */
/* 			<!-- EVENT viewtopic_body_post_subject_before -->*/
/* 			<h3 <!-- IF postrow.S_FIRST_ROW -->class="first"<!-- ENDIF -->><!-- IF postrow.POST_ICON_IMG --><img src="{T_ICONS_PATH}{postrow.POST_ICON_IMG}" width="{postrow.POST_ICON_IMG_WIDTH}" height="{postrow.POST_ICON_IMG_HEIGHT}" alt="" /> <!-- ENDIF --><a href="#p{postrow.POST_ID}">{postrow.POST_SUBJECT}</a></h3>*/
/* */
/* 		<!-- DEFINE $SHOW_POST_BUTTONS = (postrow.U_EDIT or postrow.U_DELETE or postrow.U_REPORT or postrow.U_WARN or postrow.U_INFO or postrow.U_QUOTE) -->*/
/* 		<!-- EVENT viewtopic_body_post_buttons_list_before -->*/
/* 		<!-- IF not S_IS_BOT -->*/
/* 			<!-- IF $SHOW_POST_BUTTONS -->*/
/* 				<ul class="post-buttons">*/
/* 					<!-- EVENT viewtopic_body_post_buttons_before -->*/
/* 					<!-- IF postrow.U_EDIT -->*/
/* 						<li>*/
/* 							<a href="{postrow.U_EDIT}" title="{L_EDIT_POST}" class="button icon-button edit-icon"><span>{L_BUTTON_EDIT}</span></a>*/
/* 						</li>*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_DELETE -->*/
/* 						<li>*/
/* 							<a href="{postrow.U_DELETE}" title="{L_DELETE_POST}" class="button icon-button delete-icon"><span>{L_DELETE_POST}</span></a>*/
/* 						</li>*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_REPORT -->*/
/* 						<li>*/
/* 							<a href="{postrow.U_REPORT}" title="{L_REPORT_POST}" class="button icon-button report-icon"><span>{L_REPORT_POST}</span></a>*/
/* 						</li>*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_WARN -->*/
/* 						<li>*/
/* 							<a href="{postrow.U_WARN}" title="{L_WARN_USER}" class="button icon-button warn-icon"><span>{L_WARN_USER}</span></a>*/
/* 						</li>*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_INFO -->*/
/* 						<li>*/
/* 							<a href="{postrow.U_INFO}" title="{L_INFORMATION}" class="button icon-button info-icon"><span>{L_INFORMATION}</span></a>*/
/* 						</li>*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF postrow.U_QUOTE -->*/
/* 						<li>*/
/* 							<a href="{postrow.U_QUOTE}" title="{L_REPLY_WITH_QUOTE}" class="button icon-button quote-icon"><span>{L_QUOTE}</span></a>*/
/* 						</li>*/
/* 					<!-- ENDIF -->*/
/* 					<!-- EVENT viewtopic_body_post_buttons_after -->*/
/* 				</ul>*/
/* 			<!-- ENDIF -->*/
/* 		<!-- ENDIF -->*/
/* 		<!-- EVENT viewtopic_body_post_buttons_list_after -->*/
/* */
/* 			<!-- EVENT viewtopic_body_postrow_post_details_before -->*/
/* 			<p class="author"><!-- IF S_IS_BOT -->{postrow.MINI_POST_IMG}<!-- ELSE --><a href="{postrow.U_MINI_POST}">{postrow.MINI_POST_IMG}</a><!-- ENDIF --><span class="responsive-hide">{L_POST_BY_AUTHOR} <strong>{postrow.POST_AUTHOR_FULL}</strong> &raquo; </span>{postrow.POST_DATE} </p>*/
/* 			<!-- EVENT viewtopic_body_postrow_post_details_after -->*/
/* */
/* 			<!-- IF postrow.S_POST_UNAPPROVED -->*/
/* 			<form method="post" class="mcp_approve" action="{postrow.U_APPROVE_ACTION}">*/
/* 				<p class="post-notice unapproved">*/
/* 					<strong>{L_POST_UNAPPROVED_ACTION}</strong>*/
/* 					<input class="button2" type="submit" value="{L_DISAPPROVE}" name="action[disapprove]" />*/
/* 					<input class="button1" type="submit" value="{L_APPROVE}" name="action[approve]" />*/
/* 					<input type="hidden" name="post_id_list[]" value="{postrow.POST_ID}" />*/
/* 					{S_FORM_TOKEN}*/
/* 				</p>*/
/* 			</form>*/
/* 			<!-- ELSEIF postrow.S_POST_DELETED -->*/
/* 			<form method="post" class="mcp_approve" action="{postrow.U_APPROVE_ACTION}">*/
/* 				<p class="post-notice deleted">*/
/* 					<strong>{L_POST_DELETED_ACTION}</strong>*/
/* 					<!-- IF postrow.S_DELETE_PERMANENT -->*/
/* 						<input class="button2" type="submit" value="{L_DELETE}" name="action[delete]" />*/
/* 					<!-- ENDIF -->*/
/* 					<input class="button1" type="submit" value="{L_RESTORE}" name="action[restore]" />*/
/* 					<input type="hidden" name="post_id_list[]" value="{postrow.POST_ID}" />*/
/* 					{S_FORM_TOKEN}*/
/* 				</p>*/
/* 			</form>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- IF postrow.S_POST_REPORTED -->*/
/* 			<p class="post-notice reported">*/
/* 				<a href="{postrow.U_MCP_REPORT}"><strong>{L_POST_REPORTED}</strong></a>*/
/* 			</p>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<div class="content">{postrow.MESSAGE}</div>*/
/* */
/* 			<!-- IF postrow.S_HAS_ATTACHMENTS -->*/
/* 				<dl class="attachbox">*/
/* 					<dt>*/
/* 						{L_ATTACHMENTS}*/
/* 					</dt>*/
/* 					<!-- BEGIN attachment -->*/
/* 						<dd>{postrow.attachment.DISPLAY_ATTACHMENT}</dd>*/
/* 					<!-- END attachment -->*/
/* 				</dl>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- EVENT viewtopic_body_postrow_post_notices_before -->*/
/* 			<!-- IF postrow.S_DISPLAY_NOTICE --><div class="rules">{L_DOWNLOAD_NOTICE}</div><!-- ENDIF -->*/
/* 			<!-- IF postrow.DELETED_MESSAGE or postrow.DELETE_REASON -->*/
/* 				<div class="notice post_deleted_msg">*/
/* 					{postrow.DELETED_MESSAGE}*/
/* 					<!-- IF postrow.DELETE_REASON --><br /><strong>{L_REASON}{L_COLON}</strong> <em>{postrow.DELETE_REASON}</em><!-- ENDIF -->*/
/* 				</div>*/
/* 			<!-- ELSEIF postrow.EDITED_MESSAGE or postrow.EDIT_REASON -->*/
/* 				<div class="notice">*/
/* 					{postrow.EDITED_MESSAGE}*/
/* 					<!-- IF postrow.EDIT_REASON --><br /><strong>{L_REASON}{L_COLON}</strong> <em>{postrow.EDIT_REASON}</em><!-- ENDIF -->*/
/* 				</div>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<!-- IF postrow.BUMPED_MESSAGE --><div class="notice"><br /><br />{postrow.BUMPED_MESSAGE}</div><!-- ENDIF -->*/
/* 			<!-- EVENT viewtopic_body_postrow_post_notices_after -->*/
/* 			<!-- IF postrow.SIGNATURE --><div id="sig{postrow.POST_ID}" class="signature">{postrow.SIGNATURE}</div><!-- ENDIF -->*/
/* */
/* 			<!-- EVENT viewtopic_body_postrow_post_content_footer -->*/
/* 			</div>*/
/* */
/* 		</div>*/
/* */
/* 		</div>*/
/* 		<!-- EVENT viewtopic_body_postrow_back2top_before -->*/
/* 		<div class="back2top"><!-- EVENT viewtopic_body_postrow_back2top_prepend --><a href="#top" class="top" title="{L_BACK_TO_TOP}">{L_BACK_TO_TOP}</a><!-- EVENT viewtopic_body_postrow_back2top_append --></div>*/
/* 		<!-- EVENT viewtopic_body_postrow_back2top_after -->*/
/* 	</div>*/
/* */
/* 	<!-- EVENT viewtopic_body_postrow_post_after -->*/
/* <!-- END postrow -->*/
/* */
/* <!-- IF S_QUICK_REPLY -->*/
/* 	<!-- INCLUDE quickreply_editor.html -->*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_NUM_POSTS > 1 or .pagination -->*/
/* 	<form id="viewtopic" method="post" action="{S_TOPIC_ACTION}">*/
/* 	<fieldset class="display-options" style="margin-top: 0; ">*/
/* 		<!-- IF not S_IS_BOT -->*/
/* 		<label>{L_DISPLAY_POSTS}{L_COLON} {S_SELECT_SORT_DAYS}</label>*/
/* 		<label>{L_SORT_BY} {S_SELECT_SORT_KEY}</label> <label>{S_SELECT_SORT_DIR}</label>*/
/* 		<input type="submit" name="sort" value="{L_GO}" class="button2" />*/
/* 		<!-- ENDIF -->*/
/* 	</fieldset>*/
/* 	</form>*/
/* 	<hr />*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT viewtopic_body_topic_actions_before -->*/
/* <div class="action-bar bottom">*/
/* 	<div class="buttons">*/
/* 		<!-- EVENT viewtopic_buttons_bottom_before -->*/
/* */
/* 	<!-- IF not S_IS_BOT and S_DISPLAY_REPLY_INFO -->*/
/* 		<a href="{U_POST_REPLY_TOPIC}" class="button icon-button <!-- IF S_IS_LOCKED -->locked-icon<!-- ELSE -->reply-icon<!-- ENDIF -->" title="<!-- IF S_IS_LOCKED -->{L_TOPIC_LOCKED}<!-- ELSE -->{L_POST_REPLY}<!-- ENDIF -->">*/
/* 			<!-- IF S_IS_LOCKED -->{L_BUTTON_TOPIC_LOCKED}<!-- ELSE -->{L_BUTTON_POST_REPLY}<!-- ENDIF -->*/
/* 		</a>*/
/* 	<!-- ENDIF -->*/
/* */
/* 		<!-- EVENT viewtopic_buttons_bottom_after -->*/
/* 	</div>*/
/* */
/* 	<!-- INCLUDE viewtopic_topic_tools.html -->*/
/* */
/* 	<!-- IF .quickmod -->*/
/* 		<div class="dropdown-container dropdown-container-{S_CONTENT_FLOW_BEGIN} dropdown-up dropdown-{S_CONTENT_FLOW_END} dropdown-button-control" id="quickmod">*/
/* 			<span title="{L_QUICK_MOD}" class="dropdown-trigger button icon-button modtools-icon dropdown-select">{L_QUICK_MOD}</span>*/
/* 			<div class="dropdown hidden">*/
/* 				<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 				<ul class="dropdown-contents">*/
/* 				<!-- BEGIN quickmod -->*/
/* 					<!-- DEFINE $QUICKMOD_AJAX = (quickmod.VALUE in ['lock', 'unlock', 'delete_topic', 'restore_topic', 'make_normal', 'make_sticky', 'make_announce', 'make_global']) -->*/
/* 					<li><a href="{quickmod.LINK}"<!-- IF $QUICKMOD_AJAX --> data-ajax="true" data-refresh="true"<!-- ENDIF -->>{quickmod.TITLE}</a></li>*/
/* 				<!-- END quickmod -->*/
/* 				</ul>*/
/* 			</div>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* 	*/
/* 	<!-- EVENT viewtopic_dropdown_bottom_custom -->*/
/* */
/* 	<!-- IF .pagination or TOTAL_POSTS -->*/
/* 		<div class="pagination">*/
/* 			{TOTAL_POSTS}*/
/* 			<!-- IF .pagination -->*/
/* 				<!-- INCLUDE pagination.html -->*/
/* 			<!-- ELSE -->*/
/* 				&bull; {PAGE_NUMBER}*/
/* 			<!-- ENDIF -->*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* 	<div class="clear"></div>*/
/* </div>*/
/* */
/* <!-- EVENT viewtopic_body_footer_before -->*/
/* <!-- INCLUDE jumpbox.html -->*/
/* */
/* <!-- IF S_DISPLAY_ONLINE_LIST -->*/
/* 	<div class="stat-block online-list">*/
/* 		<h3><!-- IF U_VIEWONLINE --><a href="{U_VIEWONLINE}">{L_WHO_IS_ONLINE}</a><!-- ELSE -->{L_WHO_IS_ONLINE}<!-- ENDIF --></h3>*/
/* 		<p>{LOGGED_IN_USER_LIST}</p>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- INCLUDE overall_footer.html -->*/
/* */
