<?php

/* navbar_footer.html */
class __TwigTemplate_8ceb28897254877e382439e931a2bbccf45743aa4a1a10bfe4dc36e24da82100 extends Twig_Template
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
        echo "<div class=\"navbar\" role=\"navigation\">
\t<div class=\"inner\">

\t<ul id=\"nav-footer\" class=\"linklist no-bulletin\" role=\"menubar\">
\t\t<li class=\"breadcrumbs\">
\t\t\t";
        // line 6
        if ((isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null)) {
            echo "<span class=\"crumb\"><a href=\"";
            echo (isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null);
            echo "\" data-navbar-reference=\"home\"><i class=\"fa fa-home\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("SITE_HOME");
            echo "</a></span>";
        }
        // line 7
        echo "\t\t\t";
        // line 8
        echo "\t\t\t<span class=\"crumb\"><a href=\"";
        echo (isset($context["U_INDEX"]) ? $context["U_INDEX"] : null);
        echo "\" data-navbar-reference=\"index\"><i class=\"fa fa-home\"></i> ";
        echo $this->env->getExtension('phpbb')->lang("INDEX");
        echo "</a></span>
\t\t\t";
        // line 9
        // line 10
        echo "\t\t</li>
\t\t";
        // line 11
        if (((isset($context["U_WATCH_FORUM_LINK"]) ? $context["U_WATCH_FORUM_LINK"] : null) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
            echo "<li data-last-responsive=\"true\"><a href=\"";
            echo (isset($context["U_WATCH_FORUM_LINK"]) ? $context["U_WATCH_FORUM_LINK"] : null);
            echo "\" title=\"";
            echo (isset($context["S_WATCH_FORUM_TITLE"]) ? $context["S_WATCH_FORUM_TITLE"] : null);
            echo "\" data-ajax=\"toggle_link\" data-toggle-text=\"";
            echo (isset($context["S_WATCH_FORUM_TOGGLE"]) ? $context["S_WATCH_FORUM_TOGGLE"] : null);
            echo "\" data-toggle-url=\"";
            echo (isset($context["U_WATCH_FORUM_TOGGLE"]) ? $context["U_WATCH_FORUM_TOGGLE"] : null);
            echo "\"><i class=\"fa fa-";
            if ((isset($context["S_WATCHING_FORUM"]) ? $context["S_WATCHING_FORUM"] : null)) {
                echo "times";
            } else {
                echo "check";
            }
            echo "\"></i> ";
            echo (isset($context["S_WATCH_FORUM_TITLE"]) ? $context["S_WATCH_FORUM_TITLE"] : null);
            echo "</a></li>";
        }
        // line 12
        echo "
\t\t";
        // line 13
        if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
            // line 14
            echo "\t\t\t<li class=\"rightside\"><a href=\"";
            echo (isset($context["U_DELETE_COOKIES"]) ? $context["U_DELETE_COOKIES"] : null);
            echo "\" data-ajax=\"true\" data-refresh=\"true\" role=\"menuitem\"><i class=\"fa fa-trash\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("DELETE_COOKIES");
            echo "</a></li>
\t\t\t";
            // line 15
            if ((isset($context["S_DISPLAY_MEMBERLIST"]) ? $context["S_DISPLAY_MEMBERLIST"] : null)) {
                echo "<li class=\"rightside\" data-last-responsive=\"true\"><a href=\"";
                echo (isset($context["U_MEMBERLIST"]) ? $context["U_MEMBERLIST"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("MEMBERLIST_EXPLAIN");
                echo "\" role=\"menuitem\"><i class=\"fa fa-users\"></i> ";
                echo $this->env->getExtension('phpbb')->lang("MEMBERLIST");
                echo "</a></li>";
            }
            // line 16
            echo "\t\t";
        }
        // line 17
        echo "\t\t";
        // line 18
        echo "\t\t";
        if ((isset($context["U_TEAM"]) ? $context["U_TEAM"] : null)) {
            echo "<li class=\"rightside\" data-last-responsive=\"true\"><a href=\"";
            echo (isset($context["U_TEAM"]) ? $context["U_TEAM"] : null);
            echo "\" role=\"menuitem\"><i class=\"fa fa-shield\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("THE_TEAM");
            echo "</a></li>";
        }
        // line 19
        echo "\t\t";
        // line 20
        echo "\t\t";
        if ((isset($context["U_CONTACT_US"]) ? $context["U_CONTACT_US"] : null)) {
            echo "<li class=\"rightside\" data-last-responsive=\"true\"><a href=\"";
            echo (isset($context["U_CONTACT_US"]) ? $context["U_CONTACT_US"] : null);
            echo "\" role=\"menuitem\"><i class=\"fa fa-envelope\"></i> ";
            echo $this->env->getExtension('phpbb')->lang("CONTACT_US");
            echo "</a></li>";
        }
        // line 21
        echo "\t</ul>

\t</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "navbar_footer.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  114 => 21,  105 => 20,  103 => 19,  94 => 18,  92 => 17,  89 => 16,  79 => 15,  72 => 14,  70 => 13,  67 => 12,  47 => 11,  44 => 10,  43 => 9,  36 => 8,  34 => 7,  26 => 6,  19 => 1,);
    }
}
/* <div class="navbar" role="navigation">*/
/* 	<div class="inner">*/
/* */
/* 	<ul id="nav-footer" class="linklist no-bulletin" role="menubar">*/
/* 		<li class="breadcrumbs">*/
/* 			<!-- IF U_SITE_HOME --><span class="crumb"><a href="{U_SITE_HOME}" data-navbar-reference="home"><i class="fa fa-home"></i> {L_SITE_HOME}</a></span><!-- ENDIF -->*/
/* 			<!-- EVENT overall_footer_breadcrumb_prepend -->*/
/* 			<span class="crumb"><a href="{U_INDEX}" data-navbar-reference="index"><i class="fa fa-home"></i> {L_INDEX}</a></span>*/
/* 			<!-- EVENT overall_footer_breadcrumb_append -->*/
/* 		</li>*/
/* 		<!-- IF U_WATCH_FORUM_LINK and not S_IS_BOT --><li data-last-responsive="true"><a href="{U_WATCH_FORUM_LINK}" title="{S_WATCH_FORUM_TITLE}" data-ajax="toggle_link" data-toggle-text="{S_WATCH_FORUM_TOGGLE}" data-toggle-url="{U_WATCH_FORUM_TOGGLE}"><i class="fa fa-<!-- IF S_WATCHING_FORUM -->times<!-- ELSE -->check<!-- ENDIF -->"></i> {S_WATCH_FORUM_TITLE}</a></li><!-- ENDIF -->*/
/* */
/* 		<!-- IF not S_IS_BOT -->*/
/* 			<li class="rightside"><a href="{U_DELETE_COOKIES}" data-ajax="true" data-refresh="true" role="menuitem"><i class="fa fa-trash"></i> {L_DELETE_COOKIES}</a></li>*/
/* 			<!-- IF S_DISPLAY_MEMBERLIST --><li class="rightside" data-last-responsive="true"><a href="{U_MEMBERLIST}" title="{L_MEMBERLIST_EXPLAIN}" role="menuitem"><i class="fa fa-users"></i> {L_MEMBERLIST}</a></li><!-- ENDIF -->*/
/* 		<!-- ENDIF -->*/
/* 		<!-- EVENT overall_footer_teamlink_before -->*/
/* 		<!-- IF U_TEAM --><li class="rightside" data-last-responsive="true"><a href="{U_TEAM}" role="menuitem"><i class="fa fa-shield"></i> {L_THE_TEAM}</a></li><!-- ENDIF -->*/
/* 		<!-- EVENT overall_footer_teamlink_after -->*/
/* 		<!-- IF U_CONTACT_US --><li class="rightside" data-last-responsive="true"><a href="{U_CONTACT_US}" role="menuitem"><i class="fa fa-envelope"></i> {L_CONTACT_US}</a></li><!-- ENDIF -->*/
/* 	</ul>*/
/* */
/* 	</div>*/
/* </div>*/
/* */
