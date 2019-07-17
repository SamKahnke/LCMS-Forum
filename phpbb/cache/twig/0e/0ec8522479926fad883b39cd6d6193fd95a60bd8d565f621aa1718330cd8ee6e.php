<?php

/* jumpbox.html */
class __TwigTemplate_e41b41d465c289a4d2535132e1721db2d8993bf8c261baae3ac823b64b0ab478 extends Twig_Template
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
        echo "
<div class=\"action-bar actions-jump\">
\t";
        // line 3
        if ((isset($context["S_VIEWTOPIC"]) ? $context["S_VIEWTOPIC"] : null)) {
            // line 4
            echo "\t\t<p class=\"jumpbox-return\"><a href=\"";
            echo (isset($context["U_VIEW_FORUM"]) ? $context["U_VIEW_FORUM"] : null);
            echo "\" class=\"left-box arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" accesskey=\"r\">";
            echo $this->env->getExtension('phpbb')->lang("RETURN_TO_FORUM");
            echo "</a></p>
\t";
        } elseif (        // line 5
(isset($context["S_VIEWFORUM"]) ? $context["S_VIEWFORUM"] : null)) {
            // line 6
            echo "\t\t<p class=\"jumpbox-return\"><a href=\"";
            echo (isset($context["U_INDEX"]) ? $context["U_INDEX"] : null);
            echo "\" class=\"left-box arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" accesskey=\"r\">";
            echo $this->env->getExtension('phpbb')->lang("RETURN_TO_INDEX");
            echo "</a></p>
\t";
        } elseif (        // line 7
(isset($context["SEARCH_TOPIC"]) ? $context["SEARCH_TOPIC"] : null)) {
            // line 8
            echo "\t\t<p class=\"jumpbox-return\"><a class=\"left-box arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" href=\"";
            echo (isset($context["U_SEARCH_TOPIC"]) ? $context["U_SEARCH_TOPIC"] : null);
            echo "\" accesskey=\"r\">";
            echo $this->env->getExtension('phpbb')->lang("RETURN_TO_TOPIC");
            echo "</a></p>
\t";
        } elseif (        // line 9
(isset($context["S_SEARCH_ACTION"]) ? $context["S_SEARCH_ACTION"] : null)) {
            // line 10
            echo "\t\t<p class=\"jumpbox-return\"><a class=\"left-box arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" href=\"";
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "\" accesskey=\"r\">";
            echo $this->env->getExtension('phpbb')->lang("GO_TO_SEARCH_ADV");
            echo "</a></p>
\t";
        }
        // line 12
        echo "
