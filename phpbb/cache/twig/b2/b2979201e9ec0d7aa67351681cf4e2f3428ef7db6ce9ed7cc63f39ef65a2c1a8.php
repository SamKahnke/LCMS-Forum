<?php

/* ucp_main_subscribed.html */
class __TwigTemplate_b0fd2e6c921c8ab20e4b02fdabed66e8402678b0b9a17b2a1e12035a98b85de3 extends Twig_Template
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
        $location = "ucp_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("ucp_header.html", "ucp_main_subscribed.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<form id=\"ucp\" method=\"post\" action=\"";
        // line 3
        echo (isset($context["S_UCP_ACTION"]) ? $context["S_UCP_ACTION"] : null);
        echo "\"";
        echo (isset($context["S_FORM_ENCTYPE"]) ? $context["S_FORM_ENCTYPE"] : null);
        echo ">

<h2>";
        // line 5
        echo $this->env->getExtension('phpbb')->lang("TITLE");
        echo "</h2>
<div class=\"panel\">
\t<div class=\"inner\">

\t<p>";
        // line 9
        echo $this->env->getExtension('phpbb')->lang("WATCHED_EXPLAIN");
        echo "</p>

";
        // line 11
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "forumrow", array()))) {
            // line 12
            echo "\t<ul class=\"topiclist missing-column\">
\t\t<li class=\"header\">
\t\t\t<dl class=\"icon\">
\t\t\t\t<dt><div class=\"list-inner\">";
            // line 15
            echo $this->env->getExtension('phpbb')->lang("WATCHED_FORUMS");
            echo "</div></dt>
\t\t\t\t<dd class=\"lastpost\"><span>";
            // line 16
            echo $this->env->getExtension('phpbb')->lang("LAST_POST");
            echo "</span></dd>
\t\t\t\t<dd class=\"mark\">";
            // line 17
            echo $this->env->getExtension('phpbb')->lang("MARK");
            echo "</dd>
\t\t\t</dl>
\t\t</li>
\t</ul>
\t<ul class=\"topiclist cplist missing-column\">

\t";
            // line 23
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "forumrow", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["forumrow"]) {
                // line 24
                echo "\t\t<li class=\"row";
                if (($this->getAttribute($context["forumrow"], "S_ROW_COUNT", array()) % 2 == 1)) {
                    echo " bg1";
                } else {
                    echo " bg2";
                }
                echo "\">
\t\t\t<dl class=\"icon ";
                // line 25
                echo $this->getAttribute($context["forumrow"], "FORUM_IMG_STYLE", array());
                echo "\">
\t\t\t\t<dt>
\t\t\t\t\t";
                // line 27
                if ($this->getAttribute($context["forumrow"], "S_UNREAD_FORUM", array())) {
                    echo "<a href=\"";
                    echo $this->getAttribute($context["forumrow"], "U_VIEWFORUM", array());
                    echo "\" class=\"icon-link\"></a>";
                }
                // line 28
                echo "\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t<a href=\"";
                // line 29
                echo $this->getAttribute($context["forumrow"], "U_VIEWFORUM", array());
                echo "\" class=\"forumtitle\">";
                echo $this->getAttribute($context["forumrow"], "FORUM_NAME", array());
                echo "</a><br />
\t\t\t\t\t\t";
                // line 30
                echo $this->getAttribute($context["forumrow"], "FORUM_DESC", array());
                echo "
\t\t\t\t\t\t";
                // line 31
                if ($this->getAttribute($context["forumrow"], "LAST_POST_TIME", array())) {
                    // line 32
                    echo "\t\t\t\t\t\t<div class=\"responsive-show\" style=\"display: none;\">
\t\t\t\t\t\t\t";
                    // line 33
                    echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["forumrow"], "LAST_POST_AUTHOR_FULL", array());
                    echo " &laquo; <a href=\"";
                    echo $this->getAttribute($context["forumrow"], "U_LAST_POST", array());
                    echo "\">";
                    echo $this->getAttribute($context["forumrow"], "LAST_POST_TIME", array());
                    echo "</a>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 36
                echo "\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"lastpost\">";
                // line 38
                if ($this->getAttribute($context["forumrow"], "LAST_POST_TIME", array())) {
                    echo "<span><dfn>";
                    echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                    echo " </dfn>";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["forumrow"], "LAST_POST_AUTHOR_FULL", array());
                    echo "
\t\t\t\t\t<a href=\"";
                    // line 39
                    echo $this->getAttribute($context["forumrow"], "U_LAST_POST", array());
                    echo "\">";
                    echo (isset($context["LAST_POST_IMG"]) ? $context["LAST_POST_IMG"] : null);
                    echo "</a> <br />";
                    echo $this->getAttribute($context["forumrow"], "LAST_POST_TIME", array());
                    echo "</span>
\t\t\t\t\t";
                } else {
                    // line 40
                    echo $this->env->getExtension('phpbb')->lang("NO_POSTS");
                    echo "<br />&nbsp;";
                }
                // line 41
                echo "\t\t\t\t</dd>
