<?php

/* navbar_header.html */
class __TwigTemplate_3c3a11684d707fbf9691c16fd7eda7a3fc8a32ba3a4552eeb64fe8f02f4a8f1a extends Twig_Template
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
        // line 3
        echo "
\t";
        // line 4
        if ((isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null)) {
            // line 5
            echo "\t\t<li class=\"separator\"></li>
\t\t";
            // line 6
            if ((isset($context["S_REGISTERED_USER"]) ? $context["S_REGISTERED_USER"] : null)) {
                // line 7
                echo "\t\t\t<li class=\"small-icon icon-search-self\"><a href=\"";
                echo (isset($context["U_SEARCH_SELF"]) ? $context["U_SEARCH_SELF"] : null);
                echo "\" role=\"menuitem\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_SELF");
                echo "</a></li>
\t\t";
            }
            // line 9
            echo "\t\t";
            if ((isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null)) {
                // line 10
                echo "\t\t\t<li class=\"small-icon icon-search-new\"><a href=\"";
                echo (isset($context["U_SEARCH_NEW"]) ? $context["U_SEARCH_NEW"] : null);
                echo "\" role=\"menuitem\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_NEW");
                echo "</a></li>
\t\t";
            }
            // line 12
            echo "\t\t";
            if ((isset($context["S_LOAD_UNREADS"]) ? $context["S_LOAD_UNREADS"] : null)) {
                // line 13
                echo "\t\t\t<li class=\"small-icon icon-search-unread\"><a href=\"";
                echo (isset($context["U_SEARCH_UNREAD"]) ? $context["U_SEARCH_UNREAD"] : null);
                echo "\" role=\"menuitem\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_UNREAD");
                echo "</a></li>
\t\t";
            }
            // line 15
            echo "\t\t<li class=\"small-icon icon-search-unanswered\"><a href=\"";
            echo (isset($context["U_SEARCH_UNANSWERED"]) ? $context["U_SEARCH_UNANSWERED"] : null);
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_UNANSWERED");
            echo "</a></li>
\t\t<li class=\"small-icon icon-search-active\"><a href=\"";
            // line 16
            echo (isset($context["U_SEARCH_ACTIVE_TOPICS"]) ? $context["U_SEARCH_ACTIVE_TOPICS"] : null);
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ACTIVE_TOPICS");
            echo "</a></li>
\t\t<li class=\"separator\"></li>
\t\t<li class=\"small-icon icon-search\"><a href=\"";
            // line 18
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "</a></li>
\t";
        }
        $context["quick_links_first_block"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 21
        echo "
";
        // line 22
        ob_start();
        // line 23
        echo "\t";
        $context["quick_links_last_block"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 25
        echo "
";
        // line 26
        ob_start();
        echo trim((isset($context["quick_links_first_block"]) ? $context["quick_links_first_block"] : null));
        echo trim((isset($context["quick_links_last_block"]) ? $context["quick_links_last_block"] : null));
        $context["quick_links_all"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 27
        echo "
<div class=\"navbar tabbed not-static\" role=\"navigation\">
\t<div class=\"inner page-width\">
\t\t<div class=\"nav-tabs\" data-current-page=\"";
        // line 30
        if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "NAV_SECTION", array())) {
            echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "NAV_SECTION", array());
        } else {
            echo (isset($context["SCRIPT_NAME"]) ? $context["SCRIPT_NAME"] : null);
        }
        echo "\">
\t\t\t<ul class=\"leftside\">
\t\t\t\t<li id=\"quick-links\" class=\"tab responsive-menu dropdown-container";
        // line 32
        if (((isset($context["quick_links_all"]) ? $context["quick_links_all"] : null) == "")) {
            echo " empty";
        }
        echo "\">
\t\t\t\t\t<a href=\"#\" class=\"nav-link dropdown-trigger\">";
        // line 33
        echo $this->env->getExtension('phpbb')->lang("QUICK_LINKS");
        echo "</a>
\t\t\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t\t\t";
        // line 37
        echo (isset($context["quick_links_first_block"]) ? $context["quick_links_first_block"] : null);
        echo "
\t\t\t\t\t\t\t";
        // line 38
        if (trim((isset($context["quick_links_last_block"]) ? $context["quick_links_last_block"] : null))) {
            // line 39
            echo "\t\t\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t\t\t";
            // line 40
            echo (isset($context["quick_links_last_block"]) ? $context["quick_links_last_block"] : null);
            echo "
\t\t\t\t\t\t\t";
        }
        // line 42
        echo "\t\t\t\t\t\t</ul>
\t\t\t\t\t</div>
\t\t\t\t</li>
\t\t\t\t";
        // line 45
        // line 46
        echo "\t\t\t\t";
        if ((isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null)) {
            // line 47
            echo "\t\t\t\t\t<li class=\"tab home\" data-responsive-class=\"small-icon icon-home\">
\t\t\t\t\t\t<a class=\"nav-link\" href=\"";
            // line 48
            echo (isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null);
            echo "\" data-navbar-reference=\"home\">";
            echo $this->env->getExtension('phpbb')->lang("SITE_HOME");
            echo "</a>
\t\t\t\t\t</li>
\t\t\t\t";
        }
        // line 51
        echo "\t\t\t\t<li class=\"tab forums selected\" data-responsive-class=\"small-icon icon-forums\">
\t\t\t\t\t<a class=\"nav-link\" href=\"";
        // line 52
        echo (isset($context["U_INDEX"]) ? $context["U_INDEX"] : null);
        echo "\">";
        echo $this->env->getExtension('phpbb')->lang("FORUMS");
        echo "</a>
