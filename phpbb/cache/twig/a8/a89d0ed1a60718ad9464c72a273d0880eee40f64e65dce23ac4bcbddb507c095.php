<?php

/* viewtopic_topic_tools.html */
class __TwigTemplate_4e18c9aec475f1aa19354668991db7330604dd2dcfaaabca57d0ac9c78917d5b extends Twig_Template
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
        if (( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null) && ((((((isset($context["U_WATCH_TOPIC"]) ? $context["U_WATCH_TOPIC"] : null) || (isset($context["U_BOOKMARK_TOPIC"]) ? $context["U_BOOKMARK_TOPIC"] : null)) || (isset($context["U_BUMP_TOPIC"]) ? $context["U_BUMP_TOPIC"] : null)) || (isset($context["U_EMAIL_TOPIC"]) ? $context["U_EMAIL_TOPIC"] : null)) || (isset($context["U_PRINT_TOPIC"]) ? $context["U_PRINT_TOPIC"] : null)) || (isset($context["S_DISPLAY_TOPIC_TOOLS"]) ? $context["S_DISPLAY_TOPIC_TOOLS"] : null)))) {
            // line 2
            echo "\t<div class=\"dropdown-container dropdown-button-control topic-tools\">
\t\t<span title=\"";
            // line 3
            echo $this->env->getExtension('phpbb')->lang("TOPIC_TOOLS");
            echo "\" class=\"button icon-button tools-icon dropdown-trigger dropdown-select\"></span>
\t\t<div class=\"dropdown hidden\">
\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t";
            // line 7
            // line 8
            echo "\t\t\t\t";
            if ((isset($context["U_WATCH_TOPIC"]) ? $context["U_WATCH_TOPIC"] : null)) {
                // line 9
                echo "\t\t\t\t\t<li class=\"small-icon icon-";
                if ((isset($context["S_WATCHING_TOPIC"]) ? $context["S_WATCHING_TOPIC"] : null)) {
                    echo "unsubscribe";
                } else {
                    echo "subscribe";
                }
                echo "\">
\t\t\t\t\t\t<a href=\"";
                // line 10
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
\t\t\t\t\t</li>
\t\t\t\t";
            }
            // line 13
            echo "\t\t\t\t";
            if ((isset($context["U_BOOKMARK_TOPIC"]) ? $context["U_BOOKMARK_TOPIC"] : null)) {
                // line 14
                echo "\t\t\t\t\t<li class=\"small-icon icon-bookmark\">
\t\t\t\t\t\t<a href=\"";
                // line 15
                echo (isset($context["U_BOOKMARK_TOPIC"]) ? $context["U_BOOKMARK_TOPIC"] : null);
                echo "\" class=\"bookmark-link\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("BOOKMARK_TOPIC");
                echo "\" data-ajax=\"alt_text\" data-alt-text=\"";
                echo (isset($context["S_BOOKMARK_TOGGLE"]) ? $context["S_BOOKMARK_TOGGLE"] : null);
                echo "\" data-update-all=\".bookmark-link\">";
                echo (isset($context["S_BOOKMARK_TOPIC"]) ? $context["S_BOOKMARK_TOPIC"] : null);
                echo "</a>
\t\t\t\t\t</li>
\t\t\t\t";
            }
            // line 18
            echo "\t\t\t\t";
            if ((isset($context["U_BUMP_TOPIC"]) ? $context["U_BUMP_TOPIC"] : null)) {
                echo "<li class=\"small-icon icon-bump\"><a href=\"";
                echo (isset($context["U_BUMP_TOPIC"]) ? $context["U_BUMP_TOPIC"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("BUMP_TOPIC");
                echo "\" data-ajax=\"true\">";
                echo $this->env->getExtension('phpbb')->lang("BUMP_TOPIC");
                echo "</a></li>";
            }
            // line 19
            echo "\t\t\t\t";
            if ((isset($context["U_EMAIL_TOPIC"]) ? $context["U_EMAIL_TOPIC"] : null)) {
                echo "<li class=\"small-icon icon-sendemail\"><a href=\"";
                echo (isset($context["U_EMAIL_TOPIC"]) ? $context["U_EMAIL_TOPIC"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("EMAIL_TOPIC");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("EMAIL_TOPIC");
                echo "</a></li>";
            }
            // line 20
            echo "\t\t\t\t";
            if ((isset($context["U_PRINT_TOPIC"]) ? $context["U_PRINT_TOPIC"] : null)) {
                echo "<li class=\"small-icon icon-print\"><a href=\"";
                echo (isset($context["U_PRINT_TOPIC"]) ? $context["U_PRINT_TOPIC"] : null);
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("PRINT_TOPIC");
                echo "\" accesskey=\"p\">";
                echo $this->env->getExtension('phpbb')->lang("PRINT_TOPIC");
                echo "</a></li>";
            }
            // line 21
            echo "\t\t\t\t";
            // line 22
            echo "\t\t\t</ul>
\t\t</div>
\t</div>
";
        }
    }

    public function getTemplateName()
    {
        return "viewtopic_topic_tools.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  117 => 22,  115 => 21,  104 => 20,  93 => 19,  82 => 18,  70 => 15,  67 => 14,  64 => 13,  44 => 10,  35 => 9,  32 => 8,  31 => 7,  24 => 3,  21 => 2,  19 => 1,);
    }
}
/* <!-- IF not S_IS_BOT and (U_WATCH_TOPIC or U_BOOKMARK_TOPIC or U_BUMP_TOPIC or U_EMAIL_TOPIC or U_PRINT_TOPIC or S_DISPLAY_TOPIC_TOOLS) -->*/
/* 	<div class="dropdown-container dropdown-button-control topic-tools">*/
/* 		<span title="{L_TOPIC_TOOLS}" class="button icon-button tools-icon dropdown-trigger dropdown-select"></span>*/
/* 		<div class="dropdown hidden">*/
/* 			<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 			<ul class="dropdown-contents">*/
/* 				<!-- EVENT viewtopic_topic_tools_before -->*/
/* 				<!-- IF U_WATCH_TOPIC -->*/
/* 					<li class="small-icon icon-<!-- IF S_WATCHING_TOPIC -->unsubscribe<!-- ELSE -->subscribe<!-- ENDIF -->">*/
/* 						<a href="{U_WATCH_TOPIC}" class="watch-topic-link" title="{S_WATCH_TOPIC_TITLE}" data-ajax="toggle_link" data-toggle-class="small-icon icon-<!-- IF not S_WATCHING_TOPIC -->unsubscribe<!-- ELSE -->subscribe<!-- ENDIF -->" data-toggle-text="{S_WATCH_TOPIC_TOGGLE}" data-toggle-url="{U_WATCH_TOPIC_TOGGLE}" data-update-all=".watch-topic-link">{S_WATCH_TOPIC_TITLE}</a>*/
/* 					</li>*/
/* 				<!-- ENDIF -->*/
/* 				<!-- IF U_BOOKMARK_TOPIC -->*/
/* 					<li class="small-icon icon-bookmark">*/
/* 						<a href="{U_BOOKMARK_TOPIC}" class="bookmark-link" title="{L_BOOKMARK_TOPIC}" data-ajax="alt_text" data-alt-text="{S_BOOKMARK_TOGGLE}" data-update-all=".bookmark-link">{S_BOOKMARK_TOPIC}</a>*/
/* 					</li>*/
/* 				<!-- ENDIF -->*/
/* 				<!-- IF U_BUMP_TOPIC --><li class="small-icon icon-bump"><a href="{U_BUMP_TOPIC}" title="{L_BUMP_TOPIC}" data-ajax="true">{L_BUMP_TOPIC}</a></li><!-- ENDIF -->*/
/* 				<!-- IF U_EMAIL_TOPIC --><li class="small-icon icon-sendemail"><a href="{U_EMAIL_TOPIC}" title="{L_EMAIL_TOPIC}">{L_EMAIL_TOPIC}</a></li><!-- ENDIF -->*/
/* 				<!-- IF U_PRINT_TOPIC --><li class="small-icon icon-print"><a href="{U_PRINT_TOPIC}" title="{L_PRINT_TOPIC}" accesskey="p">{L_PRINT_TOPIC}</a></li><!-- ENDIF -->*/
/* 				<!-- EVENT viewtopic_topic_tools_after -->*/
/* 			</ul>*/
/* 		</div>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