\t\t\t\t<dd class=\"mark\"><input type=\"checkbox\" name=\"f[";
                // line 42
                echo $this->getAttribute($context["forumrow"], "FORUM_ID", array());
                echo "]\" id=\"f";
                echo $this->getAttribute($context["forumrow"], "FORUM_ID", array());
                echo "\" /></dd>
\t\t\t</dl>
\t\t</li>
\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['forumrow'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 46
            echo "\t</ul>
";
        } elseif (        // line 47
(isset($context["S_FORUM_NOTIFY"]) ? $context["S_FORUM_NOTIFY"] : null)) {
            // line 48
            echo "    <ul class=\"topiclist\">
        <li class=\"header\">
            <dl class=\"icon\">
                <dt>";
            // line 51
            echo $this->env->getExtension('phpbb')->lang("WATCHED_FORUMS");
            echo "</dt>
            </dl>
        </li>
    </ul>
\t<p><strong>";
            // line 55
            echo $this->env->getExtension('phpbb')->lang("NO_WATCHED_FORUMS");
            echo "</strong></p>
";
        }
        // line 57
        echo "    <br />

";
        // line 59
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array()))) {
            // line 60
            echo "\t<ul class=\"topiclist missing-column\">
\t\t<li class=\"header\">
\t\t\t<dl class=\"icon\">
\t\t\t\t<dt><div class=\"list-inner\">";
            // line 63
            echo $this->env->getExtension('phpbb')->lang("WATCHED_TOPICS");
            echo "</div></dt>
\t\t\t\t<dd class=\"lastpost\"><span>";
            // line 64
            echo $this->env->getExtension('phpbb')->lang("LAST_POST");
            echo "</span></dd>
\t\t\t\t<dd class=\"mark\">";
            // line 65
            echo $this->env->getExtension('phpbb')->lang("MARK");
            echo "</dd>
\t\t\t</dl>
\t\t</li>
\t</ul>
\t<ul class=\"topiclist cplist missing-column\">

\t";
            // line 71
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["topicrow"]) {
                // line 72
                echo "\t\t<li class=\"row";
                if ($this->getAttribute($context["topicrow"], "S_TOPIC_REPORTED", array())) {
                    echo " reported";
                } elseif (($this->getAttribute($context["topicrow"], "S_ROW_COUNT", array()) % 2 == 1)) {
                    echo " bg1";
                } else {
                    echo " bg2";
                }
                echo "\">
\t\t\t<dl class=\"icon ";
                // line 73
                echo $this->getAttribute($context["topicrow"], "TOPIC_IMG_STYLE", array());
                echo "\">
\t\t\t\t<dt";
                // line 74
                if ($this->getAttribute($context["topicrow"], "TOPIC_ICON_IMG", array())) {
                    echo " style=\"background-image: url(";
                    echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                    echo $this->getAttribute($context["topicrow"], "TOPIC_ICON_IMG", array());
                    echo "); background-repeat: no-repeat;\"";
                }
                echo " title=\"";
                echo $this->getAttribute($context["topicrow"], "TOPIC_FOLDER_IMG_ALT", array());
                echo "\">
\t\t\t\t\t";
                // line 75
                if ($this->getAttribute($context["topicrow"], "S_UNREAD_TOPIC", array())) {
                    echo "<a href=\"";
                    echo $this->getAttribute($context["topicrow"], "U_NEWEST_POST", array());
                    echo "\" class=\"icon-link\"></a>";
                }
                // line 76
                echo "\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t";
                // line 77
                if ($this->getAttribute($context["topicrow"], "S_UNREAD_TOPIC", array())) {
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
                // line 78
                if (($this->getAttribute($context["topicrow"], "S_TOPIC_UNAPPROVED", array()) || $this->getAttribute($context["topicrow"], "S_POSTS_UNAPPROVED", array()))) {
                    echo "<a href=\"";
                    echo $this->getAttribute($context["topicrow"], "U_MCP_QUEUE", array());
                    echo "\">";
                    echo $this->getAttribute($context["topicrow"], "UNAPPROVED_IMG", array());
                    echo "</a> ";
                }
                // line 79
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
                // line 80
                if (twig_length_filter($this->env, $this->getAttribute($context["topicrow"], "pagination", array()))) {
                    // line 81
                    echo "\t\t\t\t\t\t<div class=\"pagination\">
\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t";
                    // line 83
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["topicrow"], "pagination", array()));
                    foreach ($context['_seq'] as $context["_key"] => $context["pagination"]) {
                        // line 84
                        echo "\t\t\t\t\t\t\t\t";
                        if ($this->getAttribute($context["pagination"], "S_IS_PREV", array())) {
                            // line 85
                            echo "\t\t\t\t\t\t\t\t";
                        } elseif ($this->getAttribute($context["pagination"], "S_IS_CURRENT", array())) {
                            echo "<li class=\"active\"><span>";
                            echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                            echo "</span></li>
\t\t\t\t\t\t\t\t";
                        } elseif ($this->getAttribute(                        // line 86
$context["pagination"], "S_IS_ELLIPSIS", array())) {
                            echo "<li class=\"ellipsis\"><span>";
                            echo $this->env->getExtension('phpbb')->lang("ELLIPSIS");
                            echo "</span></li>
\t\t\t\t\t\t\t\t";
                        } elseif ($this->getAttribute(                        // line 87
$context["pagination"], "S_IS_NEXT", array())) {
                            // line 88
                            echo "\t\t\t\t\t\t\t\t";
                        } else {
                            echo "<li><a href=\"";
                            echo $this->getAttribute($context["pagination"], "PAGE_URL", array());
                            echo "\">";
                            echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                            echo "</a></li>
\t\t\t\t\t\t\t\t";
                        }
                        // line 90
                        echo "\t\t\t\t\t\t\t";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pagination'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 91
                    echo "\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 94
                echo "\t\t\t\t\t\t<div class=\"responsive-hide\">
\t\t\t\t\t\t\t";
                // line 95
                if ($this->getAttribute($context["topicrow"], "ATTACH_ICON_IMG", array())) {
                    echo $this->getAttribute($context["topicrow"], "ATTACH_ICON_IMG", array());
                    echo " ";
                }
                // line 96
                echo "\t\t\t\t\t\t\t";
                echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                echo " ";
                echo $this->getAttribute($context["topicrow"], "TOPIC_AUTHOR_FULL", array());
                echo " &raquo; ";
                echo $this->getAttribute($context["topicrow"], "FIRST_POST_TIME", array());
                echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"responsive-show\" style=\"display: none;\">
\t\t\t\t\t\t\t";
                // line 99
                if ($this->getAttribute($context["topicrow"], "ATTACH_ICON_IMG", array())) {
                    echo $this->getAttribute($context["topicrow"], "ATTACH_ICON_IMG", array());
                    echo " ";
                }
                // line 100
                echo "\t\t\t\t\t\t\t";
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
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</dt>
\t\t\t\t<dd class=\"lastpost\"><span><dfn>";
                // line 104
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo " </dfn>";
                echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                echo " ";
                echo $this->getAttribute($context["topicrow"], "LAST_POST_AUTHOR_FULL", array());
                echo "
\t\t\t\t\t<a href=\"";
                // line 105
                echo $this->getAttribute($context["topicrow"], "U_LAST_POST", array());
                echo "\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                echo "\">";
                echo (isset($context["LAST_POST_IMG"]) ? $context["LAST_POST_IMG"] : null);
                echo "</a> <br />";
                echo $this->getAttribute($context["topicrow"], "LAST_POST_TIME", array());
                echo "</span>
\t\t\t\t</dd>
\t\t\t\t<dd class=\"mark\"><input type=\"checkbox\" name=\"t[";
                // line 107
                echo $this->getAttribute($context["topicrow"], "TOPIC_ID", array());
                echo "]\" id=\"t";
                echo $this->getAttribute($context["topicrow"], "TOPIC_ID", array());
                echo "\" /></dd>
\t\t\t</dl>
\t\t</li>
\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['topicrow'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 111
            echo "\t</ul>

\t<div class=\"action-bar bottom\">
\t\t<div class=\"pagination\">
\t\t\t";
            // line 115
            echo (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null);
            echo "
\t\t\t";
            // line 116
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 117
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "ucp_main_subscribed.html", 117)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 118
                echo "\t\t\t";
            } else {
                // line 119
                echo "\t\t\t\t &bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 121
            echo "\t\t</div>
\t</div>

";
        } elseif (        // line 124
(isset($context["S_TOPIC_NOTIFY"]) ? $context["S_TOPIC_NOTIFY"] : null)) {
            // line 125
            echo "    <ul class=\"topiclist\">
        <li class=\"header\">
            <dl class=\"icon\">
                <dt>";
            // line 128
            echo $this->env->getExtension('phpbb')->lang("WATCHED_TOPICS");
            echo "</dt>
            </dl>
        </li>
    </ul>
\t<p><strong>";
            // line 132
            echo $this->env->getExtension('phpbb')->lang("NO_WATCHED_TOPICS");
            echo "</strong></p>
";
        }
        // line 134
        echo "
\t</div>
</div>

";
        // line 138
        if ((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "topicrow", array())) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "forumrow", array())))) {
            // line 139
            echo "\t<fieldset class=\"display-actions\">
\t\t<input type=\"submit\" name=\"unwatch\" value=\"";
            // line 140
            echo $this->env->getExtension('phpbb')->lang("UNWATCH_MARKED");
            echo "\" class=\"button2\" />
\t\t<div><a href=\"#\" onclick=\"marklist('ucp', 't', true); marklist('ucp', 'f', true); return false;\">";
            // line 141
            echo $this->env->getExtension('phpbb')->lang("MARK_ALL");
            echo "</a> &bull; <a href=\"#\" onclick=\"marklist('ucp', 't', false); marklist('ucp', 'f', false); return false;\">";
            echo $this->env->getExtension('phpbb')->lang("UNMARK_ALL");
            echo "</a></div>
\t\t";
            // line 142
            echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
            echo "
\t</fieldset>
";
        }
        // line 145
        echo "</form>

