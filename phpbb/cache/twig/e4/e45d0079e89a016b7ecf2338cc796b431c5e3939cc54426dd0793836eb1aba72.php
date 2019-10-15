<?php

/* mcp_front.html */
class __TwigTemplate_a2e07fdcb76d2981c79d2b4616c4782614a5e9f723e3199cc47e5d1bf898d59f extends Twig_Template
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
        $location = "mcp_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("mcp_header.html", "mcp_front.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<h2>";
        // line 3
        echo (isset($context["PAGE_TITLE"]) ? $context["PAGE_TITLE"] : null);
        echo "</h2>

";
        // line 5
        // line 6
        echo "
";
        // line 7
        if ((isset($context["S_SHOW_UNAPPROVED"]) ? $context["S_SHOW_UNAPPROVED"] : null)) {
            // line 8
            echo "
\t<form id=\"mcp_queue\" method=\"post\" action=\"";
            // line 9
            echo (isset($context["S_MCP_QUEUE_ACTION"]) ? $context["S_MCP_QUEUE_ACTION"] : null);
            echo "\">

\t<div class=\"panel\">
\t\t<div class=\"inner\">

\t\t<h3>";
            // line 14
            echo $this->env->getExtension('phpbb')->lang("LATEST_UNAPPROVED");
            echo "</h3>
\t\t<p>";
            // line 15
            echo $this->env->getExtension('phpbb')->lang("UNAPPROVED_TOTAL");
            echo "</p>

\t\t";
            // line 17
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "unapproved", array()))) {
                // line 18
                echo "\t\t\t<ul class=\"topiclist missing-column\">
\t\t\t\t<li class=\"header\">
\t\t\t\t\t<dl>
\t\t\t\t\t\t<dt><div class=\"list-inner\">";
                // line 21
                echo $this->env->getExtension('phpbb')->lang("VIEW_DETAILS");
                echo "</div></dt>
\t\t\t\t\t\t<dd class=\"moderation\"><span>";
                // line 22
                echo $this->env->getExtension('phpbb')->lang("TOPIC");
                echo " &amp; ";
                echo $this->env->getExtension('phpbb')->lang("FORUM");
                echo "</span></dd>
\t\t\t\t\t</dl>
\t\t\t\t</li>
\t\t\t</ul>
\t\t\t<ul class=\"topiclist cplist missing-column responsive-show-all\">

\t\t\t";
                // line 28
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "unapproved", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["unapproved"]) {
                    // line 29
                    echo "\t\t\t<li class=\"row";
                    if (($this->getAttribute($context["unapproved"], "S_ROW_COUNT", array()) % 2 == 1)) {
                        echo " bg1";
                    } else {
                        echo " bg2";
                    }
                    echo "\">
\t\t\t\t<dl>
\t\t\t\t\t<dt>
\t\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t\t<a href=\"";
                    // line 33
                    echo $this->getAttribute($context["unapproved"], "U_POST_DETAILS", array());
                    echo "\" class=\"topictitle\">";
                    echo $this->getAttribute($context["unapproved"], "SUBJECT", array());
                    echo "</a> ";
                    echo $this->getAttribute($context["unapproved"], "ATTACH_ICON_IMG", array());
                    echo "<br />
\t\t\t\t\t\t\t";
                    // line 34
                    echo $this->env->getExtension('phpbb')->lang("POSTED");
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["unapproved"], "AUTHOR_FULL", array());
                    echo " &raquo; ";
                    echo $this->getAttribute($context["unapproved"], "POST_TIME", array());
                    echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t</dt>
\t\t\t\t\t<dd class=\"moderation\"><span>
\t\t\t\t\t\t";
                    // line 38
                    echo $this->env->getExtension('phpbb')->lang("TOPIC");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <a href=\"";
                    echo $this->getAttribute($context["unapproved"], "U_TOPIC", array());
                    echo "\">";
                    echo $this->getAttribute($context["unapproved"], "TOPIC_TITLE", array());
                    echo "</a> [<a href=\"";
                    echo $this->getAttribute($context["unapproved"], "U_MCP_TOPIC", array());
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("MODERATE");
                    echo "</a>]<br />
