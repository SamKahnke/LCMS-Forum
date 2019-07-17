<?php

/* viewtopic_body.html */
class __TwigTemplate_81665a9cdae4d629f9747697a8aefe5d460a7f2e5a152cb526186487ef585adf extends Twig_Template
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
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "viewtopic_body.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<h2 class=\"topic-title\">";
        // line 3
        echo "<a href=\"";
        echo (isset($context["U_VIEW_TOPIC"]) ? $context["U_VIEW_TOPIC"] : null);
        echo "\">";
        echo (isset($context["TOPIC_TITLE"]) ? $context["TOPIC_TITLE"] : null);
        echo "</a>";
        echo "</h2>
<!-- NOTE: remove the style=\"display: none\" when you want to have the forum description on the topic body -->
";
        // line 5
        if ((isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null)) {
            echo "<div style=\"display: none !important;\">";
            echo (isset($context["FORUM_DESC"]) ? $context["FORUM_DESC"] : null);
            echo "<br /></div>";
        }
        // line 6
        echo "
";
        // line 7
        if ((isset($context["MODERATORS"]) ? $context["MODERATORS"] : null)) {
            // line 8
            echo "<p>
\t<strong>";
            // line 9
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
        // line 12
        echo "
";
        // line 13
        if ((isset($context["S_FORUM_RULES"]) ? $context["S_FORUM_RULES"] : null)) {
            // line 14
            echo "\t<div class=\"rules";
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                echo " rules-link";
            }
            echo "\">
\t\t<div class=\"inner\">

\t\t";
            // line 17
            if ((isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null)) {
                // line 18
                echo "\t\t\t<a href=\"";
                echo (isset($context["U_FORUM_RULES"]) ? $context["U_FORUM_RULES"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</a>
\t\t";
            } else {
                // line 20
                echo "\t\t\t<strong>";
                echo $this->env->getExtension('phpbb')->lang("FORUM_RULES");
                echo "</strong><br />
\t\t\t";
                // line 21
                echo (isset($context["FORUM_RULES"]) ? $context["FORUM_RULES"] : null);
                echo "
\t\t";
            }
            // line 23
            echo "
\t\t</div>
\t</div>
";
        }
        // line 27
        echo "
<div class=\"action-bar top\">

\t<div class=\"buttons\">
\t\t";
        // line 31
        // line 32
        echo "
\t";
        // line 33
        if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["S_DISPLAY_REPLY_INFO"]) ? $context["S_DISPLAY_REPLY_INFO"] : null))) {
            // line 34
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
            // line 35
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_POST_REPLY");
            }
            // line 36
            echo "\t\t</a>
\t";
        }
        // line 38
        echo "
\t\t";
        // line 39
        // line 40
        echo "\t</div>

\t";
        // line 42
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("viewtopic_topic_tools.html", "viewtopic_body.html", 42)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 43
        echo "\t";
        // line 44
        echo "
\t";
        // line 45
        if ((isset($context["S_DISPLAY_SEARCHBOX"]) ? $context["S_DISPLAY_SEARCHBOX"] : null)) {
            // line 46
            echo "\t\t<div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"get\" id=\"topic-search\" action=\"";
            // line 47
            echo (isset($context["S_SEARCHBOX_ACTION"]) ? $context["S_SEARCHBOX_ACTION"] : null);
            echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\"  type=\"search\" name=\"keywords\" id=\"search_keywords\" size=\"20\" placeholder=\"";
            // line 49
            echo $this->env->getExtension('phpbb')->lang("SEARCH_TOPIC");
            echo "\" />
\t\t\t\t<button class=\"button icon-button search-icon\" type=\"submit\" title=\"";
            // line 50
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "</button>
\t\t\t\t<a href=\"";
            // line 51
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" class=\"button icon-button search-adv-icon\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "</a>
\t\t\t\t";
            // line 52
            echo (isset($context["S_SEARCH_LOCAL_HIDDEN_FIELDS"]) ? $context["S_SEARCH_LOCAL_HIDDEN_FIELDS"] : null);
            echo "
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t";
        }
        // line 57
        echo "
\t";
        // line 58
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null))) {
            // line 59
            echo "\t\t<div class=\"pagination\">
\t\t\t";
            // line 60
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
            // line 61
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 62
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewtopic_body.html", 62)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 63
                echo "\t\t\t";
            } else {
                // line 64
                echo "\t\t\t\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 66
            echo "\t\t</div>
\t";
        }
        // line 68
        echo "\t";
        // line 69
        echo "</div>

";
        // line 71
        // line 72
        echo "
