<?php

/* navbar_header.html */
class __TwigTemplate_8f06e606c3406e6dd869f7f24ecf261096f242da3af6af26c5dcd1c4a738d68e extends Twig_Template
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
        echo "<div class=\"navbar navbar-header\" role=\"navigation\">
\t<div class=\"inner\">

\t<ul id=\"nav-main\" class=\"linklist no-bulletin\" role=\"menubar\">

\t\t<li id=\"quick-links\" class=\"small-icon responsive-menu dropdown-container";
        // line 6
        if (( !(isset($context["S_DISPLAY_QUICK_LINKS"]) ? $context["S_DISPLAY_QUICK_LINKS"] : null) &&  !(isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null))) {
            echo " hidden";
        }
        echo "\" data-skip-responsive=\"true\">
\t\t\t<a href=\"#\" class=\"responsive-menu-link dropdown-trigger\">";
        // line 7
        echo $this->env->getExtension('phpbb')->lang("QUICK_LINKS");
        echo "</a>
\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t";
        // line 11
        // line 12
        echo "
\t\t\t\t\t";
        // line 13
        if ((isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null)) {
            // line 14
            echo "\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t";
            // line 15
            if ((isset($context["S_REGISTERED_USER"]) ? $context["S_REGISTERED_USER"] : null)) {
                // line 16
                echo "\t\t\t\t\t\t\t<li><a href=\"";
                echo (isset($context["U_SEARCH_SELF"]) ? $context["U_SEARCH_SELF"] : null);
                echo "\" role=\"menuitem\"><i class=\"fa fa-map-marker\"></i> ";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_SELF");
                echo "</a></li>
\t\t\t\t\t\t";
            }
            // line 18
            echo "\t\t\t\t\t\t";
            if ((isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null)) {
                // line 19
                echo "\t\t\t\t\t\t\t<li><a href=\"";
                echo (isset($context["U_SEARCH_NEW"]) ? $context["U_SEARCH_NEW"] : null);
                echo "\" role=\"menuitem\"><i class=\"fa fa-file-text\"></i> ";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_NEW");
                echo "</a></li>
\t\t\t\t\t\t";
            }
            // line 21
            echo "\t\t\t\t\t\t";
            if ((isset($context["S_LOAD_UNREADS"]) ? $context["S_LOAD_UNREADS"] : null)) {
                echo " 
\t\t\t\t\t\t\t<li><a href=\"";
                // line 22
                echo (isset($context["U_SEARCH_UNREAD"]) ? $context["U_SEARCH_UNREAD"] : null);
                echo "\" role=\"menuitem\"><i class=\"fa fa-file-text\"></i> ";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_UNREAD");
                echo "</a></li>
\t\t\t\t\t\t";
            }
            // line 24
            echo "\t\t\t\t\t\t<li><a href=\"";
            echo (isset($context["U_SEARCH_UNANSWERED"]) ? $context["U_SEARCH_UNANSWERED"] : null);
            echo "\" role=\"menuitem\"><i class=\"fa fa-file-o\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_UNANSWERED");
            echo "</a></li>
\t\t\t\t\t\t<li><a href=\"";
            // line 25
            echo (isset($context["U_SEARCH_ACTIVE_TOPICS"]) ? $context["U_SEARCH_ACTIVE_TOPICS"] : null);
            echo "\" role=\"menuitem\"><i class=\"fa fa-file-text-o\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ACTIVE_TOPICS");
            echo "</a></li>
\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t<li><a href=\"";
            // line 27
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" role=\"menuitem\"><i class=\"fa fa-search\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "</a></li>
\t\t\t\t\t";
        }
        // line 29
        echo "
\t\t\t\t\t";
        // line 30
        if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && ((isset($context["S_DISPLAY_MEMBERLIST"]) ? $context["S_DISPLAY_MEMBERLIST"] : null) || (isset($context["U_TEAM"]) ? $context["U_TEAM"] : null)))) {
            // line 31
            echo "\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t";
            // line 32
            if ((isset($context["S_DISPLAY_MEMBERLIST"]) ? $context["S_DISPLAY_MEMBERLIST"] : null)) {
                echo "<li><a href=\"";
                echo (isset($context["U_MEMBERLIST"]) ? $context["U_MEMBERLIST"] : null);
                echo "\" role=\"menuitem\"><i class=\"fa fa-users\"></i> ";
                echo $this->env->getExtension('phpbb')->lang("MEMBERLIST");
                echo "</a></li>";
            }
            // line 33
            echo "\t\t\t\t\t\t";
            if ((isset($context["U_TEAM"]) ? $context["U_TEAM"] : null)) {
                echo "<li><a href=\"";
                echo (isset($context["U_TEAM"]) ? $context["U_TEAM"] : null);
                echo "\" role=\"menuitem\"><i class=\"fa fa-users\"></i> ";
                echo $this->env->getExtension('phpbb')->lang("THE_TEAM");
                echo "</a></li>";
            }
            // line 34
            echo "\t\t\t\t\t";
        }
        // line 35
        echo "\t\t\t\t\t<li class=\"separator\"></li>