\t\t\t\t\t\t";
                    // line 39
                    echo $this->env->getExtension('phpbb')->lang("FORUM");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " ";
                    if ($this->getAttribute($context["unapproved"], "U_FORUM", array())) {
                        echo "<a href=\"";
                        echo $this->getAttribute($context["unapproved"], "U_FORUM", array());
                        echo "\">";
                        echo $this->getAttribute($context["unapproved"], "FORUM_NAME", array());
                        echo "</a>";
                    } else {
                        echo $this->getAttribute($context["unapproved"], "FORUM_NAME", array());
                    }
                    if ($this->getAttribute($context["unapproved"], "U_MCP_FORUM", array())) {
                        echo " [<a href=\"";
                        echo $this->getAttribute($context["unapproved"], "U_MCP_FORUM", array());
                        echo "\">";
                        echo $this->env->getExtension('phpbb')->lang("MODERATE");
                        echo "</a>]";
                    }
                    echo "</span>
\t\t\t\t\t</dd>

\t\t\t \t\t<dd class=\"mark\"><input type=\"checkbox\" name=\"post_id_list[]\" value=\"";
                    // line 42
                    echo $this->getAttribute($context["unapproved"], "POST_ID", array());
                    echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['unapproved'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 46
                echo "\t\t\t</ul>
\t\t";
            }
            // line 48
            echo "
\t\t</div>
\t";
            // line 50
            echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
            echo "
\t</div>

\t";
            // line 53
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "unapproved", array()))) {
                // line 54
                echo "\t<fieldset class=\"display-actions\">
\t\t";
                // line 55
                echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
                echo "
\t\t<input class=\"button2\" type=\"submit\" name=\"action[disapprove]\" value=\"";
                // line 56
                echo $this->env->getExtension('phpbb')->lang("DISAPPROVE");
                echo "\" />&nbsp;
\t\t<input class=\"button1\" type=\"submit\" name=\"action[approve]\" value=\"";
                // line 57
                echo $this->env->getExtension('phpbb')->lang("APPROVE");
                echo "\" />
\t\t<div><a href=\"#\" onclick=\"marklist('mcp_queue', 'post_id_list', true); return false;\">";
                // line 58
                echo $this->env->getExtension('phpbb')->lang("MARK_ALL");
                echo "</a> :: <a href=\"#\" onclick=\"marklist('mcp_queue', 'post_id_list', false); return false;\">";
                echo $this->env->getExtension('phpbb')->lang("UNMARK_ALL");
                echo "</a></div>
\t</fieldset>
\t";
            }
            // line 61
            echo "\t\t</form>
";
        }
        // line 63
        echo "
";
        // line 64
        // line 65
        echo "
";
        // line 66
        if ((isset($context["S_SHOW_REPORTS"]) ? $context["S_SHOW_REPORTS"] : null)) {
            // line 67
            echo "\t<div class=\"panel\">
\t\t<div class=\"inner\">

\t\t<h3>";
            // line 70
            echo $this->env->getExtension('phpbb')->lang("LATEST_REPORTED");
            echo "</h3>
\t\t<p>";
            // line 71
            echo $this->env->getExtension('phpbb')->lang("REPORTS_TOTAL");
            echo "</p>

\t\t";
            // line 73
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "report", array()))) {
                // line 74
                echo "\t\t\t<ul class=\"topiclist two-long-columns\">
\t\t\t\t<li class=\"header\">
\t\t\t\t\t<dl>
\t\t\t\t\t\t<dt><div class=\"list-inner\">";
                // line 77
                echo $this->env->getExtension('phpbb')->lang("VIEW_DETAILS");
                echo "</div></dt>
\t\t\t\t\t\t<dd class=\"moderation\"><span>";
                // line 78
                echo $this->env->getExtension('phpbb')->lang("REPORTER");
                echo " &amp; ";
                echo $this->env->getExtension('phpbb')->lang("FORUM");
                echo "</span></dd>
\t\t\t\t\t</dl>
\t\t\t\t</li>
\t\t\t</ul>
\t\t\t<ul class=\"topiclist cplist two-long-columns responsive-show-all\">

\t\t\t";
                // line 84
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "report", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["report"]) {
                    // line 85
                    echo "\t\t\t<li class=\"row";
                    if (($this->getAttribute($context["report"], "S_ROW_COUNT", array()) % 2 == 1)) {
                        echo " bg1";
                    } else {
                        echo " bg2";
                    }
                    echo "\">
\t\t\t\t<dl>
\t\t\t\t\t<dt>
\t\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t\t<a href=\"";
                    // line 89
                    echo $this->getAttribute($context["report"], "U_POST_DETAILS", array());
                    echo "#reports\" class=\"topictitle\">";
                    echo $this->getAttribute($context["report"], "SUBJECT", array());
                    echo "</a> ";
                    echo $this->getAttribute($context["report"], "ATTACH_ICON_IMG", array());
                    echo "<br />
\t\t\t\t\t\t\t<span>";
                    // line 90
                    echo $this->env->getExtension('phpbb')->lang("POSTED");
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["report"], "AUTHOR_FULL", array());
                    echo " &raquo; ";
                    echo $this->getAttribute($context["report"], "POST_TIME", array());
                    echo "</span>