";
        // line 147
        $location = "ucp_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("ucp_footer.html", "ucp_main_subscribed.html", 147)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "ucp_main_subscribed.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  508 => 147,  504 => 145,  498 => 142,  492 => 141,  488 => 140,  485 => 139,  483 => 138,  477 => 134,  472 => 132,  465 => 128,  460 => 125,  458 => 124,  453 => 121,  447 => 119,  444 => 118,  431 => 117,  429 => 116,  425 => 115,  419 => 111,  407 => 107,  396 => 105,  388 => 104,  370 => 100,  365 => 99,  354 => 96,  349 => 95,  346 => 94,  341 => 91,  335 => 90,  325 => 88,  323 => 87,  317 => 86,  310 => 85,  307 => 84,  303 => 83,  299 => 81,  297 => 80,  286 => 79,  278 => 78,  264 => 77,  261 => 76,  255 => 75,  244 => 74,  240 => 73,  229 => 72,  225 => 71,  216 => 65,  212 => 64,  208 => 63,  203 => 60,  201 => 59,  197 => 57,  192 => 55,  185 => 51,  180 => 48,  178 => 47,  175 => 46,  163 => 42,  160 => 41,  156 => 40,  147 => 39,  137 => 38,  133 => 36,  119 => 33,  116 => 32,  114 => 31,  110 => 30,  104 => 29,  101 => 28,  95 => 27,  90 => 25,  81 => 24,  77 => 23,  68 => 17,  64 => 16,  60 => 15,  55 => 12,  53 => 11,  48 => 9,  41 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE ucp_header.html -->*/