\t\t\t\t</li>
\t\t\t\t";
        // line 54
        if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && ((isset($context["S_DISPLAY_MEMBERLIST"]) ? $context["S_DISPLAY_MEMBERLIST"] : null) || (isset($context["U_TEAM"]) ? $context["U_TEAM"] : null)))) {
            // line 55
            echo "\t\t\t\t\t<li class=\"tab members dropdown-container\" data-select-match=\"member\" data-responsive-class=\"small-icon icon-members\">
\t\t\t\t\t\t<a class=\"nav-link dropdown-trigger\" href=\"";
            // line 56
            echo (isset($context["U_MEMBERLIST"]) ? $context["U_MEMBERLIST"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("MEMBERLIST");
            echo "</a>
\t\t\t\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t\t\t\t";
            // line 60
            if ((isset($context["S_DISPLAY_MEMBERLIST"]) ? $context["S_DISPLAY_MEMBERLIST"] : null)) {
                echo "<li class=\"small-icon icon-members\"><a href=\"";
                echo (isset($context["U_MEMBERLIST"]) ? $context["U_MEMBERLIST"] : null);
                echo "\" role=\"menuitem\">";
                echo $this->env->getExtension('phpbb')->lang("MEMBERLIST");
                echo "</a></li>";
            }
            // line 61
            echo "\t\t\t\t\t\t\t\t";
            if ((isset($context["U_TEAM"]) ? $context["U_TEAM"] : null)) {
                echo "<li class=\"small-icon icon-team\"><a href=\"";
                echo (isset($context["U_TEAM"]) ? $context["U_TEAM"] : null);
                echo "\" role=\"menuitem\">";
                echo $this->env->getExtension('phpbb')->lang("THE_TEAM");
                echo "</a></li>";
            }
            // line 62
            echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</li>
\t\t\t\t";
        }
        // line 66
        echo "\t\t\t\t";
        // line 67
        echo "\t\t\t</ul>
\t\t\t<ul class=\"rightside\">
\t\t\t\t";
        // line 69
        // line 70
        echo "\t\t\t\t<li class=\"tab faq\" data-select-match=\"faq\" data-responsive-class=\"small-icon icon-faq\">
\t\t\t\t\t<a class=\"nav-link\" href=\"";
        // line 71
        echo (isset($context["U_FAQ"]) ? $context["U_FAQ"] : null);
        echo "\" rel=\"help\" title=\"";
        echo $this->env->getExtension('phpbb')->lang("FAQ_EXPLAIN");
        echo "\" role=\"menuitem\">";
        echo $this->env->getExtension('phpbb')->lang("FAQ");
        echo "</a>
\t\t\t\t</li>
\t\t\t\t";
        // line 73
        // line 74
        echo "\t\t\t\t";
        if ((isset($context["U_ACP"]) ? $context["U_ACP"] : null)) {
            echo "<li class=\"tab acp\" data-last-responsive=\"true\" data-responsive-class=\"small-icon icon-acp\"><a class=\"nav-link\" href=\"";
            echo (isset($context["U_ACP"]) ? $context["U_ACP"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("ACP");
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("ACP_SHORT");
            echo "</a></li>";
        }
        // line 75
        echo "\t\t\t\t";
        if ((isset($context["U_MCP"]) ? $context["U_MCP"] : null)) {
            // line 76
            echo "\t\t\t\t\t<li class=\"tab mcp\" data-last-responsive=\"true\" data-select-match=\"mcp\" data-responsive-class=\"small-icon icon-mcp\">
\t\t\t\t\t\t<a class=\"nav-link\" href=\"";
            // line 77
            echo (isset($context["U_MCP"]) ? $context["U_MCP"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("MCP");
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("MCP_SHORT");
            echo "</a>
\t\t\t\t\t</li>
\t\t\t\t";
        }
        // line 80
        echo "\t\t\t\t";
        if ((isset($context["S_REGISTERED_USER"]) ? $context["S_REGISTERED_USER"] : null)) {
            // line 81
            echo "\t\t\t\t\t";
            // line 82
            echo "\t\t\t\t\t<li id=\"username_logged_in\" class=\"tab account dropdown-container\" data-skip-responsive=\"true\" data-select-match=\"ucp\">
\t\t\t\t\t\t<a href=\"";
            // line 83
            echo (isset($context["U_PROFILE"]) ? $context["U_PROFILE"] : null);
            echo "\" class=\"nav-link dropdown-trigger\">";
            echo (isset($context["CURRENT_USERNAME_SIMPLE"]) ? $context["CURRENT_USERNAME_SIMPLE"] : null);
            echo "</a>
\t\t\t\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t\t\t\t";
            // line 87
            if ((isset($context["U_RESTORE_PERMISSIONS"]) ? $context["U_RESTORE_PERMISSIONS"] : null)) {
                echo "<li class=\"small-icon icon-restore-permissions\"><a href=\"";
                echo (isset($context["U_RESTORE_PERMISSIONS"]) ? $context["U_RESTORE_PERMISSIONS"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("RESTORE_PERMISSIONS");
                echo "</a></li>";
            }
            // line 88
            echo "\t\t\t
\t\t\t\t\t\t\t\t";
            // line 89
            // line 90
            echo "\t\t\t
\t\t\t\t\t\t\t\t<li class=\"small-icon icon-ucp\"><a href=\"";
            // line 91
            echo (isset($context["U_PROFILE"]) ? $context["U_PROFILE"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("PROFILE");
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("PROFILE");
            echo "</a></li>
\t\t\t\t\t\t\t\t<li class=\"small-icon icon-profile\"><a href=\"";
            // line 92
            echo (isset($context["U_USER_PROFILE"]) ? $context["U_USER_PROFILE"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("READ_PROFILE");
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("READ_PROFILE");
            echo "</a></li>
\t\t\t
\t\t\t\t\t\t\t\t";
            // line 94
            // line 95
            echo "\t\t\t
\t\t\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t\t\t<li class=\"small-icon icon-logout\"><a href=\"";
            // line 97
            echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "</a></li>
\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t</li>
\t\t\t\t\t";
            // line 101
            if ((isset($context["S_DISPLAY_PM"]) ? $context["S_DISPLAY_PM"] : null)) {
                // line 102
                echo "\t\t\t\t\t\t<li class=\"tab pm";
                if (((isset($context["PRIVATE_MESSAGE_COUNT"]) ? $context["PRIVATE_MESSAGE_COUNT"] : null) > 0)) {
                    echo " non-zero";
                }
                echo "\" data-skip-responsive=\"true\" data-select-match=\"pm\">
\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"";
                // line 103
                echo (isset($context["U_PRIVATEMSGS"]) ? $context["U_PRIVATEMSGS"] : null);
                echo "\" role=\"menuitem\">";
                echo $this->env->getExtension('phpbb')->lang("PRIVATE_MESSAGES");
                echo "</a>
\t\t\t\t\t\t\t<strong>
\t\t\t\t\t\t\t\t<span class=\"counter\">";
                // line 105
                echo (isset($context["PRIVATE_MESSAGE_COUNT"]) ? $context["PRIVATE_MESSAGE_COUNT"] : null);
                echo "</span>
\t\t\t\t\t\t\t\t<span class=\"arrow\"></span>
\t\t\t\t\t\t\t</strong>
\t\t\t\t\t\t</li>
\t\t\t\t\t";
            }
            // line 110
            echo "\t\t\t\t\t";
            if ((isset($context["S_NOTIFICATIONS_DISPLAY"]) ? $context["S_NOTIFICATIONS_DISPLAY"] : null)) {
                // line 111
                echo "\t\t\t\t\t\t<li class=\"tab notifications dropdown-container";
                if (((isset($context["NOTIFICATIONS_COUNT"]) ? $context["NOTIFICATIONS_COUNT"] : null) > 0)) {
                    echo " non-zero";
                }
                echo "\" data-skip-responsive=\"true\" data-select-match=\"notifications\">
\t\t\t\t\t\t\t<a href=\"";
                // line 112
                echo (isset($context["U_VIEW_ALL_NOTIFICATIONS"]) ? $context["U_VIEW_ALL_NOTIFICATIONS"] : null);
                echo "\" id=\"notification_list_button\" class=\"nav-link dropdown-trigger\">";
                echo $this->env->getExtension('phpbb')->lang("NOTIFICATIONS");
                echo "</a>
\t\t\t\t\t\t\t<strong>
\t\t\t\t\t\t\t\t<span class=\"counter\">";
                // line 114
                echo (isset($context["NOTIFICATIONS_COUNT"]) ? $context["NOTIFICATIONS_COUNT"] : null);
                echo "</span>
\t\t\t\t\t\t\t\t<span class=\"arrow\"></span>
\t\t\t\t\t\t\t</strong>
\t\t\t\t\t\t\t";
                // line 117
                $location = "notification_dropdown.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("notification_dropdown.html", "navbar_header.html", 117)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 118
                echo "\t\t\t\t\t\t</li>
\t\t\t\t\t";
            }
            // line 120
            echo "\t\t\t\t\t";
            // line 121
            echo "\t\t\t\t";
        }
        // line 122
        echo "\t\t\t\t";
        if ((isset($context["S_REGISTERED_USER"]) ? $context["S_REGISTERED_USER"] : null)) {
            // line 123
            echo "\t\t\t\t\t<li class=\"tab logout\"  data-skip-responsive=\"true\"><a class=\"nav-link\" href=\"";
            echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "</a></li>
\t\t\t\t";
        } else {
            // line 125
            echo "\t\t\t\t\t<li class=\"tab login\"  data-skip-responsive=\"true\" data-select-match=\"login\"><a class=\"nav-link\" href=\"";
            echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "</a></li>
\t\t\t\t\t";
            // line 126
            if ((isset($context["S_REGISTER_ENABLED"]) ? $context["S_REGISTER_ENABLED"] : null)) {
                // line 127
                echo "\t\t\t\t\t\t<li class=\"tab register\" data-skip-responsive=\"true\" data-select-match=\"register\"><a class=\"nav-link\" href=\"";
                echo (isset($context["U_REGISTER"]) ? $context["U_REGISTER"] : null);
                echo "\" role=\"menuitem\">";
                echo $this->env->getExtension('phpbb')->lang("REGISTER");
                echo "</a></li>
\t\t\t\t\t";
            }
            // line 129
            echo "\t\t\t\t\t";
            // line 130
            echo "\t\t\t\t";
        }
        // line 131
        echo "\t\t\t</ul>
\t\t</div>
\t</div>
</div>

<div class=\"navbar secondary";
        // line 136
        if ((($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_IN_NAVBAR", array()) == 1) && $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_BOX", array()))) {
            echo " with-search";
        }
        echo "\">
\t<ul role=\"menubar\">
\t\t";
        // line 138
        ob_start();
        // line 139
        echo "\t\t";
        // line 140
        echo "\t\t";
        if (trim($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "NAVLINKS", array()))) {
            // line 141
            echo "\t\t\t";
            echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "NAVLINKS", array());
            echo "
\t\t";
        }
        // line 143
        echo "\t\t";
        if (( !trim($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "NAVLINKS", array())) || ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "NAVLINKS_SHOW_DEFAULT", array()) == 1))) {
            // line 144
            echo "\t\t\t";
            if (((isset($context["U_WATCH_FORUM_LINK"]) ? $context["U_WATCH_FORUM_LINK"] : null) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                echo "<li class=\"small-icon icon-";
                if ((isset($context["S_WATCHING_FORUM"]) ? $context["S_WATCHING_FORUM"] : null)) {
                    echo "unsubscribe";
                } else {
                    echo "subscribe";
                }
                echo "\" data-last-responsive=\"true\"><a href=\"";
                echo (isset($context["U_WATCH_FORUM_LINK"]) ? $context["U_WATCH_FORUM_LINK"] : null);
                echo "\" title=\"";
                echo (isset($context["S_WATCH_FORUM_TITLE"]) ? $context["S_WATCH_FORUM_TITLE"] : null);
                echo "\" data-ajax=\"toggle_link\" data-toggle-class=\"small-icon icon-";
                if ( !(isset($context["S_WATCHING_FORUM"]) ? $context["S_WATCHING_FORUM"] : null)) {
                    echo "unsubscribe";
                } else {
                    echo "subscribe";
                }
                echo "\" data-toggle-text=\"";
                echo (isset($context["S_WATCH_FORUM_TOGGLE"]) ? $context["S_WATCH_FORUM_TOGGLE"] : null);
                echo "\" data-toggle-url=\"";
                echo (isset($context["U_WATCH_FORUM_TOGGLE"]) ? $context["U_WATCH_FORUM_TOGGLE"] : null);
                echo "\">";
                echo (isset($context["S_WATCH_FORUM_TITLE"]) ? $context["S_WATCH_FORUM_TITLE"] : null);
                echo "</a></li>";
            }
            // line 145
            echo "\t\t";
        }
        // line 146
        echo "\t\t";
        // line 147
        echo "\t\t";
        $context["secondary_links"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 148
        echo "\t\t";
        if (trim((isset($context["secondary_links"]) ? $context["secondary_links"] : null))) {
            // line 149
            echo "\t\t\t";
            echo (isset($context["secondary_links"]) ? $context["secondary_links"] : null);
            echo "
\t\t\t";
            // line 150
            if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "NAVLINKS_SHOW_DEFAULT", array()) && (isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null))) {
                // line 151
                echo "\t\t\t\t<li class=\"small-icon icon-search";
                if ((($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_IN_NAVBAR", array()) == 1) && $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_BOX", array()))) {
                    echo " responsive-hide";
                }
                echo "\"><a href=\"";
                echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "</a></li>
\t\t\t\t";
                // line 152
                if ((isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null)) {
                    // line 153
                    echo "\t\t\t\t\t<li class=\"small-icon icon-new-posts\"><a href=\"";
                    echo (isset($context["U_SEARCH_NEW"]) ? $context["U_SEARCH_NEW"] : null);
                    echo "\" role=\"menuitem\">";
                    echo $this->env->getExtension('phpbb')->lang("SEARCH_NEW");
                    echo "</a></li>
\t\t\t\t";
                }
                // line 155
                echo "\t\t\t";
            }
            // line 156
            echo "\t\t";
        } else {
            // line 157
            echo "\t\t\t";
            if ((isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null)) {
                // line 158
                echo "\t\t\t\t<li class=\"small-icon icon-search";
                if ((($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_IN_NAVBAR", array()) == 1) && $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_BOX", array()))) {
                    echo " responsive-hide";
                }
                echo "\"><a href=\"";
                echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "</a></li>
\t\t\t\t";
                // line 159
                if ((isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null)) {
                    // line 160
                    echo "\t\t\t\t\t<li class=\"small-icon icon-new-posts\"><a href=\"";
                    echo (isset($context["U_SEARCH_NEW"]) ? $context["U_SEARCH_NEW"] : null);
                    echo "\" role=\"menuitem\">";
                    echo $this->env->getExtension('phpbb')->lang("SEARCH_NEW");
                    echo "</a></li>
\t\t\t\t";
                }
                // line 162
                echo "\t\t\t";
            }
            // line 163
            echo "\t\t\t";
            if ( !(isset($context["S_REGISTERED_USER"]) ? $context["S_REGISTERED_USER"] : null)) {
                // line 164
                echo "\t\t\t\t<li class=\"small-icon icon-login\"><a href=\"";
                echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
                echo "</a></li>
\t\t\t\t";
                // line 165
                if ((isset($context["S_REGISTER_ENABLED"]) ? $context["S_REGISTER_ENABLED"] : null)) {
                    // line 166
                    echo "\t\t\t\t\t<li class=\"small-icon icon-register\"><a href=\"";
                    echo (isset($context["U_REGISTER"]) ? $context["U_REGISTER"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("REGISTER");
                    echo "</a></li>
\t\t\t\t";
                }
                // line 168
                echo "\t\t\t";
            } elseif ( !(isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null)) {
                // line 169
                echo "\t\t\t\t<li><a href=\"";
                echo (isset($context["U_PROFILE"]) ? $context["U_PROFILE"] : null);
                echo "\" class=\"small-icon icon-profile\">";
                echo (isset($context["CURRENT_USERNAME_SIMPLE"]) ? $context["CURRENT_USERNAME_SIMPLE"] : null);
                echo "</a></li>
\t\t\t";
            }
            // line 171
            echo "\t\t";
        }
        // line 172
        echo "
\t\t";
        // line 173
        if ((($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_IN_NAVBAR", array()) == 1) && $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_BOX", array()))) {
            // line 174
            echo "\t\t\t<li class=\"search-box not-responsive\">";
            echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_BOX", array());
            echo "</li>
\t\t";
        }
        // line 176
        echo "\t</ul>
</div>

";
        // line 179
        ob_start();
        // line 180
        echo "<div class=\"navbar nav-breadcrumbs\">
\t<ul id=\"nav-breadcrumbs\" class=\"linklist navlinks\" role=\"menubar\">
\t\t";
        // line 182
        $value = " itemtype=\"http://data-vocabulary.org/Breadcrumb\" itemscope=\"\"";
        $context['definition']->set('MICRODATA', $value);
        // line 183
        echo "\t\t";
        // line 184
        echo "\t\t<li class=\"small-icon icon-home breadcrumbs\">
\t\t\t";
        // line 185
        if ((isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null)) {
            echo "<span class=\"crumb\" style=\"display: none;\"><a href=\"";
            echo (isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null);
            echo "\"";
            echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "MICRODATA", array());
            echo " data-navbar-reference=\"home\" itemprop=\"url\"><span itemprop=\"title\">";
            echo $this->env->getExtension('phpbb')->lang("SITE_HOME");
            echo "</span></a></span>";
        }
        // line 186
        echo "\t\t\t";
        // line 187
        echo "\t\t\t<span class=\"crumb\"";
        echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "MICRODATA", array());
        echo "><a href=\"";
        echo (isset($context["U_INDEX"]) ? $context["U_INDEX"] : null);
        echo "\" accesskey=\"h\" data-navbar-reference=\"index\" itemprop=\"url\"><span itemprop=\"title\">";
        echo $this->env->getExtension('phpbb')->lang("INDEX");
        echo "</span></a></span>
\t\t\t";
        // line 188
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "navlinks", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["navlinks"]) {
            // line 189
            echo "\t\t\t\t";
            // line 190
            echo "\t\t\t\t<span class=\"crumb\"";
            echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "MICRODATA", array());
            if ($this->getAttribute($context["navlinks"], "MICRODATA", array())) {
                echo " ";
                echo $this->getAttribute($context["navlinks"], "MICRODATA", array());
            }
            echo "><a href=\"";
            echo $this->getAttribute($context["navlinks"], "U_VIEW_FORUM", array());
            echo "\" itemprop=\"url\"><span itemprop=\"title\">";
            echo $this->getAttribute($context["navlinks"], "FORUM_NAME", array());
            echo "</span></a></span>
\t\t\t\t";
            // line 191
            // line 192
            echo "\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['navlinks'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 193
        echo "\t\t\t";
        // line 194
        echo "\t\t</li>
\t\t";
        // line 195
        // line 196
        echo "
\t\t";
        // line 197
        if (((isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null) &&  !(isset($context["S_IN_SEARCH"]) ? $context["S_IN_SEARCH"] : null))) {
            // line 198
            echo "\t\t\t<li class=\"rightside responsive-search\" style=\"display: none;\"><a href=\"";
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV_EXPLAIN");
            echo "\" role=\"menuitem\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "</a></li>
\t\t";
        }
        // line 200
        echo "\t\t<li class=\"rightside dropdown-container icon-only\">
\t\t\t<a href=\"#\" class=\"dropdown-trigger time\" title=\"";
        // line 201
        echo (isset($context["CURRENT_TIME"]) ? $context["CURRENT_TIME"] : null);
        echo "\"><i class=\"fa fa-clock-o\"></i></a>
\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t\t<li>";
        // line 205
        echo (isset($context["CURRENT_TIME"]) ? $context["CURRENT_TIME"] : null);
        echo "</li>
\t\t\t\t\t<li>";
        // line 206
        echo (isset($context["S_TIMEZONE"]) ? $context["S_TIMEZONE"] : null);
        echo "</li>
\t\t\t\t</ul>
\t\t\t</div>
\t\t</li>
\t</ul>
</div>
";
        $value = ('' === $value = ob_get_clean()) ? '' : new \Twig_Markup($value, $this->env->getCharset());
        $context['definition']->set('BREADCRUMBS', $value);
        // line 213
        if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "WRAP_HEADER", array()) != 0)) {
            // line 214
            echo "\t";
            echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "BREADCRUMBS", array());
            echo "
\t";
            // line 215
            $value = "";
            $context['definition']->set('BREADCRUMBS', $value);
        }
    }

    public function getTemplateName()
    {
        return "navbar_header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  721 => 215,  716 => 214,  714 => 213,  703 => 206,  699 => 205,  692 => 201,  689 => 200,  679 => 198,  677 => 197,  674 => 196,  673 => 195,  670 => 194,  668 => 193,  662 => 192,  661 => 191,  648 => 190,  646 => 189,  642 => 188,  633 => 187,  631 => 186,  621 => 185,  618 => 184,  616 => 183,  613 => 182,  609 => 180,  607 => 179,  602 => 176,  596 => 174,  594 => 173,  591 => 172,  588 => 171,  580 => 169,  577 => 168,  569 => 166,  567 => 165,  558 => 164,  555 => 163,  552 => 162,  544 => 160,  542 => 159,  531 => 158,  528 => 157,  525 => 156,  522 => 155,  514 => 153,  512 => 152,  501 => 151,  499 => 150,  494 => 149,  491 => 148,  488 => 147,  486 => 146,  483 => 145,  456 => 144,  453 => 143,  447 => 141,  444 => 140,  442 => 139,  440 => 138,  433 => 136,  426 => 131,  423 => 130,  421 => 129,  413 => 127,  411 => 126,  402 => 125,  392 => 123,  389 => 122,  386 => 121,  384 => 120,  380 => 118,  368 => 117,  362 => 114,  355 => 112,  348 => 111,  345 => 110,  337 => 105,  330 => 103,  323 => 102,  321 => 101,  310 => 97,  306 => 95,  305 => 94,  296 => 92,  288 => 91,  285 => 90,  284 => 89,  281 => 88,  273 => 87,  264 => 83,  261 => 82,  259 => 81,  256 => 80,  246 => 77,  243 => 76,  240 => 75,  229 => 74,  228 => 73,  219 => 71,  216 => 70,  215 => 69,  211 => 67,  209 => 66,  203 => 62,  194 => 61,  186 => 60,  177 => 56,  174 => 55,  172 => 54,  165 => 52,  162 => 51,  154 => 48,  151 => 47,  148 => 46,  147 => 45,  142 => 42,  137 => 40,  134 => 39,  132 => 38,  128 => 37,  121 => 33,  115 => 32,  106 => 30,  101 => 27,  96 => 26,  93 => 25,  90 => 23,  88 => 22,  85 => 21,  77 => 18,  70 => 16,  63 => 15,  55 => 13,  52 => 12,  44 => 10,  41 => 9,  33 => 7,  31 => 6,  28 => 5,  26 => 4,  23 => 3,  21 => 2,  19 => 1,);
    }
}
/* {% set quick_links_first_block %}*/
/* 	<!-- EVENT navbar_header_quick_links_before -->*/
/* */
/* 	<!-- IF S_DISPLAY_SEARCH -->*/
/* 		<li class="separator"></li>*/
/* 		<!-- IF S_REGISTERED_USER -->*/
/* 			<li class="small-icon icon-search-self"><a href="{U_SEARCH_SELF}" role="menuitem">{L_SEARCH_SELF}</a></li>*/
/* 		<!-- ENDIF -->*/
/* 		<!-- IF S_USER_LOGGED_IN -->*/
/* 			<li class="small-icon icon-search-new"><a href="{U_SEARCH_NEW}" role="menuitem">{L_SEARCH_NEW}</a></li>*/
/* 		<!-- ENDIF -->*/
/* 		<!-- IF S_LOAD_UNREADS -->*/
/* 			<li class="small-icon icon-search-unread"><a href="{U_SEARCH_UNREAD}" role="menuitem">{L_SEARCH_UNREAD}</a></li>*/
/* 		<!-- ENDIF -->*/
/* 		<li class="small-icon icon-search-unanswered"><a href="{U_SEARCH_UNANSWERED}" role="menuitem">{L_SEARCH_UNANSWERED}</a></li>*/
/* 		<li class="small-icon icon-search-active"><a href="{U_SEARCH_ACTIVE_TOPICS}" role="menuitem">{L_SEARCH_ACTIVE_TOPICS}</a></li>*/
/* 		<li class="separator"></li>*/
/* 		<li class="small-icon icon-search"><a href="{U_SEARCH}" role="menuitem">{L_SEARCH}</a></li>*/
/* 	<!-- ENDIF -->*/
/* {% endset %}*/
/* */
/* {% set quick_links_last_block %}*/
/* 	<!-- EVENT navbar_header_quick_links_after -->*/
/* {% endset %}*/
/* */
/* {% set quick_links_all %}{{ quick_links_first_block|trim }}{{ quick_links_last_block|trim }}{% endset %}*/
/* */
/* <div class="navbar tabbed not-static" role="navigation">*/
/* 	<div class="inner page-width">*/
/* 		<div class="nav-tabs" data-current-page="<!-- IF $NAV_SECTION -->{$NAV_SECTION}<!-- ELSE -->{SCRIPT_NAME}<!-- ENDIF -->">*/
/* 			<ul class="leftside">*/
/* 				<li id="quick-links" class="tab responsive-menu dropdown-container{% if quick_links_all == '' %} empty{% endif %}">*/
/* 					<a href="#" class="nav-link dropdown-trigger">{L_QUICK_LINKS}</a>*/
/* 					<div class="dropdown hidden">*/
/* 						<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 						<ul class="dropdown-contents" role="menu">*/
/* 							{{ quick_links_first_block }}*/
/* 							{% if quick_links_last_block|trim %}*/
/* 								<li class="separator"></li>*/
/* 								{{ quick_links_last_block }}*/
/* 							{% endif %}*/
/* 						</ul>*/
/* 					</div>*/
/* 				</li>*/
/* 				<!-- EVENT navtabs_left_before -->*/
/* 				<!-- IF U_SITE_HOME -->*/
/* 					<li class="tab home" data-responsive-class="small-icon icon-home">*/
/* 						<a class="nav-link" href="{U_SITE_HOME}" data-navbar-reference="home">{L_SITE_HOME}</a>*/
/* 					</li>*/
/* 				<!-- ENDIF -->*/
/* 				<li class="tab forums selected" data-responsive-class="small-icon icon-forums">*/
/* 					<a class="nav-link" href="{U_INDEX}">{L_FORUMS}</a>*/
/* 				</li>*/
/* 				<!-- IF not S_IS_BOT and (S_DISPLAY_MEMBERLIST or U_TEAM) -->*/
/* 					<li class="tab members dropdown-container" data-select-match="member" data-responsive-class="small-icon icon-members">*/
/* 						<a class="nav-link dropdown-trigger" href="{U_MEMBERLIST}">{L_MEMBERLIST}</a>*/
/* 						<div class="dropdown hidden">*/
/* 							<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 							<ul class="dropdown-contents" role="menu">*/
/* 								<!-- IF S_DISPLAY_MEMBERLIST --><li class="small-icon icon-members"><a href="{U_MEMBERLIST}" role="menuitem">{L_MEMBERLIST}</a></li><!-- ENDIF -->*/
/* 								<!-- IF U_TEAM --><li class="small-icon icon-team"><a href="{U_TEAM}" role="menuitem">{L_THE_TEAM}</a></li><!-- ENDIF -->*/
/* 							</ul>*/
/* 						</div>*/
/* 					</li>*/
/* 				<!-- ENDIF -->*/
/* 				<!-- EVENT navtabs_left_after -->*/
/* 			</ul>*/
/* 			<ul class="rightside">*/
/* 				<!-- EVENT overall_header_navigation_prepend -->*/
/* 				<li class="tab faq" data-select-match="faq" data-responsive-class="small-icon icon-faq">*/
/* 					<a class="nav-link" href="{U_FAQ}" rel="help" title="{L_FAQ_EXPLAIN}" role="menuitem">{L_FAQ}</a>*/
/* 				</li>*/
/* 				<!-- EVENT overall_header_navigation_append -->*/
/* 				<!-- IF U_ACP --><li class="tab acp" data-last-responsive="true" data-responsive-class="small-icon icon-acp"><a class="nav-link" href="{U_ACP}" title="{L_ACP}" role="menuitem">{L_ACP_SHORT}</a></li><!-- ENDIF -->*/
/* 				<!-- IF U_MCP -->*/
/* 					<li class="tab mcp" data-last-responsive="true" data-select-match="mcp" data-responsive-class="small-icon icon-mcp">*/
/* 						<a class="nav-link" href="{U_MCP}" title="{L_MCP}" role="menuitem">{L_MCP_SHORT}</a>*/
/* 					</li>*/
/* 				<!-- ENDIF -->*/
/* 				<!-- IF S_REGISTERED_USER -->*/
/* 					<!-- EVENT navbar_header_user_profile_prepend -->*/
/* 					<li id="username_logged_in" class="tab account dropdown-container" data-skip-responsive="true" data-select-match="ucp">*/
/* 						<a href="{U_PROFILE}" class="nav-link dropdown-trigger">{CURRENT_USERNAME_SIMPLE}</a>*/
/* 						<div class="dropdown hidden">*/
/* 							<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 							<ul class="dropdown-contents" role="menu">*/
/* 								<!-- IF U_RESTORE_PERMISSIONS --><li class="small-icon icon-restore-permissions"><a href="{U_RESTORE_PERMISSIONS}">{L_RESTORE_PERMISSIONS}</a></li><!-- ENDIF -->*/
/* 			*/
/* 								<!-- EVENT navbar_header_profile_list_before -->*/
/* 			*/
/* 								<li class="small-icon icon-ucp"><a href="{U_PROFILE}" title="{L_PROFILE}" role="menuitem">{L_PROFILE}</a></li>*/
/* 								<li class="small-icon icon-profile"><a href="{U_USER_PROFILE}" title="{L_READ_PROFILE}" role="menuitem">{L_READ_PROFILE}</a></li>*/
/* 			*/
/* 								<!-- EVENT navbar_header_profile_list_after -->*/
/* 			*/
/* 								<li class="separator"></li>*/
/* 								<li class="small-icon icon-logout"><a href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}" accesskey="x" role="menuitem">{L_LOGIN_LOGOUT}</a></li>*/
/* 							</ul>*/
/* 						</div>*/
/* 					</li>*/
/* 					<!-- IF S_DISPLAY_PM -->*/
/* 						<li class="tab pm<!-- IF PRIVATE_MESSAGE_COUNT > 0 --> non-zero<!-- ENDIF -->" data-skip-responsive="true" data-select-match="pm">*/
/* 							<a class="nav-link" href="{U_PRIVATEMSGS}" role="menuitem">{L_PRIVATE_MESSAGES}</a>*/
/* 							<strong>*/
/* 								<span class="counter">{PRIVATE_MESSAGE_COUNT}</span>*/
/* 								<span class="arrow"></span>*/
/* 							</strong>*/
/* 						</li>*/
/* 					<!-- ENDIF -->*/
/* 					<!-- IF S_NOTIFICATIONS_DISPLAY -->*/
/* 						<li class="tab notifications dropdown-container<!-- IF NOTIFICATIONS_COUNT > 0 --> non-zero<!-- ENDIF -->" data-skip-responsive="true" data-select-match="notifications">*/
/* 							<a href="{U_VIEW_ALL_NOTIFICATIONS}" id="notification_list_button" class="nav-link dropdown-trigger">{L_NOTIFICATIONS}</a>*/
/* 							<strong>*/
/* 								<span class="counter">{NOTIFICATIONS_COUNT}</span>*/
/* 								<span class="arrow"></span>*/
/* 							</strong>*/
/* 							<!-- INCLUDE notification_dropdown.html -->*/
/* 						</li>*/
/* 					<!-- ENDIF -->*/
/* 					<!-- EVENT navbar_header_user_profile_append -->*/
/* 				<!-- ENDIF -->*/
/* 				<!-- IF S_REGISTERED_USER -->*/
/* 					<li class="tab logout"  data-skip-responsive="true"><a class="nav-link" href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}" accesskey="x" role="menuitem">{L_LOGIN_LOGOUT}</a></li>*/
/* 				<!-- ELSE -->*/
/* 					<li class="tab login"  data-skip-responsive="true" data-select-match="login"><a class="nav-link" href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}" accesskey="x" role="menuitem">{L_LOGIN_LOGOUT}</a></li>*/
/* 					<!-- IF S_REGISTER_ENABLED -->*/
/* 						<li class="tab register" data-skip-responsive="true" data-select-match="register"><a class="nav-link" href="{U_REGISTER}" role="menuitem">{L_REGISTER}</a></li>*/
/* 					<!-- ENDIF -->*/
/* 					<!-- EVENT navbar_header_logged_out_content -->*/
/* 				<!-- ENDIF -->*/
/* 			</ul>*/
/* 		</div>*/
/* 	</div>*/
/* </div>*/
/* */
/* <div class="navbar secondary{% if definition.SEARCH_IN_NAVBAR == 1 && definition.SEARCH_BOX %} with-search{% endif %}">*/
/* 	<ul role="menubar">*/
/* 		{% set secondary_links %}*/
/* 		<!-- EVENT secondary_navlinks_before -->*/
/* 		{% if definition.NAVLINKS|trim %}*/
/* 			{{ definition.NAVLINKS }}*/
/* 		{% endif %}*/
/* 		{% if !definition.NAVLINKS|trim || definition.NAVLINKS_SHOW_DEFAULT == 1 %}*/
/* 			<!-- IF U_WATCH_FORUM_LINK and not S_IS_BOT --><li class="small-icon icon-<!-- IF S_WATCHING_FORUM -->unsubscribe<!-- ELSE -->subscribe<!-- ENDIF -->" data-last-responsive="true"><a href="{U_WATCH_FORUM_LINK}" title="{S_WATCH_FORUM_TITLE}" data-ajax="toggle_link" data-toggle-class="small-icon icon-<!-- IF not S_WATCHING_FORUM -->unsubscribe<!-- ELSE -->subscribe<!-- ENDIF -->" data-toggle-text="{S_WATCH_FORUM_TOGGLE}" data-toggle-url="{U_WATCH_FORUM_TOGGLE}">{S_WATCH_FORUM_TITLE}</a></li><!-- ENDIF -->*/
/* 		{% endif %}*/
/* 		<!-- EVENT secondary_navlinks_after -->*/
/* 		{% endset %}*/
/* 		{% if secondary_links|trim %}*/
/* 			{{ secondary_links }}*/
/* 			<!-- IF $NAVLINKS_SHOW_DEFAULT && S_DISPLAY_SEARCH -->*/
/* 				<li class="small-icon icon-search{% if definition.SEARCH_IN_NAVBAR == 1 && definition.SEARCH_BOX %} responsive-hide{% endif %}"><a href="{U_SEARCH}">{L_SEARCH}</a></li>*/
/* 				<!-- IF S_USER_LOGGED_IN -->*/
/* 					<li class="small-icon icon-new-posts"><a href="{U_SEARCH_NEW}" role="menuitem">{L_SEARCH_NEW}</a></li>*/
/* 				<!-- ENDIF -->*/
/* 			<!-- ENDIF -->*/
/* 		{% else %}*/
/* 			<!-- IF S_DISPLAY_SEARCH -->*/
/* 				<li class="small-icon icon-search{% if definition.SEARCH_IN_NAVBAR == 1 && definition.SEARCH_BOX %} responsive-hide{% endif %}"><a href="{U_SEARCH}">{L_SEARCH}</a></li>*/
/* 				<!-- IF S_USER_LOGGED_IN -->*/
/* 					<li class="small-icon icon-new-posts"><a href="{U_SEARCH_NEW}" role="menuitem">{L_SEARCH_NEW}</a></li>*/
/* 				<!-- ENDIF -->*/
/* 			<!-- ENDIF -->*/
/* 			<!-- IF not S_REGISTERED_USER -->*/
/* 				<li class="small-icon icon-login"><a href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT}</a></li>*/
/* 				<!-- IF S_REGISTER_ENABLED -->*/
/* 					<li class="small-icon icon-register"><a href="{U_REGISTER}">{L_REGISTER}</a></li>*/
/* 				<!-- ENDIF -->*/
/* 			<!-- ELSEIF not S_DISPLAY_SEARCH -->*/
/* 				<li><a href="{U_PROFILE}" class="small-icon icon-profile">{CURRENT_USERNAME_SIMPLE}</a></li>*/
/* 			<!-- ENDIF -->*/
/* 		{% endif %}*/
/* */
/* 		{% if definition.SEARCH_IN_NAVBAR == 1 && definition.SEARCH_BOX %}*/
/* 			<li class="search-box not-responsive">{$SEARCH_BOX}</li>*/
/* 		{% endif %}*/
/* 	</ul>*/
/* </div>*/
/* */
/* <!-- DEFINE $BREADCRUMBS -->*/
/* <div class="navbar nav-breadcrumbs">*/
/* 	<ul id="nav-breadcrumbs" class="linklist navlinks" role="menubar">*/
/* 		<!-- DEFINE $MICRODATA = ' itemtype="http://data-vocabulary.org/Breadcrumb" itemscope=""' -->*/
/* 		<!-- EVENT overall_header_breadcrumbs_before -->*/
/* 		<li class="small-icon icon-home breadcrumbs">*/
/* 			<!-- IF U_SITE_HOME --><span class="crumb" style="display: none;"><a href="{U_SITE_HOME}"{$MICRODATA} data-navbar-reference="home" itemprop="url"><span itemprop="title">{L_SITE_HOME}</span></a></span><!-- ENDIF -->*/
/* 			<!-- EVENT overall_header_breadcrumb_prepend -->*/
/* 			<span class="crumb"{$MICRODATA}><a href="{U_INDEX}" accesskey="h" data-navbar-reference="index" itemprop="url"><span itemprop="title">{L_INDEX}</span></a></span>*/
/* 			<!-- BEGIN navlinks -->*/
/* 				<!-- EVENT overall_header_navlink_prepend -->*/
/* 				<span class="crumb"{$MICRODATA}<!-- IF navlinks.MICRODATA --> {navlinks.MICRODATA}<!-- ENDIF -->><a href="{navlinks.U_VIEW_FORUM}" itemprop="url"><span itemprop="title">{navlinks.FORUM_NAME}</span></a></span>*/
/* 				<!-- EVENT overall_header_navlink_append -->*/
/* 			<!-- END navlinks -->*/
/* 			<!-- EVENT overall_header_breadcrumb_append -->*/
/* 		</li>*/
/* 		<!-- EVENT overall_header_breadcrumbs_after -->*/
/* */
/* 		<!-- IF S_DISPLAY_SEARCH and not S_IN_SEARCH -->*/
/* 			<li class="rightside responsive-search" style="display: none;"><a href="{U_SEARCH}" title="{L_SEARCH_ADV_EXPLAIN}" role="menuitem">{L_SEARCH}</a></li>*/
/* 		<!-- ENDIF -->*/
/* 		<li class="rightside dropdown-container icon-only">*/
/* 			<a href="#" class="dropdown-trigger time" title="{CURRENT_TIME}"><i class="fa fa-clock-o"></i></a>*/
/* 			<div class="dropdown hidden">*/
/* 				<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 				<ul class="dropdown-contents">*/
/* 					<li>{CURRENT_TIME}</li>*/
/* 					<li>{S_TIMEZONE}</li>*/
/* 				</ul>*/
/* 			</div>*/
/* 		</li>*/
/* 	</ul>*/
/* </div>*/
/* <!-- ENDDEFINE -->*/
/* <!-- IF $WRAP_HEADER != 0 -->*/
/* 	{$BREADCRUMBS}*/
/* 	<!-- DEFINE $BREADCRUMBS = '' -->*/
/* <!-- ENDIF -->*/