\t";
        // line 13
        if ((isset($context["S_DISPLAY_JUMPBOX"]) ? $context["S_DISPLAY_JUMPBOX"] : null)) {
            // line 14
            echo "
\t\t<div class=\"dropdown-container dropdown-container-";
            // line 15
            echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
            if ( !(isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null)) {
                echo " dropdown-up";
            }
            echo " dropdown-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo " dropdown-button-control\" id=\"jumpbox\">
\t\t\t<span title=\"";
            // line 16
            if (((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null) && (isset($context["S_MERGE_SELECT"]) ? $context["S_MERGE_SELECT"] : null))) {
                echo $this->env->getExtension('phpbb')->lang("SELECT_TOPICS_FROM");
            } elseif ((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("MODERATE_FORUM");
            } else {
                echo $this->env->getExtension('phpbb')->lang("JUMP_TO");
            }
            echo "\" class=\"dropdown-trigger button dropdown-select\">
\t\t\t\t";
            // line 17
            if (((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null) && (isset($context["S_MERGE_SELECT"]) ? $context["S_MERGE_SELECT"] : null))) {
                echo $this->env->getExtension('phpbb')->lang("SELECT_TOPICS_FROM");
            } elseif ((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("MODERATE_FORUM");
            } else {
                echo $this->env->getExtension('phpbb')->lang("JUMP_TO");
            }
            // line 18
            echo "\t\t\t</span>
\t\t\t<div class=\"dropdown hidden\">
\t\t\t\t<div class=\"pointer\"><div class=\"pointer-inner\"></div></div>
\t\t\t\t<ul class=\"dropdown-contents\">
\t\t\t\t";
            // line 22
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "jumpbox_forums", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["jumpbox_forums"]) {
                // line 23
                echo "\t\t\t\t\t";
                if (($this->getAttribute($context["jumpbox_forums"], "FORUM_ID", array()) !=  -1)) {
                    // line 24
                    echo "\t\t\t\t\t\t<li>";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["jumpbox_forums"], "level", array()));
                    foreach ($context['_seq'] as $context["_key"] => $context["level"]) {
                        echo "&nbsp; &nbsp;";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['level'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    echo "<a href=\"";
                    echo $this->getAttribute($context["jumpbox_forums"], "LINK", array());
                    echo "\">";
                    echo $this->getAttribute($context["jumpbox_forums"], "FORUM_NAME", array());
                    echo "</a></li>
\t\t\t\t\t";
                }
                // line 26
                echo "\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['jumpbox_forums'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 27
            echo "\t\t\t\t</ul>
\t\t\t</div>
\t\t</div>

\t";
        } else {
            // line 32
            echo "\t</br></br>
\t";
        }
        // line 34
        echo "</div>
";
    }

    public function getTemplateName()
    {
        return "jumpbox.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  152 => 34,  148 => 32,  141 => 27,  135 => 26,  118 => 24,  115 => 23,  111 => 22,  105 => 18,  97 => 17,  87 => 16,  78 => 15,  75 => 14,  73 => 13,  70 => 12,  58 => 10,  56 => 9,  47 => 8,  45 => 7,  36 => 6,  34 => 5,  25 => 4,  23 => 3,  19 => 1,);
    }
}
/* */
/* <div class="action-bar actions-jump">*/
/* 	<!-- IF S_VIEWTOPIC -->*/
/* 		<p class="jumpbox-return"><a href="{U_VIEW_FORUM}" class="left-box arrow-{S_CONTENT_FLOW_BEGIN}" accesskey="r">{L_RETURN_TO_FORUM}</a></p>*/
/* 	<!-- ELSEIF S_VIEWFORUM -->*/
/* 		<p class="jumpbox-return"><a href="{U_INDEX}" class="left-box arrow-{S_CONTENT_FLOW_BEGIN}" accesskey="r">{L_RETURN_TO_INDEX}</a></p>*/
/* 	<!-- ELSEIF SEARCH_TOPIC -->*/
/* 		<p class="jumpbox-return"><a class="left-box arrow-{S_CONTENT_FLOW_BEGIN}" href="{U_SEARCH_TOPIC}" accesskey="r">{L_RETURN_TO_TOPIC}</a></p>*/
/* 	<!-- ELSEIF S_SEARCH_ACTION -->*/
/* 		<p class="jumpbox-return"><a class="left-box arrow-{S_CONTENT_FLOW_BEGIN}" href="{U_SEARCH}" title="{L_SEARCH_ADV}" accesskey="r">{L_GO_TO_SEARCH_ADV}</a></p>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_DISPLAY_JUMPBOX -->*/
/* */
/* 		<div class="dropdown-container dropdown-container-{S_CONTENT_FLOW_END}<!-- IF not S_IN_MCP --> dropdown-up<!-- ENDIF --> dropdown-{S_CONTENT_FLOW_BEGIN} dropdown-button-control" id="jumpbox">*/
/* 			<span title="<!-- IF S_IN_MCP and S_MERGE_SELECT -->{L_SELECT_TOPICS_FROM}<!-- ELSEIF S_IN_MCP -->{L_MODERATE_FORUM}<!-- ELSE -->{L_JUMP_TO}<!-- ENDIF -->" class="dropdown-trigger button dropdown-select">*/
/* 				<!-- IF S_IN_MCP and S_MERGE_SELECT -->{L_SELECT_TOPICS_FROM}<!-- ELSEIF S_IN_MCP -->{L_MODERATE_FORUM}<!-- ELSE -->{L_JUMP_TO}<!-- ENDIF -->*/
/* 			</span>*/
/* 			<div class="dropdown hidden">*/
/* 				<div class="pointer"><div class="pointer-inner"></div></div>*/
/* 				<ul class="dropdown-contents">*/
/* 				<!-- BEGIN jumpbox_forums -->*/
/* 					<!-- IF jumpbox_forums.FORUM_ID neq -1 -->*/
/* 						<li><!-- BEGIN level -->&nbsp; &nbsp;<!-- END level --><a href="{jumpbox_forums.LINK}">{jumpbox_forums.FORUM_NAME}</a></li>*/
/* 					<!-- ENDIF -->*/
/* 				<!-- END jumpbox_forums -->*/
/* 				</ul>*/
/* 			</div>*/
/* 		</div>*/
/* */
/* 	<!-- ELSE -->*/
/* 	</br></br>*/
/* 	<!-- ENDIF -->*/
/* </div>*/
/* */