";
        // line 73
        if ((isset($context["S_HAS_POLL"]) ? $context["S_HAS_POLL"] : null)) {
            // line 74
            echo "\t<form method=\"post\" action=\"";
            echo (isset($context["S_POLL_ACTION"]) ? $context["S_POLL_ACTION"] : null);
            echo "\" data-ajax=\"vote_poll\" class=\"topic_poll\">

\t<div class=\"panel\">
\t\t<div class=\"inner\">

\t\t<div class=\"content\">
\t\t\t<h2 class=\"poll-title\">";
            // line 80
            echo (isset($context["POLL_QUESTION"]) ? $context["POLL_QUESTION"] : null);
            echo "</h2>
\t\t\t<p class=\"author\">";
            // line 81
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
            // line 84
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "poll_option", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["poll_option"]) {
                // line 85
                echo "\t\t\t\t";
                // line 86
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
                echo " data-poll-option-id=\"";
                echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                echo "\">
\t\t\t\t\t<dt>";
                // line 87
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
                // line 88
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
                // line 89
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
                // line 90
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
                // line 92
                // line 93
                echo "\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['poll_option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 94
            echo "
\t\t\t\t<dl class=\"poll_total_votes";
            // line 95
            if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                echo " hidden";
            }
            echo "\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\">";
            // line 97
            echo $this->env->getExtension('phpbb')->lang("TOTAL_VOTES");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <span class=\"poll_total_vote_cnt\">";
            echo (isset($context["TOTAL_VOTES"]) ? $context["TOTAL_VOTES"] : null);
            echo "</span></dd>
\t\t\t\t</dl>

