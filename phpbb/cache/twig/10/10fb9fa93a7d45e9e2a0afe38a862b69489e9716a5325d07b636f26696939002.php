<?php

/* posting_preview.html */
class __TwigTemplate_b6bd13cf95c92334121e2fb08066307bc26b87798dc671b98eff9d388348a56f extends Twig_Template
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
        echo "<div class=\"post ";
        if ((isset($context["S_PRIVMSGS"]) ? $context["S_PRIVMSGS"] : null)) {
            echo "pm";
        } else {
            echo "bg2";
        }
        echo "\" id=\"preview\">
\t<div class=\"inner\">

";
        // line 4
        if ((isset($context["S_HAS_POLL_OPTIONS"]) ? $context["S_HAS_POLL_OPTIONS"] : null)) {
            // line 5
            echo "\t<div class=\"content\">
\t\t<h2>";
            // line 6
            echo $this->env->getExtension('phpbb')->lang("PREVIEW");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " ";
            echo (isset($context["POLL_QUESTION"]) ? $context["POLL_QUESTION"] : null);
            echo "</h2>
\t\t<p class=\"author\">";
            // line 7
            if ((isset($context["L_POLL_LENGTH"]) ? $context["L_POLL_LENGTH"] : null)) {
                echo $this->env->getExtension('phpbb')->lang("POLL_LENGTH");
                echo "<br />";
            }
            echo $this->env->getExtension('phpbb')->lang("MAX_VOTES");
            echo "</p>

\t\t<fieldset class=\"polls\">
\t\t";
            // line 10
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "poll_option", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["poll_option"]) {
                // line 11
                echo "\t\t\t<dl>
\t\t\t\t<dt><label for=\"vote_";
                // line 12
                echo $this->getAttribute($context["poll_option"], "POLL_OPTION_ID", array());
                echo "\">";
                echo $this->getAttribute($context["poll_option"], "POLL_OPTION_CAPTION", array());
                echo "</label></dt>
\t\t\t\t<dd style=\"width: auto;\">";
                // line 13
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
                echo "</dd>
\t\t\t</dl>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['poll_option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 16
            echo "\t\t</fieldset>
\t</div>

\t</div>
</div>

<div class=\"post bg2\">
\t<div class=\"inner\">

";
        }
        // line 26
        echo "
";
        // line 27
        // line 28
        echo "
\t<div class=\"postbody\">
\t\t<h3>";
        // line 30
        echo $this->env->getExtension('phpbb')->lang("PREVIEW");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo " ";
        echo (isset($context["PREVIEW_SUBJECT"]) ? $context["PREVIEW_SUBJECT"] : null);
        echo "</h3>

\t\t<div class=\"content\">";
        // line 32
        echo (isset($context["PREVIEW_MESSAGE"]) ? $context["PREVIEW_MESSAGE"] : null);
        echo "</div>

\t\t";
        // line 34
        if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "attachment", array()))) {
            // line 35
            echo "\t\t<dl class=\"attachbox\">
\t\t\t<dt>";
            // line 36
            echo $this->env->getExtension('phpbb')->lang("ATTACHMENTS");
            echo "</dt>
\t\t\t";
            // line 37
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "attachment", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["attachment"]) {
                // line 38
                echo "\t\t\t<dd>";
                echo $this->getAttribute($context["attachment"], "DISPLAY_ATTACHMENT", array());
                echo "</dd>
\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attachment'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 40
            echo "\t\t</dl>
\t\t";
        }
        // line 42
        echo "
\t\t";
        // line 43
        if ((isset($context["PREVIEW_SIGNATURE"]) ? $context["PREVIEW_SIGNATURE"] : null)) {
            echo "<div class=\"signature\">";
            echo (isset($context["PREVIEW_SIGNATURE"]) ? $context["PREVIEW_SIGNATURE"] : null);
            echo "</div>";
        }
        // line 44
        echo "\t</div>

\t</div>
</div>

<hr />
";
    }

    public function getTemplateName()
    {
        return "posting_preview.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  162 => 44,  156 => 43,  153 => 42,  149 => 40,  140 => 38,  136 => 37,  132 => 36,  129 => 35,  127 => 34,  122 => 32,  114 => 30,  110 => 28,  109 => 27,  106 => 26,  94 => 16,  65 => 13,  59 => 12,  56 => 11,  52 => 10,  42 => 7,  35 => 6,  32 => 5,  30 => 4,  19 => 1,);
    }
}
/* <div class="post <!-- IF S_PRIVMSGS -->pm<!-- ELSE -->bg2<!-- ENDIF -->" id="preview">*/
/* 	<div class="inner">*/
/* */
/* <!-- IF S_HAS_POLL_OPTIONS -->*/
/* 	<div class="content">*/
/* 		<h2>{L_PREVIEW}{L_COLON} {POLL_QUESTION}</h2>*/
/* 		<p class="author"><!-- IF L_POLL_LENGTH -->{L_POLL_LENGTH}<br /><!-- ENDIF -->{L_MAX_VOTES}</p>*/
/* */
/* 		<fieldset class="polls">*/
/* 		<!-- BEGIN poll_option -->*/
/* 			<dl>*/
/* 				<dt><label for="vote_{poll_option.POLL_OPTION_ID}">{poll_option.POLL_OPTION_CAPTION}</label></dt>*/
/* 				<dd style="width: auto;"><!-- IF S_IS_MULTI_CHOICE --><input type="checkbox" name="vote_id[]" id="vote_{poll_option.POLL_OPTION_ID}" value="{poll_option.POLL_OPTION_ID}"<!-- IF poll_option.POLL_OPTION_VOTED --> checked="checked"<!-- ENDIF --> /><!-- ELSE --><input type="radio" name="vote_id[]" id="vote_{poll_option.POLL_OPTION_ID}" value="{poll_option.POLL_OPTION_ID}"<!-- IF poll_option.POLL_OPTION_VOTED --> checked="checked"<!-- ENDIF --> /><!-- ENDIF --></dd>*/
/* 			</dl>*/
/* 		<!-- END poll_option -->*/
/* 		</fieldset>*/
/* 	</div>*/
/* */
/* 	</div>*/
/* </div>*/
/* */
/* <div class="post bg2">*/
/* 	<div class="inner">*/
/* */
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT posting_preview_poll_after -->*/
/* */
/* 	<div class="postbody">*/
/* 		<h3>{L_PREVIEW}{L_COLON} {PREVIEW_SUBJECT}</h3>*/
/* */
/* 		<div class="content">{PREVIEW_MESSAGE}</div>*/
/* */
/* 		<!-- IF .attachment -->*/
/* 		<dl class="attachbox">*/
/* 			<dt>{L_ATTACHMENTS}</dt>*/
/* 			<!-- BEGIN attachment -->*/
/* 			<dd>{attachment.DISPLAY_ATTACHMENT}</dd>*/
/* 			<!-- END attachment -->*/
/* 		</dl>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- IF PREVIEW_SIGNATURE --><div class="signature">{PREVIEW_SIGNATURE}</div><!-- ENDIF -->*/
/* 	</div>*/
/* */
/* 	</div>*/
/* </div>*/
/* */
/* <hr />*/
/* */