\t\t\t\t\t";
        // line 37
        // line 38
        echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t</li>

\t\t";
        // line 42
        // line 43
        echo "\t\t<li ";
        if ( !(isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null)) {
            echo "data-skip-responsive=\"true\"";
        } else {
            echo "data-last-responsive=\"true\"";
        }
        echo "><a href=\"";
        echo (isset($context["U_FAQ"]) ? $context["U_FAQ"] : null);
        echo "\" rel=\"help\" title=\"";
        echo $this->env->getExtension('phpbb')->lang("FAQ_EXPLAIN");
        echo "\" role=\"menuitem\"><i class=\"fa fa-question-circle\"></i> ";
        echo $this->env->getExtension('phpbb')->lang("FAQ");
        echo "</a></li>
\t\t";
        // line 44
        // line 45
        echo "\t\t";
        if ((isset($context["U_ACP"]) ? $context["U_ACP"] : null)) {
            echo "<li data-last-responsive=\"true\"><a href=\"";
            echo (isset($context["U_ACP"]) ? $context["U_ACP"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("ACP");
            echo "\" role=\"menuitem\"><i class=\"fa fa-cogs\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("ACP_SHORT");
            echo "</a></li>";
        }
        // line 46
        echo "\t\t";
        if ((isset($context["U_MCP"]) ? $context["U_MCP"] : null)) {
            echo "<li data-last-responsive=\"true\"><a href=\"";
            echo (isset($context["U_MCP"]) ? $context["U_MCP"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("MCP");
            echo "\" role=\"menuitem\"><i class=\"fa fa-gavel\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("MCP_SHORT");
            echo "</a></li>";
        }
        // line 47
        echo "
\t";
        // line 48
        if ((isset($context["S_REGISTERED_USER"]) ? $context["S_REGISTERED_USER"] : null)) {
            // line 49
            echo "\t\t";
            // line 50
            echo "\t\t<li id=\"username_logged_in\" class=\"rightside ";
            if ((isset($context["CURRENT_USER_AVATAR"]) ? $context["CURRENT_USER_AVATAR"] : null)) {
                echo " no-bulletin";
            }
            echo "\" data-skip-responsive=\"true\">
\t\t\t";
            // line 51
            // line 52
            echo "\t\t\t<div class=\"header-profile dropdown-container\">
\t\t\t\t<a href=\"";
            // line 53
            echo (isset($context["U_PROFILE"]) ? $context["U_PROFILE"] : null);
            echo "\" class=\"header-avatar dropdown-trigger\">";
            if ((isset($context["CURRENT_USER_AVATAR"]) ? $context["CURRENT_USER_AVATAR"] : null)) {
                echo (isset($context["CURRENT_USER_AVATAR"]) ? $context["CURRENT_USER_AVATAR"] : null);
                echo " ";
            }
            echo (isset($context["CURRENT_USERNAME_SIMPLE"]) ? $context["CURRENT_USERNAME_SIMPLE"] : null);
            echo "</a>
\t\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t\t<ul class=\"dropdown-contents\" role=\"menu\">
\t\t\t\t\t\t";
            // line 57
            if ((isset($context["U_RESTORE_PERMISSIONS"]) ? $context["U_RESTORE_PERMISSIONS"] : null)) {
                echo "<li class=\"small-icon icon-restore-permissions\"><a href=\"";
                echo (isset($context["U_RESTORE_PERMISSIONS"]) ? $context["U_RESTORE_PERMISSIONS"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("RESTORE_PERMISSIONS");
                echo "</a></li>";
            }
            // line 58
            echo "\t
\t\t\t\t\t\t";
            // line 59
            // line 60
            echo "\t
\t\t\t\t\t\t<li><a href=\"";
            // line 61
            echo (isset($context["U_PROFILE"]) ? $context["U_PROFILE"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("PROFILE");
            echo "\" role=\"menuitem\"><i class=\"fa fa-pencil\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("PROFILE");
            echo "</a></li>
\t\t\t\t\t\t<li><a href=\"";
            // line 62
            echo (isset($context["U_USER_PROFILE"]) ? $context["U_USER_PROFILE"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("READ_PROFILE");
            echo "\" role=\"menuitem\"><i class=\"fa fa-user\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("READ_PROFILE");
            echo "</a></li>
\t
\t\t\t\t\t\t";
            // line 64
            // line 65
            echo "\t
\t\t\t\t\t\t<li class=\"separator\"></li>
\t\t\t\t\t\t<li><a href=\"";
            // line 67
            echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\"><i class=\"fa fa-power-off\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "</a></li>
\t\t\t\t\t</ul>
\t\t\t\t</div>
\t\t\t</div>
\t\t\t";
            // line 71
            // line 72
            echo "\t\t</li>
\t\t";
            // line 73
            if ((isset($context["S_DISPLAY_PM"]) ? $context["S_DISPLAY_PM"] : null)) {
                // line 74
                echo "\t\t\t<li class=\"rightside icon-pm\" data-skip-responsive=\"true\">
\t\t\t\t<a href=\"";
                // line 75
                echo (isset($context["U_PRIVATEMSGS"]) ? $context["U_PRIVATEMSGS"] : null);
                echo "\"role=\"menuitem\"><i class=\"fa fa-envelope\"></i> <span>";
                echo $this->env->getExtension('phpbb')->lang("PRIVATE_MESSAGES");
                echo " [</span><strong>";
                echo (isset($context["PRIVATE_MESSAGE_COUNT"]) ? $context["PRIVATE_MESSAGE_COUNT"] : null);
                echo "</strong><span>]</span></a>
\t\t\t</li>
\t\t";
            }
            // line 78
            echo "\t\t";
            if ((isset($context["S_NOTIFICATIONS_DISPLAY"]) ? $context["S_NOTIFICATIONS_DISPLAY"] : null)) {
                // line 79
                echo "\t\t\t<li class=\"dropdown-container icon-notification dropdown-";
                echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
                echo " rightside\" data-skip-responsive=\"true\">
\t\t\t\t<a href=\"";
                // line 80
                echo (isset($context["U_VIEW_ALL_NOTIFICATIONS"]) ? $context["U_VIEW_ALL_NOTIFICATIONS"] : null);
                echo "\" id=\"notification_list_button\" class=\"dropdown-trigger\"><i class=\"fa fa-bell\"></i> <span>";
                echo $this->env->getExtension('phpbb')->lang("NOTIFICATIONS");
                echo " [</span><strong>";
                echo (isset($context["NOTIFICATIONS_COUNT"]) ? $context["NOTIFICATIONS_COUNT"] : null);
                echo "</strong><span>]</span></a>
\t\t\t\t";
                // line 81
                $location = "notification_dropdown.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("notification_dropdown.html", "navbar_header.html", 81)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 82
                echo "\t\t\t</li>
\t\t";
            }
            // line 84
            echo "\t\t";
            // line 85
            echo "\t";
        } else {
            // line 86
            echo "\t\t<li class=\"rightside\"  data-skip-responsive=\"true\"><a href=\"";
            echo (isset($context["U_LOGIN_LOGOUT"]) ? $context["U_LOGIN_LOGOUT"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "\" accesskey=\"x\" role=\"menuitem\"><i class=\"fa fa-power-off\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("LOGIN_LOGOUT");
            echo "</a></li>
\t\t";
            // line 87
            if (((isset($context["S_REGISTER_ENABLED"]) ? $context["S_REGISTER_ENABLED"] : null) &&  !((isset($context["S_SHOW_COPPA"]) ? $context["S_SHOW_COPPA"] : null) || (isset($context["S_REGISTRATION"]) ? $context["S_REGISTRATION"] : null)))) {
                // line 88
                echo "\t\t\t<li class=\"rightside\" data-skip-responsive=\"true\"><a href=\"";
                echo (isset($context["U_REGISTER"]) ? $context["U_REGISTER"] : null);
                echo "\" role=\"menuitem\"><i class=\"fa fa-plus-square\"></i> ";
                echo $this->env->getExtension('phpbb')->lang("REGISTER");
                echo "</a></li>
\t\t";
            }
            // line 90
            echo "\t\t";
            // line 91
            echo "\t";
        }
        // line 92
        echo "\t</ul>

\t</div>
</div>";
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
        return array (  339 => 92,  336 => 91,  334 => 90,  326 => 88,  324 => 87,  315 => 86,  312 => 85,  310 => 84,  306 => 82,  294 => 81,  286 => 80,  281 => 79,  278 => 78,  268 => 75,  265 => 74,  263 => 73,  260 => 72,  259 => 71,  248 => 67,  244 => 65,  243 => 64,  234 => 62,  226 => 61,  223 => 60,  222 => 59,  219 => 58,  211 => 57,  198 => 53,  195 => 52,  194 => 51,  187 => 50,  185 => 49,  183 => 48,  180 => 47,  169 => 46,  158 => 45,  157 => 44,  142 => 43,  141 => 42,  135 => 38,  134 => 37,  130 => 35,  127 => 34,  118 => 33,  110 => 32,  107 => 31,  105 => 30,  102 => 29,  95 => 27,  88 => 25,  81 => 24,  74 => 22,  69 => 21,  61 => 19,  58 => 18,  50 => 16,  48 => 15,  45 => 14,  43 => 13,  40 => 12,  39 => 11,  32 => 7,  26 => 6,  19 => 1,);
    }
}
/* <div class="navbar navbar-header" role="navigation">*/
/* 	<div class="inner">*/
/* */
/* 	<ul id="nav-main" class="linklist no-bulletin" role="menubar">*/
/* */
/* 		<li id="quick-links" class="small-icon responsive-menu dropdown-container<!-- IF not S_DISPLAY_QUICK_LINKS and not S_DISPLAY_SEARCH --> hidden<!-- ENDIF -->" data-skip-responsive="true">*/
/* 			<a href="#" class="responsive-menu-link dropdown-trigger">{L_QUICK_LINKS}</a>*/
/* 			<div class="dropdown hidden">*/
/* 				<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 				<ul class="dropdown-contents" role="menu">*/
/* 					<!-- EVENT navbar_header_quick_links_before -->*/
/* */
/* 					<!-- IF S_DISPLAY_SEARCH -->*/
/* 						<li class="separator"></li>*/
/* 						<!-- IF S_REGISTERED_USER -->*/
/* 							<li><a href="{U_SEARCH_SELF}" role="menuitem"><i class="fa fa-map-marker"></i> {L_SEARCH_SELF}</a></li>*/
/* 						<!-- ENDIF -->*/
/* 						<!-- IF S_USER_LOGGED_IN -->*/
/* 							<li><a href="{U_SEARCH_NEW}" role="menuitem"><i class="fa fa-file-text"></i> {L_SEARCH_NEW}</a></li>*/
/* 						<!-- ENDIF -->*/
/* 						<!-- IF S_LOAD_UNREADS --> */
/* 							<li><a href="{U_SEARCH_UNREAD}" role="menuitem"><i class="fa fa-file-text"></i> {L_SEARCH_UNREAD}</a></li>*/
/* 						<!-- ENDIF -->*/
/* 						<li><a href="{U_SEARCH_UNANSWERED}" role="menuitem"><i class="fa fa-file-o"></i> {L_SEARCH_UNANSWERED}</a></li>*/
/* 						<li><a href="{U_SEARCH_ACTIVE_TOPICS}" role="menuitem"><i class="fa fa-file-text-o"></i> {L_SEARCH_ACTIVE_TOPICS}</a></li>*/
/* 						<li class="separator"></li>*/
/* 						<li><a href="{U_SEARCH}" role="menuitem"><i class="fa fa-search"></i> {L_SEARCH}</a></li>*/
/* 					<!-- ENDIF -->*/
/* */
/* 					<!-- IF not S_IS_BOT and (S_DISPLAY_MEMBERLIST or U_TEAM) -->*/
/* 						<li class="separator"></li>*/
/* 						<!-- IF S_DISPLAY_MEMBERLIST --><li><a href="{U_MEMBERLIST}" role="menuitem"><i class="fa fa-users"></i> {L_MEMBERLIST}</a></li><!-- ENDIF -->*/
/* 						<!-- IF U_TEAM --><li><a href="{U_TEAM}" role="menuitem"><i class="fa fa-users"></i> {L_THE_TEAM}</a></li><!-- ENDIF -->*/
/* 					<!-- ENDIF -->*/
/* 					<li class="separator"></li>*/
/* */
/* 					<!-- EVENT navbar_header_quick_links_after -->*/
/* 				</ul>*/
/* 			</div>*/
/* 		</li>*/
/* */
/* 		<!-- EVENT overall_header_navigation_prepend -->*/
/* 		<li <!-- IF not S_USER_LOGGED_IN -->data-skip-responsive="true"<!-- ELSE -->data-last-responsive="true"<!-- ENDIF -->><a href="{U_FAQ}" rel="help" title="{L_FAQ_EXPLAIN}" role="menuitem"><i class="fa fa-question-circle"></i> {L_FAQ}</a></li>*/
/* 		<!-- EVENT overall_header_navigation_append -->*/
/* 		<!-- IF U_ACP --><li data-last-responsive="true"><a href="{U_ACP}" title="{L_ACP}" role="menuitem"><i class="fa fa-cogs"></i> {L_ACP_SHORT}</a></li><!-- ENDIF -->*/
/* 		<!-- IF U_MCP --><li data-last-responsive="true"><a href="{U_MCP}" title="{L_MCP}" role="menuitem"><i class="fa fa-gavel"></i> {L_MCP_SHORT}</a></li><!-- ENDIF -->*/
/* */
/* 	<!-- IF S_REGISTERED_USER -->*/
/* 		<!-- EVENT navbar_header_user_profile_prepend -->*/
/* 		<li id="username_logged_in" class="rightside <!-- IF CURRENT_USER_AVATAR --> no-bulletin<!-- ENDIF -->" data-skip-responsive="true">*/
/* 			<!-- EVENT navbar_header_username_prepend -->*/
/* 			<div class="header-profile dropdown-container">*/
/* 				<a href="{U_PROFILE}" class="header-avatar dropdown-trigger"><!-- IF CURRENT_USER_AVATAR -->{CURRENT_USER_AVATAR} <!-- ENDIF -->{CURRENT_USERNAME_SIMPLE}</a>*/
/* 				<div class="dropdown hidden">*/
/* 					<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 					<ul class="dropdown-contents" role="menu">*/
/* 						<!-- IF U_RESTORE_PERMISSIONS --><li class="small-icon icon-restore-permissions"><a href="{U_RESTORE_PERMISSIONS}">{L_RESTORE_PERMISSIONS}</a></li><!-- ENDIF -->*/
/* 	*/
/* 						<!-- EVENT navbar_header_profile_list_before -->*/
/* 	*/
/* 						<li><a href="{U_PROFILE}" title="{L_PROFILE}" role="menuitem"><i class="fa fa-pencil"></i> {L_PROFILE}</a></li>*/
/* 						<li><a href="{U_USER_PROFILE}" title="{L_READ_PROFILE}" role="menuitem"><i class="fa fa-user"></i> {L_READ_PROFILE}</a></li>*/
/* 	*/
/* 						<!-- EVENT navbar_header_profile_list_after -->*/
/* 	*/
/* 						<li class="separator"></li>*/
/* 						<li><a href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}" accesskey="x" role="menuitem"><i class="fa fa-power-off"></i> {L_LOGIN_LOGOUT}</a></li>*/
/* 					</ul>*/
/* 				</div>*/
/* 			</div>*/
/* 			<!-- EVENT navbar_header_username_append -->*/
/* 		</li>*/
/* 		<!-- IF S_DISPLAY_PM -->*/
/* 			<li class="rightside icon-pm" data-skip-responsive="true">*/
/* 				<a href="{U_PRIVATEMSGS}"role="menuitem"><i class="fa fa-envelope"></i> <span>{L_PRIVATE_MESSAGES} [</span><strong>{PRIVATE_MESSAGE_COUNT}</strong><span>]</span></a>*/
/* 			</li>*/
/* 		<!-- ENDIF -->*/
/* 		<!-- IF S_NOTIFICATIONS_DISPLAY -->*/
/* 			<li class="dropdown-container icon-notification dropdown-{S_CONTENT_FLOW_END} rightside" data-skip-responsive="true">*/
/* 				<a href="{U_VIEW_ALL_NOTIFICATIONS}" id="notification_list_button" class="dropdown-trigger"><i class="fa fa-bell"></i> <span>{L_NOTIFICATIONS} [</span><strong>{NOTIFICATIONS_COUNT}</strong><span>]</span></a>*/
/* 				<!-- INCLUDE notification_dropdown.html -->*/
/* 			</li>*/
/* 		<!-- ENDIF -->*/
/* 		<!-- EVENT navbar_header_user_profile_append -->*/
/* 	<!-- ELSE -->*/
/* 		<li class="rightside"  data-skip-responsive="true"><a href="{U_LOGIN_LOGOUT}" title="{L_LOGIN_LOGOUT}" accesskey="x" role="menuitem"><i class="fa fa-power-off"></i> {L_LOGIN_LOGOUT}</a></li>*/
/* 		<!-- IF S_REGISTER_ENABLED and not (S_SHOW_COPPA or S_REGISTRATION) -->*/
/* 			<li class="rightside" data-skip-responsive="true"><a href="{U_REGISTER}" role="menuitem"><i class="fa fa-plus-square"></i> {L_REGISTER}</a></li>*/
/* 		<!-- ENDIF -->*/
/* 		<!-- EVENT navbar_header_logged_out_content -->*/
/* 	<!-- ENDIF -->*/
/* 	</ul>*/
/* */
/* 	</div>*/
/* </div>*/