\t\t\t";
            // line 100
            if ((isset($context["S_CAN_VOTE"]) ? $context["S_CAN_VOTE"] : null)) {
                // line 101
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_vote\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><input type=\"submit\" name=\"update\" value=\"";
                // line 103
                echo $this->env->getExtension('phpbb')->lang("SUBMIT_VOTE");
                echo "\" class=\"button1\" /></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 106
            echo "
\t\t\t";
            // line 107
            if ( !(isset($context["S_DISPLAY_RESULTS"]) ? $context["S_DISPLAY_RESULTS"] : null)) {
                // line 108
                echo "\t\t\t\t<dl style=\"border-top: none;\" class=\"poll_view_results\">
\t\t\t\t\t<dt>&nbsp;</dt>
\t\t\t\t\t<dd class=\"resultbar\"><a href=\"";
                // line 110
                echo (isset($context["U_VIEW_RESULTS"]) ? $context["U_VIEW_RESULTS"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("VIEW_RESULTS");
                echo "</a></dd>
\t\t\t\t</dl>
\t\t\t";
            }
            // line 113
            echo "\t\t\t</fieldset>
\t\t\t<div class=\"vote-submitted hidden\">";
            // line 114
            echo $this->env->getExtension('phpbb')->lang("VOTE_SUBMITTED");
            echo "</div>
\t\t</div>

\t\t</div>
\t\t";
            // line 118
            echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
            echo "
\t\t";
            // line 119
            echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
            echo "
\t</div>

\t</form>
\t<hr />
";
        }
        // line 125
        echo "
";
        // line 126
        // line 127
        echo "
";
        // line 128
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "postrow", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["postrow"]) {
            // line 129
            echo "\t";
            // line 130
            echo "\t";
            if ($this->getAttribute($context["postrow"], "S_FIRST_UNREAD", array())) {
                // line 131
                echo "\t\t<a id=\"unread\" class=\"anchor\"";
                if ((isset($context["S_UNREAD_VIEW"]) ? $context["S_UNREAD_VIEW"] : null)) {
                    echo " data-url=\"";
                    echo $this->getAttribute($context["postrow"], "U_MINI_POST", array());
                    echo "\"";
                }
                echo "></a>
\t";
            }
            // line 133
            echo "\t<span class=\"post_anchor\" id=\"p";
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\"></span>
\t<div class=\"post has-profile ";
            // line 134
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
            // line 137
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\"";
            if ($this->getAttribute($context["postrow"], "S_POST_HIDDEN", array())) {
                echo " style=\"display: none;\"";
            }
            echo ">
\t\t\t<dt class=\"";
            // line 138
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
            // line 140
            // line 141
            echo "\t\t\t\t\t";
            if ($this->getAttribute($context["postrow"], "POSTER_AVATAR", array())) {
                // line 142
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
                // line 143
                echo "\t\t\t\t\t";
            }
            // line 144
            echo "\t\t\t\t\t";
            // line 145
            echo "\t\t\t\t</div>
\t\t\t\t";
            // line 146
            // line 147
            echo "\t\t\t\t";
            if ( !$this->getAttribute($context["postrow"], "U_POST_AUTHOR", array())) {
                echo "<strong>";
                echo $this->getAttribute($context["postrow"], "POST_AUTHOR_FULL", array());
                echo "</strong>";
            } else {
                echo $this->getAttribute($context["postrow"], "POST_AUTHOR_FULL", array());
            }
            // line 148
            echo "\t\t\t\t";
            // line 149
            echo "\t\t\t</dt>

\t\t\t";
            // line 151
            // line 152
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
            // line 153
            echo "\t\t\t";
            // line 154
            echo "
\t\t";
            // line 155
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
            // line 156
            echo "\t\t";
            if ($this->getAttribute($context["postrow"], "POSTER_JOINED", array())) {
                echo "<dd class=\"profile-joined\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("JOINED");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo $this->getAttribute($context["postrow"], "POSTER_JOINED", array());
                echo "</dd>";
            }
            // line 157
            echo "\t\t";
            if ($this->getAttribute($context["postrow"], "POSTER_WARNINGS", array())) {
                echo "<dd class=\"profile-warnings\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("WARNINGS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo $this->getAttribute($context["postrow"], "POSTER_WARNINGS", array());
                echo "</dd>";
            }
            // line 158
            echo "
\t\t";
            // line 159
            if ($this->getAttribute($context["postrow"], "S_PROFILE_FIELD1", array())) {
                // line 160
                echo "\t\t\t<!-- Use a construct like this to include admin defined profile fields. Replace FIELD1 with the name of your field. -->
\t\t\t<dd><strong>";
                // line 161
                echo $this->getAttribute($context["postrow"], "PROFILE_FIELD1_NAME", array());
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong> ";
                echo $this->getAttribute($context["postrow"], "PROFILE_FIELD1_VALUE", array());
                echo "</dd>
\t\t";
            }
            // line 163
            echo "
\t\t";
            // line 164
            // line 165
            echo "\t\t";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["postrow"], "custom_fields", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["custom_fields"]) {
                // line 166
                echo "\t\t\t";
                if ( !$this->getAttribute($context["custom_fields"], "S_PROFILE_CONTACT", array())) {
                    // line 167
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
                // line 169
                echo "\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_fields'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 170
            echo "\t\t";
            // line 171
            echo "
\t\t";
            // line 172
            // line 173
            echo "\t\t";
            if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && twig_length_filter($this->env, $this->getAttribute($context["postrow"], "contact", array())))) {
                // line 174
                echo "\t\t\t<dd class=\"profile-contact\">
\t\t\t\t<strong>";
                // line 175
                echo $this->env->getExtension('phpbb')->lang("CONTACT");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo "</strong>
\t\t\t\t<div class=\"dropdown-container dropdown-left\">
\t\t\t\t\t<a href=\"#\" class=\"dropdown-trigger\"><span class=\"imageset icon_contact\" title=\"";
                // line 177
                echo $this->getAttribute($context["postrow"], "CONTACT_USER", array());
                echo "\">";
                echo $this->getAttribute($context["postrow"], "CONTACT_USER", array());
                echo "</span></a>
\t\t\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t<div class=\"dropdown-contents contact-icons\">
\t\t\t\t\t\t\t";
                // line 181
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["postrow"], "contact", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["contact"]) {
                    // line 182
                    echo "\t\t\t\t\t\t\t\t";
                    $context["REMAINDER"] = ($this->getAttribute($context["contact"], "S_ROW_COUNT", array()) % 4);
                    // line 183
                    echo "\t\t\t\t\t\t\t\t";
                    $value = (((isset($context["REMAINDER"]) ? $context["REMAINDER"] : null) == 3) || ($this->getAttribute($context["contact"], "S_LAST_ROW", array()) && ($this->getAttribute($context["contact"], "S_NUM_ROWS", array()) < 4)));
                    $context['definition']->set('S_LAST_CELL', $value);
                    // line 184
                    echo "\t\t\t\t\t\t\t\t";
                    if (((isset($context["REMAINDER"]) ? $context["REMAINDER"] : null) == 0)) {
                        // line 185
                        echo "\t\t\t\t\t\t\t\t\t<div>
\t\t\t\t\t\t\t\t";
                    }
                    // line 187
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
                    // line 188
                    echo $this->getAttribute($context["contact"], "ID", array());
                    echo "-icon\">";
                    echo $this->getAttribute($context["contact"], "NAME", array());
                    echo "</span>
\t\t\t\t\t\t\t\t\t</a>
\t\t\t\t\t\t\t\t";
                    // line 190
                    if ((((isset($context["REMAINDER"]) ? $context["REMAINDER"] : null) == 3) || $this->getAttribute($context["contact"], "S_LAST_ROW", array()))) {
                        // line 191
                        echo "\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
                    }
                    // line 193
                    echo "\t\t\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['contact'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 194
                echo "\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</dd>
\t\t";
            }
            // line 199
            echo "\t\t";
            // line 200
            echo "
\t\t</dl>

\t\t<div class=\"postbody\">
\t\t\t";
            // line 204
            if ($this->getAttribute($context["postrow"], "S_POST_HIDDEN", array())) {
                // line 205
                echo "\t\t\t\t";
                if ($this->getAttribute($context["postrow"], "S_POST_DELETED", array())) {
                    // line 206
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo $this->getAttribute($context["postrow"], "POST_ID", array());
                    echo "\">
\t\t\t\t\t\t";
                    // line 207
                    echo $this->getAttribute($context["postrow"], "L_POST_DELETED_MESSAGE", array());
                    echo "<br />
\t\t\t\t\t\t";
                    // line 208
                    echo $this->getAttribute($context["postrow"], "L_POST_DISPLAY", array());
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                } elseif ($this->getAttribute(                // line 210
$context["postrow"], "S_IGNORE_POST", array())) {
                    // line 211
                    echo "\t\t\t\t\t<div class=\"ignore\" id=\"post_hidden";
                    echo $this->getAttribute($context["postrow"], "POST_ID", array());
                    echo "\">
\t\t\t\t\t\t";
                    // line 212
                    echo $this->getAttribute($context["postrow"], "L_IGNORE_POST", array());
                    echo "<br />
\t\t\t\t\t\t";
                    // line 213
                    echo $this->getAttribute($context["postrow"], "L_POST_DISPLAY", array());
                    echo "
\t\t\t\t\t</div>
\t\t\t\t";
                }
                // line 216
                echo "\t\t\t";
            }
            // line 217
            echo "\t\t\t<div id=\"post_content";
            echo $this->getAttribute($context["postrow"], "POST_ID", array());
            echo "\"";
            if ($this->getAttribute($context["postrow"], "S_POST_HIDDEN", array())) {
                echo " style=\"display: none;\"";
            }
            echo ">

\t\t\t<h3 ";
            // line 219
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

\t\t\t";
            // line 221
            $value = ((((($this->getAttribute($context["postrow"], "U_EDIT", array()) || $this->getAttribute($context["postrow"], "U_DELETE", array())) || $this->getAttribute($context["postrow"], "U_REPORT", array())) || $this->getAttribute($context["postrow"], "U_WARN", array())) || $this->getAttribute($context["postrow"], "U_INFO", array())) || $this->getAttribute($context["postrow"], "U_QUOTE", array()));
            $context['definition']->set('SHOW_POST_BUTTONS', $value);
            // line 222
            echo "\t\t";
            // line 223
            echo "\t\t";
            if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                // line 224
                echo "\t\t\t";
                if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SHOW_POST_BUTTONS", array())) {
                    // line 225
                    echo "\t\t\t\t<ul class=\"post-buttons\">
\t\t\t\t\t";
                    // line 226
                    // line 227
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_EDIT", array())) {
                        // line 228
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 229
                        echo $this->getAttribute($context["postrow"], "U_EDIT", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("EDIT_POST");
                        echo "\" class=\"button icon-button edit-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("BUTTON_EDIT");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 232
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_DELETE", array())) {
                        // line 233
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 234
                        echo $this->getAttribute($context["postrow"], "U_DELETE", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("DELETE_POST");
                        echo "\" class=\"button icon-button delete-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("DELETE_POST");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 237
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_REPORT", array())) {
                        // line 238
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 239
                        echo $this->getAttribute($context["postrow"], "U_REPORT", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("REPORT_POST");
                        echo "\" class=\"button icon-button report-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("REPORT_POST");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 242
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_WARN", array())) {
                        // line 243
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 244
                        echo $this->getAttribute($context["postrow"], "U_WARN", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("WARN_USER");
                        echo "\" class=\"button icon-button warn-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("WARN_USER");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 247
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_INFO", array())) {
                        // line 248
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 249
                        echo $this->getAttribute($context["postrow"], "U_INFO", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("INFORMATION");
                        echo "\" class=\"button icon-button info-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("INFORMATION");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 252
                    echo "\t\t\t\t\t";
                    if ($this->getAttribute($context["postrow"], "U_QUOTE", array())) {
                        // line 253
                        echo "\t\t\t\t\t\t<li>
\t\t\t\t\t\t\t<a href=\"";
                        // line 254
                        echo $this->getAttribute($context["postrow"], "U_QUOTE", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("REPLY_WITH_QUOTE");
                        echo "\" class=\"button icon-button quote-icon\"><span>";
                        echo $this->env->getExtension('phpbb')->lang("QUOTE");
                        echo "</span></a>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
                    }
                    // line 257
                    echo "\t\t\t\t\t";
                    // line 258
                    echo "\t\t\t\t</ul>
\t\t\t";
                }
                // line 260
                echo "\t\t";
            }
            // line 261
            echo "\t\t";
            // line 262
            echo "
\t\t\t";
            // line 263
            // line 264
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
            // line 265
            // line 266
            echo "
\t\t\t";
            // line 267
            if ($this->getAttribute($context["postrow"], "S_POST_UNAPPROVED", array())) {
                // line 268
                echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                echo $this->getAttribute($context["postrow"], "U_APPROVE_ACTION", array());
                echo "\">
\t\t\t\t<p class=\"post-notice unapproved\">
\t\t\t\t\t<strong>";
                // line 270
                echo $this->env->getExtension('phpbb')->lang("POST_UNAPPROVED_ACTION");
                echo "</strong>
\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                // line 271
                echo $this->env->getExtension('phpbb')->lang("DISAPPROVE");
                echo "\" name=\"action[disapprove]\" />
\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                // line 272
                echo $this->env->getExtension('phpbb')->lang("APPROVE");
                echo "\" name=\"action[approve]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                // line 273
                echo $this->getAttribute($context["postrow"], "POST_ID", array());
                echo "\" />
\t\t\t\t\t";
                // line 274
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
            } elseif ($this->getAttribute(            // line 277
$context["postrow"], "S_POST_DELETED", array())) {
                // line 278
                echo "\t\t\t<form method=\"post\" class=\"mcp_approve\" action=\"";
                echo $this->getAttribute($context["postrow"], "U_APPROVE_ACTION", array());
                echo "\">
\t\t\t\t<p class=\"post-notice deleted\">
\t\t\t\t\t<strong>";
                // line 280
                echo $this->env->getExtension('phpbb')->lang("POST_DELETED_ACTION");
                echo "</strong>
\t\t\t\t\t<input class=\"button2\" type=\"submit\" value=\"";
                // line 281
                echo $this->env->getExtension('phpbb')->lang("DELETE");
                echo "\" name=\"action[disapprove]\" />
\t\t\t\t\t<input class=\"button1\" type=\"submit\" value=\"";
                // line 282
                echo $this->env->getExtension('phpbb')->lang("RESTORE");
                echo "\" name=\"action[restore]\" />
\t\t\t\t\t<input type=\"hidden\" name=\"post_id_list[]\" value=\"";
                // line 283
                echo $this->getAttribute($context["postrow"], "POST_ID", array());
                echo "\" />
\t\t\t\t\t";
                // line 284
                echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
                echo "
\t\t\t\t</p>
\t\t\t</form>
\t\t\t";
            }
            // line 288
            echo "
\t\t\t";
            // line 289
            if ($this->getAttribute($context["postrow"], "S_POST_REPORTED", array())) {
                // line 290
                echo "\t\t\t<p class=\"post-notice reported\">
\t\t\t\t<a href=\"";
                // line 291
                echo $this->getAttribute($context["postrow"], "U_MCP_REPORT", array());
                echo "\"><strong>";
                echo $this->env->getExtension('phpbb')->lang("POST_REPORTED");
                echo "</strong></a>
\t\t\t</p>
\t\t\t";
            }
            // line 294
            echo "
\t\t\t<div class=\"content\">";
            // line 295
            echo $this->getAttribute($context["postrow"], "MESSAGE", array());
            echo "</div>

\t\t\t";
            // line 297
            if ($this->getAttribute($context["postrow"], "S_HAS_ATTACHMENTS", array())) {
                // line 298
                echo "\t\t\t\t<dl class=\"attachbox\">
\t\t\t\t\t<dt>
\t\t\t\t\t\t";
                // line 300
                echo $this->env->getExtension('phpbb')->lang("ATTACHMENTS");
                echo "
\t\t\t\t\t</dt>
\t\t\t\t\t";
                // line 302
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["postrow"], "attachment", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["attachment"]) {
                    // line 303
                    echo "\t\t\t\t\t\t<dd>";
                    echo $this->getAttribute($context["attachment"], "DISPLAY_ATTACHMENT", array());
                    echo "</dd>
\t\t\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attachment'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 305
                echo "\t\t\t\t</dl>
\t\t\t";
            }
            // line 307
            echo "
\t\t\t";
            // line 308
            // line 309
            echo "\t\t\t";
            if ($this->getAttribute($context["postrow"], "S_DISPLAY_NOTICE", array())) {
                echo "<div class=\"rules\">";
                echo $this->env->getExtension('phpbb')->lang("DOWNLOAD_NOTICE");
                echo "</div>";
            }
            // line 310
            echo "\t\t\t";
            if (($this->getAttribute($context["postrow"], "DELETED_MESSAGE", array()) || $this->getAttribute($context["postrow"], "DELETE_REASON", array()))) {
                // line 311
                echo "\t\t\t\t<div class=\"notice post_deleted_msg\">
\t\t\t\t\t";
                // line 312
                echo $this->getAttribute($context["postrow"], "DELETED_MESSAGE", array());
                echo "
\t\t\t\t\t";
                // line 313
                if ($this->getAttribute($context["postrow"], "DELETE_REASON", array())) {
                    echo "<br /><strong>";
                    echo $this->env->getExtension('phpbb')->lang("REASON");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> <em>";
                    echo $this->getAttribute($context["postrow"], "DELETE_REASON", array());
                    echo "</em>";
                }
                // line 314
                echo "\t\t\t\t</div>
\t\t\t";
            } elseif (($this->getAttribute(            // line 315
$context["postrow"], "EDITED_MESSAGE", array()) || $this->getAttribute($context["postrow"], "EDIT_REASON", array()))) {
                // line 316
                echo "\t\t\t\t<div class=\"notice\">
\t\t\t\t\t";
                // line 317
                echo $this->getAttribute($context["postrow"], "EDITED_MESSAGE", array());
                echo "
\t\t\t\t\t";
                // line 318
                if ($this->getAttribute($context["postrow"], "EDIT_REASON", array())) {
                    echo "<br /><strong>";
                    echo $this->env->getExtension('phpbb')->lang("REASON");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo "</strong> <em>";
                    echo $this->getAttribute($context["postrow"], "EDIT_REASON", array());
                    echo "</em>";
                }
                // line 319
                echo "\t\t\t\t</div>
\t\t\t";
            }
            // line 321
            echo "
\t\t\t";
            // line 322
            if ($this->getAttribute($context["postrow"], "BUMPED_MESSAGE", array())) {
                echo "<div class=\"notice\"><br /><br />";
                echo $this->getAttribute($context["postrow"], "BUMPED_MESSAGE", array());
                echo "</div>";
            }
            // line 323
            echo "\t\t\t";
            // line 324
            echo "\t\t\t";
            if ($this->getAttribute($context["postrow"], "SIGNATURE", array())) {
                echo "<div id=\"sig";
                echo $this->getAttribute($context["postrow"], "POST_ID", array());
                echo "\" class=\"signature\">";
                echo $this->getAttribute($context["postrow"], "SIGNATURE", array());
                echo "</div>";
            }
            // line 325
            echo "
\t\t\t";
            // line 326
            // line 327
            echo "\t\t\t</div>

\t\t</div>

\t\t<div class=\"back2top\"><a href=\"#top\" class=\"top\" title=\"";
            // line 331
            echo $this->env->getExtension('phpbb')->lang("BACK_TO_TOP");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("BACK_TO_TOP");
            echo "</a></div>

\t\t</div>
\t</div>

\t<hr class=\"divider\" />
\t";
            // line 337
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['postrow'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 339
        echo "
";
        // line 340
        if ((isset($context["S_QUICK_REPLY"]) ? $context["S_QUICK_REPLY"] : null)) {
            // line 341
            echo "\t";
            $location = "quickreply_editor.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("quickreply_editor.html", "viewtopic_body.html", 341)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 343
        echo "
";
        // line 344
        if ((((isset($context["S_NUM_POSTS"]) ? $context["S_NUM_POSTS"] : null) > 1) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())))) {
            // line 345
            echo "\t<form id=\"viewtopic\" method=\"post\" action=\"";
            echo (isset($context["S_TOPIC_ACTION"]) ? $context["S_TOPIC_ACTION"] : null);
            echo "\">
\t<fieldset class=\"display-options\" style=\"margin-top: 0; \">
\t\t";
            // line 347
            if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                // line 348
                echo "\t\t<label>";
                echo $this->env->getExtension('phpbb')->lang("DISPLAY_POSTS");
                echo $this->env->getExtension('phpbb')->lang("COLON");
                echo " ";
                echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
                echo "</label>
\t\t<label>";
                // line 349
                echo $this->env->getExtension('phpbb')->lang("SORT_BY");
                echo " ";
                echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
                echo "</label> <label>";
                echo (isset($context["S_SELECT_SORT_DIR"]) ? $context["S_SELECT_SORT_DIR"] : null);
                echo "</label>
\t\t<input type=\"submit\" name=\"sort\" value=\"";
                // line 350
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" class=\"button2\" />
\t\t";
            }
            // line 352
            echo "\t</fieldset>
\t</form>
\t<hr />
";
        }
        // line 356
        echo "
";
        // line 357
        // line 358
        echo "<div class=\"action-bar bottom\">
\t<div class=\"buttons\">
\t\t";
        // line 360
        // line 361
        echo "
\t";
        // line 362
        if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && (isset($context["S_DISPLAY_REPLY_INFO"]) ? $context["S_DISPLAY_REPLY_INFO"] : null))) {
            // line 363
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
            // line 364
            if ((isset($context["S_IS_LOCKED"]) ? $context["S_IS_LOCKED"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_TOPIC_LOCKED");
            } else {
                echo $this->env->getExtension('phpbb')->lang("BUTTON_POST_REPLY");
            }
            // line 365
            echo "\t\t</a>
\t";
        }
        // line 367
        echo "
\t\t";
        // line 368
        // line 369
        echo "\t</div>

\t";
        // line 371
        $location = "viewtopic_topic_tools.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("viewtopic_topic_tools.html", "viewtopic_body.html", 371)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 372
        echo "
\t";
        // line 373
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "quickmod", array()))) {
            // line 374
            echo "\t\t<div class=\"dropdown-container dropdown-container-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo " dropdown-up dropdown-";
            echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
            echo " dropdown-button-control\" id=\"quickmod\">
\t\t\t<span title=\"";
            // line 375
            echo $this->env->getExtension('phpbb')->lang("QUICK_MOD");
            echo "\" class=\"dropdown-trigger button icon-button modtools-icon dropdown-select\">";
            echo $this->env->getExtension('phpbb')->lang("QUICK_MOD");
            echo "</span>
\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t";
            // line 379
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "quickmod", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["quickmod"]) {
                // line 380
                echo "\t\t\t\t\t";
                $value = twig_in_filter($this->getAttribute($context["quickmod"], "VALUE", array()), array(0 => "lock", 1 => "unlock", 2 => "delete_topic", 3 => "restore_topic", 4 => "make_normal", 5 => "make_sticky", 6 => "make_announce", 7 => "make_global"));
                $context['definition']->set('QUICKMOD_AJAX', $value);
                // line 381
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
            // line 383
            echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t</div>
\t";
        }
        // line 387
        echo "
\t";
        // line 388
        // line 389
        echo "
\t";
        // line 390
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null))) {
            // line 391
            echo "\t\t<div class=\"pagination\">
\t\t\t";
            // line 392
            echo (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null);
            echo "
\t\t\t";
            // line 393
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 394
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "viewtopic_body.html", 394)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 395
                echo "\t\t\t";
            } else {
                // line 396
                echo "\t\t\t\t&bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 398
            echo "\t\t</div>
\t";
        }
        // line 400
        echo "\t<div class=\"clear\"></div>