/* */
/* <form id="ucp" method="post" action="{S_UCP_ACTION}"{S_FORM_ENCTYPE}>*/
/* */
/* <h2>{L_TITLE}</h2>*/
/* <div class="panel">*/
/* 	<div class="inner">*/
/* */
/* 	<p>{L_WATCHED_EXPLAIN}</p>*/
/* */
/* <!-- IF .forumrow -->*/
/* 	<ul class="topiclist missing-column">*/
/* 		<li class="header">*/
/* 			<dl class="icon">*/
/* 				<dt><div class="list-inner">{L_WATCHED_FORUMS}</div></dt>*/
/* 				<dd class="lastpost"><span>{L_LAST_POST}</span></dd>*/
/* 				<dd class="mark">{L_MARK}</dd>*/
/* 			</dl>*/
/* 		</li>*/
/* 	</ul>*/
/* 	<ul class="topiclist cplist missing-column">*/
/* */
/* 	<!-- BEGIN forumrow -->*/
/* 		<li class="row<!-- IF forumrow.S_ROW_COUNT is odd --> bg1<!-- ELSE --> bg2<!-- ENDIF -->">*/
/* 			<dl class="icon {forumrow.FORUM_IMG_STYLE}">*/
/* 				<dt>*/
/* 					<!-- IF forumrow.S_UNREAD_FORUM --><a href="{forumrow.U_VIEWFORUM}" class="icon-link"></a><!-- ENDIF -->*/
/* 					<div class="list-inner">*/
/* 						<a href="{forumrow.U_VIEWFORUM}" class="forumtitle">{forumrow.FORUM_NAME}</a><br />*/
/* 						{forumrow.FORUM_DESC}*/
/* 						<!-- IF forumrow.LAST_POST_TIME -->*/
/* 						<div class="responsive-show" style="display: none;">*/
/* 							{L_LAST_POST} {L_POST_BY_AUTHOR} {forumrow.LAST_POST_AUTHOR_FULL} &laquo; <a href="{forumrow.U_LAST_POST}">{forumrow.LAST_POST_TIME}</a>*/
/* 						</div>*/
/* 						<!-- ENDIF -->*/
/* 					</div>*/
/* 				</dt>*/
/* 				<dd class="lastpost"><!-- IF forumrow.LAST_POST_TIME --><span><dfn>{L_LAST_POST} </dfn>{L_POST_BY_AUTHOR} {forumrow.LAST_POST_AUTHOR_FULL}*/
/* 					<a href="{forumrow.U_LAST_POST}">{LAST_POST_IMG}</a> <br />{forumrow.LAST_POST_TIME}</span>*/
/* 					<!-- ELSE -->{L_NO_POSTS}<br />&nbsp;<!-- ENDIF -->*/
/* 				</dd>*/
/* 				<dd class="mark"><input type="checkbox" name="f[{forumrow.FORUM_ID}]" id="f{forumrow.FORUM_ID}" /></dd>*/
/* 			</dl>*/
/* 		</li>*/
/* 	<!-- END forumrow -->*/
/* 	</ul>*/
/* <!-- ELSEIF S_FORUM_NOTIFY -->*/
/*     <ul class="topiclist">*/
/*         <li class="header">*/
/*             <dl class="icon">*/
/*                 <dt>{L_WATCHED_FORUMS}</dt>*/
/*             </dl>*/
/*         </li>*/
/*     </ul>*/
/* 	<p><strong>{L_NO_WATCHED_FORUMS}</strong></p>*/
/* <!-- ENDIF -->*/
/*     <br />*/
/* */
/* <!-- IF .topicrow -->*/
/* 	<ul class="topiclist missing-column">*/
/* 		<li class="header">*/
/* 			<dl class="icon">*/
/* 				<dt><div class="list-inner">{L_WATCHED_TOPICS}</div></dt>*/
/* 				<dd class="lastpost"><span>{L_LAST_POST}</span></dd>*/
/* 				<dd class="mark">{L_MARK}</dd>*/
/* 			</dl>*/
/* 		</li>*/
/* 	</ul>*/
/* 	<ul class="topiclist cplist missing-column">*/
/* */
/* 	<!-- BEGIN topicrow -->*/
/* 		<li class="row<!-- IF topicrow.S_TOPIC_REPORTED --> reported<!-- ELSEIF topicrow.S_ROW_COUNT is odd --> bg1<!-- ELSE --> bg2<!-- ENDIF -->">*/
/* 			<dl class="icon {topicrow.TOPIC_IMG_STYLE}">*/
/* 				<dt<!-- IF topicrow.TOPIC_ICON_IMG --> style="background-image: url({T_ICONS_PATH}{topicrow.TOPIC_ICON_IMG}); background-repeat: no-repeat;"<!-- ENDIF --> title="{topicrow.TOPIC_FOLDER_IMG_ALT}">*/
/* 					<!-- IF topicrow.S_UNREAD_TOPIC --><a href="{topicrow.U_NEWEST_POST}" class="icon-link"></a><!-- ENDIF -->*/
/* 					<div class="list-inner">*/
/* 						<!-- IF topicrow.S_UNREAD_TOPIC --><a href="{topicrow.U_NEWEST_POST}">{NEWEST_POST_IMG}</a> <!-- ENDIF --><a href="{topicrow.U_VIEW_TOPIC}" class="topictitle">{topicrow.TOPIC_TITLE}</a>*/
/* 						<!-- IF topicrow.S_TOPIC_UNAPPROVED or topicrow.S_POSTS_UNAPPROVED --><a href="{topicrow.U_MCP_QUEUE}">{topicrow.UNAPPROVED_IMG}</a> <!-- ENDIF -->*/
/* 						<!-- IF topicrow.S_TOPIC_REPORTED --><a href="{topicrow.U_MCP_REPORT}">{REPORTED_IMG}</a><!-- ENDIF --><br />*/
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
/* 						<div class="responsive-hide">*/
/* 							<!-- IF topicrow.ATTACH_ICON_IMG -->{topicrow.ATTACH_ICON_IMG} <!-- ENDIF -->*/
/* 							{L_POST_BY_AUTHOR} {topicrow.TOPIC_AUTHOR_FULL} &raquo; {topicrow.FIRST_POST_TIME}*/
/* 						</div>*/
/* 						<div class="responsive-show" style="display: none;">*/
/* 							<!-- IF topicrow.ATTACH_ICON_IMG -->{topicrow.ATTACH_ICON_IMG} <!-- ENDIF -->*/
/* 							{L_LAST_POST} {L_POST_BY_AUTHOR} {topicrow.LAST_POST_AUTHOR_FULL} &laquo; <a href="{topicrow.U_LAST_POST}" title="{L_GOTO_LAST_POST}">{topicrow.LAST_POST_TIME}</a>*/
/* 						</div>*/
/* 					</div>*/
/* 				</dt>*/
/* 				<dd class="lastpost"><span><dfn>{L_LAST_POST} </dfn>{L_POST_BY_AUTHOR} {topicrow.LAST_POST_AUTHOR_FULL}*/
/* 					<a href="{topicrow.U_LAST_POST}" title="{L_GOTO_LAST_POST}">{LAST_POST_IMG}</a> <br />{topicrow.LAST_POST_TIME}</span>*/
/* 				</dd>*/
/* 				<dd class="mark"><input type="checkbox" name="t[{topicrow.TOPIC_ID}]" id="t{topicrow.TOPIC_ID}" /></dd>*/
/* 			</dl>*/
/* 		</li>*/
/* 	<!-- END topicrow -->*/
/* 	</ul>*/
/* */
/* 	<div class="action-bar bottom">*/
/* 		<div class="pagination">*/
/* 			{TOTAL_TOPICS}*/
/* 			<!-- IF .pagination -->*/
/* 				<!-- INCLUDE pagination.html -->*/
/* 			<!-- ELSE -->*/
/* 				 &bull; {PAGE_NUMBER}*/
/* 			<!-- ENDIF -->*/
/* 		</div>*/
/* 	</div>*/
/* */
/* <!-- ELSEIF S_TOPIC_NOTIFY -->*/
/*     <ul class="topiclist">*/
/*         <li class="header">*/
/*             <dl class="icon">*/
/*                 <dt>{L_WATCHED_TOPICS}</dt>*/
/*             </dl>*/
/*         </li>*/
/*     </ul>*/
/* 	<p><strong>{L_NO_WATCHED_TOPICS}</strong></p>*/
/* <!-- ENDIF -->*/
/* */
/* 	</div>*/
/* </div>*/
/* */
/* <!-- IF .topicrow or .forumrow -->*/
/* 	<fieldset class="display-actions">*/
/* 		<input type="submit" name="unwatch" value="{L_UNWATCH_MARKED}" class="button2" />*/
/* 		<div><a href="#" onclick="marklist('ucp', 't', true); marklist('ucp', 'f', true); return false;">{L_MARK_ALL}</a> &bull; <a href="#" onclick="marklist('ucp', 't', false); marklist('ucp', 'f', false); return false;">{L_UNMARK_ALL}</a></div>*/
/* 		{S_FORM_TOKEN}*/
/* 	</fieldset>*/
/* <!-- ENDIF -->*/
/* </form>*/
/* */
/* <!-- INCLUDE ucp_footer.html -->*/
/* */