\t\t\t\t\t\t</div>
\t\t\t\t\t</dt>
\t\t\t\t\t<dd class=\"moderation\">
\t\t\t\t\t\t<span>";
                    // line 94
                    echo $this->env->getExtension('phpbb')->lang("REPORTED");
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["report"], "REPORTER_FULL", array());
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("REPORTED_ON_DATE");
                    echo " ";
                    echo $this->getAttribute($context["report"], "REPORT_TIME", array());
                    echo "<br />
\t\t\t\t\t\t";
                    // line 95
                    echo $this->env->getExtension('phpbb')->lang("FORUM");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <a href=\"";
                    echo $this->getAttribute($context["report"], "U_FORUM", array());
                    echo "\">";
                    echo $this->getAttribute($context["report"], "FORUM_NAME", array());
                    echo "</a></span>
\t\t\t\t\t</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['report'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 100
                echo "\t\t\t</ul>
\t\t";
            }
            // line 102
            echo "
\t\t</div>
\t</div>
";
        }
        // line 106
        echo "
";
        // line 107
        // line 108
        echo "
";
        // line 109
        if ((isset($context["S_SHOW_PM_REPORTS"]) ? $context["S_SHOW_PM_REPORTS"] : null)) {
            // line 110
            echo "\t<div class=\"panel\">
\t\t<div class=\"inner\">

\t\t<h3>";
            // line 113
            echo $this->env->getExtension('phpbb')->lang("LATEST_REPORTED_PMS");
            echo "</h3>
\t\t<p>";
            // line 114
            echo $this->env->getExtension('phpbb')->lang("PM_REPORTS_TOTAL");
            echo "</p>

\t\t";
            // line 116
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pm_report", array()))) {
                // line 117
                echo "\t\t\t<ul class=\"topiclist two-long-columns\">
\t\t\t\t<li class=\"header\">
\t\t\t\t\t<dl>
\t\t\t\t\t\t<dt><div class=\"list-inner\">";
                // line 120
                echo $this->env->getExtension('phpbb')->lang("VIEW_DETAILS");
                echo "</div></dt>
\t\t\t\t\t\t<dd class=\"moderation\"><span>";
                // line 121
                echo $this->env->getExtension('phpbb')->lang("REPORTER");
                echo "</span></dd>
\t\t\t\t\t</dl>
\t\t\t\t</li>
\t\t\t</ul>
\t\t\t<ul class=\"topiclist cplist two-long-columns responsive-show-all\">

\t\t\t";
                // line 127
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pm_report", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["pm_report"]) {
                    // line 128
                    echo "\t\t\t<li class=\"row";
                    if (($this->getAttribute($context["pm_report"], "S_ROW_COUNT", array()) % 2 == 1)) {
                        echo " bg1";
                    } else {
                        echo " bg2";
                    }
                    echo "\">
\t\t\t\t<dl>
\t\t\t\t\t<dt>
\t\t\t\t\t\t<div class=\"list-inner\">
\t\t\t\t\t\t\t<a href=\"";
                    // line 132
                    echo $this->getAttribute($context["pm_report"], "U_PM_DETAILS", array());
                    echo "\" class=\"topictitle\">";
                    echo $this->getAttribute($context["pm_report"], "PM_SUBJECT", array());
                    echo "</a> ";
                    echo $this->getAttribute($context["pm_report"], "ATTACH_ICON_IMG", array());
                    echo "<br />
\t\t\t\t\t\t\t<span>";
                    // line 133
                    echo $this->env->getExtension('phpbb')->lang("MESSAGE_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["pm_report"], "PM_AUTHOR_FULL", array());
                    echo " &raquo; ";
                    echo $this->getAttribute($context["pm_report"], "PM_TIME", array());
                    echo "</span><br />
\t\t\t\t\t\t\t<span>";
                    // line 134
                    echo $this->env->getExtension('phpbb')->lang("MESSAGE_TO");
                    echo " ";
                    echo $this->getAttribute($context["pm_report"], "RECIPIENTS", array());
                    echo "</span>
\t\t\t\t\t\t</div>
\t\t\t\t\t</dt>
\t\t\t\t\t<dd class=\"moderation\">
\t\t\t\t\t\t<span>";
                    // line 138
                    echo $this->env->getExtension('phpbb')->lang("REPORTED");
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["pm_report"], "REPORTER_FULL", array());
                    echo " ";
                    echo $this->env->getExtension('phpbb')->lang("REPORTED_ON_DATE");
                    echo " ";
                    echo $this->getAttribute($context["pm_report"], "REPORT_TIME", array());
                    echo "</span>
\t\t\t\t\t</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pm_report'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 143
                echo "\t\t\t</ul>
\t\t";
            }
            // line 145
            echo "