</div>

";
        // line 403
        // line 404
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("jumpbox.html", "viewtopic_body.html", 404)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 405
        echo "
";
        // line 406
        if ((isset($context["S_DISPLAY_ONLINE_LIST"]) ? $context["S_DISPLAY_ONLINE_LIST"] : null)) {
            // line 407
            echo "\t<div class=\"stat-block online-list\">
\t\t<h3>";
            // line 408
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
            // line 409
            echo (isset($context["LOGGED_IN_USER_LIST"]) ? $context["LOGGED_IN_USER_LIST"] : null);
            echo "</p>
\t</div>
";
        }
        // line 412
        echo "
";
        // line 413
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "viewtopic_body.html", 413)->display($context);
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
        return array (  1484 => 413,  1481 => 412,  1475 => 409,  1463 => 408,  1460 => 407,  1458 => 406,  1455 => 405,  1443 => 404,  1442 => 403,  1437 => 400,  1433 => 398,  1427 => 396,  1424 => 395,  1411 => 394,  1409 => 393,  1405 => 392,  1402 => 391,  1400 => 390,  1397 => 389,  1396 => 388,  1393 => 387,  1387 => 383,  1372 => 381,  1368 => 380,  1364 => 379,  1355 => 375,  1348 => 374,  1346 => 373,  1343 => 372,  1331 => 371,  1327 => 369,  1326 => 368,  1323 => 367,  1319 => 365,  1313 => 364,  1296 => 363,  1294 => 362,  1291 => 361,  1290 => 360,  1286 => 358,  1285 => 357,  1282 => 356,  1276 => 352,  1271 => 350,  1263 => 349,  1255 => 348,  1253 => 347,  1247 => 345,  1245 => 344,  1242 => 343,  1228 => 341,  1226 => 340,  1223 => 339,  1218 => 337,  1207 => 331,  1201 => 327,  1200 => 326,  1197 => 325,  1188 => 324,  1186 => 323,  1180 => 322,  1177 => 321,  1173 => 319,  1164 => 318,  1160 => 317,  1157 => 316,  1155 => 315,  1152 => 314,  1143 => 313,  1139 => 312,  1136 => 311,  1133 => 310,  1126 => 309,  1125 => 308,  1122 => 307,  1118 => 305,  1109 => 303,  1105 => 302,  1100 => 300,  1096 => 298,  1094 => 297,  1089 => 295,  1086 => 294,  1078 => 291,  1075 => 290,  1073 => 289,  1070 => 288,  1063 => 284,  1059 => 283,  1055 => 282,  1051 => 281,  1047 => 280,  1041 => 278,  1039 => 277,  1033 => 274,  1029 => 273,  1025 => 272,  1021 => 271,  1017 => 270,  1011 => 268,  1009 => 267,  1006 => 266,  1005 => 265,  986 => 264,  985 => 263,  982 => 262,  980 => 261,  977 => 260,  973 => 258,  971 => 257,  961 => 254,  958 => 253,  955 => 252,  945 => 249,  942 => 248,  939 => 247,  929 => 244,  926 => 243,  923 => 242,  913 => 239,  910 => 238,  907 => 237,  897 => 234,  894 => 233,  891 => 232,  881 => 229,  878 => 228,  875 => 227,  874 => 226,  871 => 225,  868 => 224,  865 => 223,  863 => 222,  860 => 221,  838 => 219,  828 => 217,  825 => 216,  819 => 213,  815 => 212,  810 => 211,  808 => 210,  803 => 208,  799 => 207,  794 => 206,  791 => 205,  789 => 204,  783 => 200,  781 => 199,  774 => 194,  768 => 193,  764 => 191,  762 => 190,  755 => 188,  737 => 187,  733 => 185,  730 => 184,  726 => 183,  723 => 182,  719 => 181,  710 => 177,  704 => 175,  701 => 174,  698 => 173,  697 => 172,  694 => 171,  692 => 170,  686 => 169,  675 => 167,  672 => 166,  667 => 165,  666 => 164,  663 => 163,  655 => 161,  652 => 160,  650 => 159,  647 => 158,  637 => 157,  627 => 156,  610 => 155,  607 => 154,  605 => 153,  594 => 152,  593 => 151,  589 => 149,  587 => 148,  578 => 147,  577 => 146,  574 => 145,  572 => 144,  569 => 143,  556 => 142,  553 => 141,  552 => 140,  537 => 138,  529 => 137,  504 => 134,  499 => 133,  489 => 131,  486 => 130,  484 => 129,  480 => 128,  477 => 127,  476 => 126,  473 => 125,  464 => 119,  460 => 118,  453 => 114,  450 => 113,  442 => 110,  438 => 108,  436 => 107,  433 => 106,  427 => 103,  423 => 101,  421 => 100,  412 => 97,  405 => 95,  402 => 94,  396 => 93,  395 => 92,  382 => 90,  359 => 89,  333 => 88,  321 => 87,  303 => 86,  301 => 85,  297 => 84,  283 => 81,  279 => 80,  269 => 74,  267 => 73,  264 => 72,  263 => 71,  259 => 69,  257 => 68,  253 => 66,  247 => 64,  244 => 63,  231 => 62,  229 => 61,  218 => 60,  215 => 59,  213 => 58,  210 => 57,  202 => 52,  194 => 51,  188 => 50,  184 => 49,  179 => 47,  176 => 46,  174 => 45,  171 => 44,  169 => 43,  157 => 42,  153 => 40,  152 => 39,  149 => 38,  145 => 36,  139 => 35,  122 => 34,  120 => 33,  117 => 32,  116 => 31,  110 => 27,  104 => 23,  99 => 21,  94 => 20,  86 => 18,  84 => 17,  75 => 14,  73 => 13,  70 => 12,  57 => 9,  54 => 8,  52 => 7,  49 => 6,  43 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE overall_header.html -->*/
/* */
/* <h2 class="topic-title"><!-- EVENT viewtopic_topic_title_prepend --><a href="{U_VIEW_TOPIC}">{TOPIC_TITLE}</a><!-- EVENT viewtopic_topic_title_append --></h2>*/
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
/* 				<dl class="<!-- IF poll_option.POLL_OPTION_VOTED -->voted<!-- ENDIF --><!-- IF poll_option.POLL_OPTION_MOST_VOTES --> most-votes<!-- ENDIF -->"<!-- IF poll_option.POLL_OPTION_VOTED --> title="{L_POLL_VOTED_OPTION}"<!-- ENDIF --> data-poll-option-id="{poll_option.POLL_OPTION_ID}">*/
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
/* 	<hr />*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT viewtopic_body_poll_after -->*/
/* */
/* <!-- BEGIN postrow -->*/
/* 	<!-- EVENT viewtopic_body_postrow_post_before -->*/
/* 	<!-- IF postrow.S_FIRST_UNREAD -->*/
/* 		<a id="unread" class="anchor"<!-- IF S_UNREAD_VIEW --> data-url="{postrow.U_MINI_POST}"<!-- ENDIF -->></a>*/
/* 	<!-- ENDIF -->*/
/* 	<span class="post_anchor" id="p{postrow.POST_ID}"></span>*/
/* 	<div class="post has-profile <!-- IF postrow.S_ROW_COUNT is odd -->bg1<!-- ELSE -->bg2<!-- ENDIF --><!-- IF postrow.S_UNREAD_POST --> unreadpost<!-- ENDIF --><!-- IF postrow.S_POST_REPORTED --> reported<!-- ENDIF --><!-- IF postrow.S_POST_DELETED --> deleted<!-- ENDIF --><!-- IF postrow.S_ONLINE and not postrow.S_POST_HIDDEN --> online<!-- ENDIF --><!-- IF postrow.POSTER_WARNINGS --> warned<!-- ENDIF -->">*/
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
/* 				<div class="dropdown-container dropdown-left">*/
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
/* 			<h3 <!-- IF postrow.S_FIRST_ROW -->class="first"<!-- ENDIF -->><!-- IF postrow.POST_ICON_IMG --><img src="{T_ICONS_PATH}{postrow.POST_ICON_IMG}" width="{postrow.POST_ICON_IMG_WIDTH}" height="{postrow.POST_ICON_IMG_HEIGHT}" alt="" /> <!-- ENDIF --><a href="#p{postrow.POST_ID}">{postrow.POST_SUBJECT}</a></h3>*/
/* */
/* 			<!-- DEFINE $SHOW_POST_BUTTONS = (postrow.U_EDIT or postrow.U_DELETE or postrow.U_REPORT or postrow.U_WARN or postrow.U_INFO or postrow.U_QUOTE) -->*/
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
/* 					<input class="button2" type="submit" value="{L_DELETE}" name="action[disapprove]" />*/
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
/* 		<div class="back2top"><a href="#top" class="top" title="{L_BACK_TO_TOP}">{L_BACK_TO_TOP}</a></div>*/
/* */
/* 		</div>*/
/* 	</div>*/
/* */
/* 	<hr class="divider" />*/
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
/* */
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