\t\t</div>
\t</div>
";
        }
        // line 149
        echo "
";
        // line 150
        // line 151
        echo "
";
        // line 152
        if ((isset($context["S_SHOW_LOGS"]) ? $context["S_SHOW_LOGS"] : null)) {
            // line 153
            echo "\t<div class=\"panel\">
\t\t<div class=\"inner\">

\t\t<h3>";
            // line 156
            echo $this->env->getExtension('phpbb')->lang("LATEST_LOGS");
            echo "</h3>

\t\t<table class=\"table1\">
\t\t<thead>
\t\t<tr>
\t\t\t<th class=\"name\">";
            // line 161
            echo $this->env->getExtension('phpbb')->lang("ACTION");
            echo "</th>
\t\t\t<th class=\"name\">";
            // line 162
            echo $this->env->getExtension('phpbb')->lang("USERNAME");
            echo "</th>
\t\t\t<th class=\"name\">";
            // line 163
            echo $this->env->getExtension('phpbb')->lang("IP");
            echo "</th>
\t\t\t<th class=\"name\">";
            // line 164
            echo $this->env->getExtension('phpbb')->lang("VIEW_TOPIC");
            echo "</th>
\t\t\t<th class=\"name\">";
            // line 165
            echo $this->env->getExtension('phpbb')->lang("VIEW_TOPIC_LOGS");
            echo "</th>
\t\t\t<th class=\"name\">";
            // line 166
            echo $this->env->getExtension('phpbb')->lang("TIME");
            echo "</th>
\t\t</tr>
\t\t</thead>
\t\t<tbody>
\t";
            // line 170
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "log", array()));
            $context['_iterated'] = false;
            foreach ($context['_seq'] as $context["_key"] => $context["log"]) {
                // line 171
                echo "\t\t<tr class=\"";
                if (($this->getAttribute($context["log"], "S_ROW_COUNT", array()) % 2 == 0)) {
                    echo "bg1";
                } else {
                    echo "bg2";
                }
                echo "\">
\t\t\t<td>";
                // line 172
                echo $this->getAttribute($context["log"], "ACTION", array());
                echo "</td>
\t\t\t<td><span>";
                // line 173
                echo $this->getAttribute($context["log"], "USERNAME", array());
                echo "</span></td>
\t\t\t<td><span>";
                // line 174
                echo $this->getAttribute($context["log"], "IP", array());
                echo "</span></td>
\t\t\t<td><span>";
                // line 175
                if ($this->getAttribute($context["log"], "U_VIEW_TOPIC", array())) {
                    echo "<a href=\"";
                    echo $this->getAttribute($context["log"], "U_VIEW_TOPIC", array());
                    echo "\" title=\"";
                    echo $this->env->getExtension('phpbb')->lang("VIEW_TOPIC");
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("VIEW_TOPIC");
                    echo "</a>";
                }
                echo "&nbsp;</span></td>
\t\t\t<td><span>";
                // line 176
                if ($this->getAttribute($context["log"], "U_VIEWLOGS", array())) {
                    echo "<a href=\"";
                    echo $this->getAttribute($context["log"], "U_VIEWLOGS", array());
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("VIEW_TOPIC_LOGS");
                    echo "</a>";
                }
                echo "&nbsp;</span></td>
\t\t\t<td><span>";
                // line 177
                echo $this->getAttribute($context["log"], "TIME", array());
                echo "</span></td>
\t\t</tr>
\t";
                $context['_iterated'] = true;
            }
            if (!$context['_iterated']) {
                // line 180
                echo "\t\t<tr>
\t\t\t<td colspan=\"6\">";
                // line 181
                echo $this->env->getExtension('phpbb')->lang("NO_ENTRIES");
                echo "</td>
\t\t</tr>
\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['log'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 184
            echo "\t\t</tbody>
\t\t</table>

\t\t</div>
\t</div>
";
        }
        // line 190
        echo "
";
        // line 191
        // line 192
        echo "
";
        // line 193
        $location = "mcp_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("mcp_footer.html", "mcp_front.html", 193)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "mcp_front.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  579 => 193,  576 => 192,  575 => 191,  572 => 190,  564 => 184,  555 => 181,  552 => 180,  544 => 177,  534 => 176,  522 => 175,  518 => 174,  514 => 173,  510 => 172,  501 => 171,  496 => 170,  489 => 166,  485 => 165,  481 => 164,  477 => 163,  473 => 162,  469 => 161,  461 => 156,  456 => 153,  454 => 152,  451 => 151,  450 => 150,  447 => 149,  441 => 145,  437 => 143,  418 => 138,  409 => 134,  401 => 133,  393 => 132,  381 => 128,  377 => 127,  368 => 121,  364 => 120,  359 => 117,  357 => 116,  352 => 114,  348 => 113,  343 => 110,  341 => 109,  338 => 108,  337 => 107,  334 => 106,  328 => 102,  324 => 100,  308 => 95,  296 => 94,  283 => 90,  275 => 89,  263 => 85,  259 => 84,  248 => 78,  244 => 77,  239 => 74,  237 => 73,  232 => 71,  228 => 70,  223 => 67,  221 => 66,  218 => 65,  217 => 64,  214 => 63,  210 => 61,  202 => 58,  198 => 57,  194 => 56,  190 => 55,  187 => 54,  185 => 53,  179 => 50,  175 => 48,  171 => 46,  161 => 42,  137 => 39,  124 => 38,  111 => 34,  103 => 33,  91 => 29,  87 => 28,  76 => 22,  72 => 21,  67 => 18,  65 => 17,  60 => 15,  56 => 14,  48 => 9,  45 => 8,  43 => 7,  40 => 6,  39 => 5,  34 => 3,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE mcp_header.html -->*/
/* */
/* <h2>{PAGE_TITLE}</h2>*/
/* */
/* <!-- EVENT mcp_front_latest_unapproved_before -->*/
/* */
/* <!-- IF S_SHOW_UNAPPROVED -->*/
/* */
/* 	<form id="mcp_queue" method="post" action="{S_MCP_QUEUE_ACTION}">*/
/* */
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* */
/* 		<h3>{L_LATEST_UNAPPROVED}</h3>*/
/* 		<p>{L_UNAPPROVED_TOTAL}</p>*/
/* */
/* 		<!-- IF .unapproved -->*/
/* 			<ul class="topiclist missing-column">*/
/* 				<li class="header">*/
/* 					<dl>*/
/* 						<dt><div class="list-inner">{L_VIEW_DETAILS}</div></dt>*/
/* 						<dd class="moderation"><span>{L_TOPIC} &amp; {L_FORUM}</span></dd>*/
/* 					</dl>*/
/* 				</li>*/
/* 			</ul>*/
/* 			<ul class="topiclist cplist missing-column responsive-show-all">*/
/* */
/* 			<!-- BEGIN unapproved -->*/
/* 			<li class="row<!-- IF unapproved.S_ROW_COUNT is odd --> bg1<!-- ELSE --> bg2<!-- ENDIF -->">*/
/* 				<dl>*/
/* 					<dt>*/
/* 						<div class="list-inner">*/
/* 							<a href="{unapproved.U_POST_DETAILS}" class="topictitle">{unapproved.SUBJECT}</a> {unapproved.ATTACH_ICON_IMG}<br />*/
/* 							{L_POSTED} {L_POST_BY_AUTHOR} {unapproved.AUTHOR_FULL} &raquo; {unapproved.POST_TIME}*/
/* 						</div>*/
/* 					</dt>*/
/* 					<dd class="moderation"><span>*/
/* 						{L_TOPIC}{L_COLON} <a href="{unapproved.U_TOPIC}">{unapproved.TOPIC_TITLE}</a> [<a href="{unapproved.U_MCP_TOPIC}">{L_MODERATE}</a>]<br />*/
/* 						{L_FORUM}{L_COLON} <!-- IF unapproved.U_FORUM --><a href="{unapproved.U_FORUM}">{unapproved.FORUM_NAME}</a><!-- ELSE -->{unapproved.FORUM_NAME}<!-- ENDIF --><!-- IF unapproved.U_MCP_FORUM --> [<a href="{unapproved.U_MCP_FORUM}">{L_MODERATE}</a>]<!-- ENDIF --></span>*/
/* 					</dd>*/
/* */
/* 			 		<dd class="mark"><input type="checkbox" name="post_id_list[]" value="{unapproved.POST_ID}" /></dd>*/
/* 				</dl>*/
/* 			</li>*/
/* 			<!-- END unapproved -->*/
/* 			</ul>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		</div>*/
/* 	{S_FORM_TOKEN}*/
/* 	</div>*/
/* */
/* 	<!-- IF .unapproved -->*/
/* 	<fieldset class="display-actions">*/
/* 		{S_HIDDEN_FIELDS}*/
/* 		<input class="button2" type="submit" name="action[disapprove]" value="{L_DISAPPROVE}" />&nbsp;*/
/* 		<input class="button1" type="submit" name="action[approve]" value="{L_APPROVE}" />*/
/* 		<div><a href="#" onclick="marklist('mcp_queue', 'post_id_list', true); return false;">{L_MARK_ALL}</a> :: <a href="#" onclick="marklist('mcp_queue', 'post_id_list', false); return false;">{L_UNMARK_ALL}</a></div>*/
/* 	</fieldset>*/
/* 	<!-- ENDIF -->*/
/* 		</form>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT mcp_front_latest_reported_before -->*/
/* */
/* <!-- IF S_SHOW_REPORTS -->*/
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* */
/* 		<h3>{L_LATEST_REPORTED}</h3>*/
/* 		<p>{L_REPORTS_TOTAL}</p>*/
/* */
/* 		<!-- IF .report -->*/
/* 			<ul class="topiclist two-long-columns">*/
/* 				<li class="header">*/
/* 					<dl>*/
/* 						<dt><div class="list-inner">{L_VIEW_DETAILS}</div></dt>*/
/* 						<dd class="moderation"><span>{L_REPORTER} &amp; {L_FORUM}</span></dd>*/
/* 					</dl>*/
/* 				</li>*/
/* 			</ul>*/
/* 			<ul class="topiclist cplist two-long-columns responsive-show-all">*/
/* */
/* 			<!-- BEGIN report -->*/
/* 			<li class="row<!-- IF report.S_ROW_COUNT is odd --> bg1<!-- ELSE --> bg2<!-- ENDIF -->">*/
/* 				<dl>*/
/* 					<dt>*/
/* 						<div class="list-inner">*/
/* 							<a href="{report.U_POST_DETAILS}#reports" class="topictitle">{report.SUBJECT}</a> {report.ATTACH_ICON_IMG}<br />*/
/* 							<span>{L_POSTED} {L_POST_BY_AUTHOR} {report.AUTHOR_FULL} &raquo; {report.POST_TIME}</span>*/
/* 						</div>*/
/* 					</dt>*/
/* 					<dd class="moderation">*/
/* 						<span>{L_REPORTED} {L_POST_BY_AUTHOR} {report.REPORTER_FULL} {L_REPORTED_ON_DATE} {report.REPORT_TIME}<br />*/
/* 						{L_FORUM}{L_COLON} <a href="{report.U_FORUM}">{report.FORUM_NAME}</a></span>*/
/* 					</dd>*/
/* 				</dl>*/
/* 			</li>*/
/* 			<!-- END report -->*/
/* 			</ul>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		</div>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT mcp_front_latest_reported_pms_before -->*/
/* */
/* <!-- IF S_SHOW_PM_REPORTS -->*/
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* */
/* 		<h3>{L_LATEST_REPORTED_PMS}</h3>*/
/* 		<p>{L_PM_REPORTS_TOTAL}</p>*/
/* */
/* 		<!-- IF .pm_report -->*/
/* 			<ul class="topiclist two-long-columns">*/
/* 				<li class="header">*/
/* 					<dl>*/
/* 						<dt><div class="list-inner">{L_VIEW_DETAILS}</div></dt>*/
/* 						<dd class="moderation"><span>{L_REPORTER}</span></dd>*/
/* 					</dl>*/
/* 				</li>*/
/* 			</ul>*/
/* 			<ul class="topiclist cplist two-long-columns responsive-show-all">*/
/* */
/* 			<!-- BEGIN pm_report -->*/
/* 			<li class="row<!-- IF pm_report.S_ROW_COUNT is odd --> bg1<!-- ELSE --> bg2<!-- ENDIF -->">*/
/* 				<dl>*/
/* 					<dt>*/
/* 						<div class="list-inner">*/
/* 							<a href="{pm_report.U_PM_DETAILS}" class="topictitle">{pm_report.PM_SUBJECT}</a> {pm_report.ATTACH_ICON_IMG}<br />*/
/* 							<span>{L_MESSAGE_BY_AUTHOR} {pm_report.PM_AUTHOR_FULL} &raquo; {pm_report.PM_TIME}</span><br />*/
/* 							<span>{L_MESSAGE_TO} {pm_report.RECIPIENTS}</span>*/
/* 						</div>*/
/* 					</dt>*/
/* 					<dd class="moderation">*/
/* 						<span>{L_REPORTED} {L_POST_BY_AUTHOR} {pm_report.REPORTER_FULL} {L_REPORTED_ON_DATE} {pm_report.REPORT_TIME}</span>*/
/* 					</dd>*/
/* 				</dl>*/
/* 			</li>*/
/* 			<!-- END pm_report -->*/
/* 			</ul>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		</div>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT mcp_front_latest_logs_before -->*/
/* */
/* <!-- IF S_SHOW_LOGS -->*/
/* 	<div class="panel">*/
/* 		<div class="inner">*/
/* */
/* 		<h3>{L_LATEST_LOGS}</h3>*/
/* */
/* 		<table class="table1">*/
/* 		<thead>*/
/* 		<tr>*/
/* 			<th class="name">{L_ACTION}</th>*/
/* 			<th class="name">{L_USERNAME}</th>*/
/* 			<th class="name">{L_IP}</th>*/
/* 			<th class="name">{L_VIEW_TOPIC}</th>*/
/* 			<th class="name">{L_VIEW_TOPIC_LOGS}</th>*/
/* 			<th class="name">{L_TIME}</th>*/
/* 		</tr>*/
/* 		</thead>*/
/* 		<tbody>*/
/* 	<!-- BEGIN log -->*/
/* 		<tr class="<!-- IF log.S_ROW_COUNT is even -->bg1<!-- ELSE -->bg2<!-- ENDIF -->">*/
/* 			<td>{log.ACTION}</td>*/
/* 			<td><span>{log.USERNAME}</span></td>*/
/* 			<td><span>{log.IP}</span></td>*/
/* 			<td><span><!-- IF log.U_VIEW_TOPIC --><a href="{log.U_VIEW_TOPIC}" title="{L_VIEW_TOPIC}">{L_VIEW_TOPIC}</a><!-- ENDIF -->&nbsp;</span></td>*/
/* 			<td><span><!-- IF log.U_VIEWLOGS --><a href="{log.U_VIEWLOGS}">{L_VIEW_TOPIC_LOGS}</a><!-- ENDIF -->&nbsp;</span></td>*/
/* 			<td><span>{log.TIME}</span></td>*/
/* 		</tr>*/
/* 	<!-- BEGINELSE -->*/
/* 		<tr>*/
/* 			<td colspan="6">{L_NO_ENTRIES}</td>*/
/* 		</tr>*/
/* 	<!-- END log -->*/
/* 		</tbody>*/
/* 		</table>*/
/* */
/* 		</div>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT mcp_front_latest_logs_after -->*/
/* */
/* <!-- INCLUDE mcp_footer.html -->*/
/* */
