<?php

/* _style_config.html */
class __TwigTemplate_59287fe1910c877b092ae5b3797b03de56e49910496d61ce6799715ea80838ff extends Twig_Template
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
        if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "FALSE", array())) {
            // line 2
            echo "\tVariables below change style behavior.

\tList of variables and values (do not edit!):
\t\tForums list layout:
\t\t\t\$STANDARD_FORUMS_LAYOUT = 0\t-> Layout with topics and posts below forum title
\t\t\t\$STANDARD_FORUMS_LAYOUT = 1\t-> Default layout with separate columns for topics and posts

\t\tHide forum description:
\t\t\t\$HIDE_FORUM_DESCRIPTION = 0 -> Always show it
\t\t\t\$HIDE_FORUM_DESCRIPTION = 1 -> Show it only when hovering forum title

\t\tWrap header / navigation:
\t\t\t\$WRAP_HEADER = 0 -> Header and navigation will not be included in global wrapper
\t\t\t\$WRAP_HEADER = 1 -> Both header and navigation will be included in global wrapper
\t\t\t\$WRAP_HEADER = 2 -> Header will not be included in global wrapper, navigation will be included

\t\tWrap footer:
\t\t\t\$WRAP_FOOTER = 0 -> Footer will be outside of content wrapper
\t\t\t\$WRAP_FOOTER = 1 -> Footer will be inside content wrapper

\t\tQuick search position:
\t\t\t\$SEARCH_IN_NAVBAR = 0 -> Search bar will be displayed in header
\t\t\t\$SEARCH_IN_NAVBAR = 1 -> Search bar will be displayed in secondary navigation

\tEdit variables below:
";
        }
        // line 28
        echo "
";
        // line 29
        $value = 0;
        $context['definition']->set('STANDARD_FORUMS_LAYOUT', $value);
        // line 30
        $value = 1;
        $context['definition']->set('HIDE_FORUM_DESCRIPTION', $value);
        // line 31
        $value = 0;
        $context['definition']->set('WRAP_HEADER', $value);
        // line 32
        $value = 0;
        $context['definition']->set('WRAP_FOOTER', $value);
        // line 33
        $value = 0;
        $context['definition']->set('SEARCH_IN_NAVBAR', $value);
        // line 34
        echo "
";
        // line 35
        if ($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "FALSE", array())) {
            // line 36
            echo "\tDo not edit code below!
";
        }
    }

    public function getTemplateName()
    {
        return "_style_config.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  72 => 36,  70 => 35,  67 => 34,  64 => 33,  61 => 32,  58 => 31,  55 => 30,  52 => 29,  49 => 28,  21 => 2,  19 => 1,);
    }
}
/* <!-- IF $FALSE -->*/
/* 	Variables below change style behavior.*/
/* */
/* 	List of variables and values (do not edit!):*/
/* 		Forums list layout:*/
/* 			$STANDARD_FORUMS_LAYOUT = 0	-> Layout with topics and posts below forum title*/
/* 			$STANDARD_FORUMS_LAYOUT = 1	-> Default layout with separate columns for topics and posts*/
/* */
/* 		Hide forum description:*/
/* 			$HIDE_FORUM_DESCRIPTION = 0 -> Always show it*/
/* 			$HIDE_FORUM_DESCRIPTION = 1 -> Show it only when hovering forum title*/
/* */
/* 		Wrap header / navigation:*/
/* 			$WRAP_HEADER = 0 -> Header and navigation will not be included in global wrapper*/
/* 			$WRAP_HEADER = 1 -> Both header and navigation will be included in global wrapper*/
/* 			$WRAP_HEADER = 2 -> Header will not be included in global wrapper, navigation will be included*/
/* */
/* 		Wrap footer:*/
/* 			$WRAP_FOOTER = 0 -> Footer will be outside of content wrapper*/
/* 			$WRAP_FOOTER = 1 -> Footer will be inside content wrapper*/
/* */
/* 		Quick search position:*/
/* 			$SEARCH_IN_NAVBAR = 0 -> Search bar will be displayed in header*/
/* 			$SEARCH_IN_NAVBAR = 1 -> Search bar will be displayed in secondary navigation*/
/* */
/* 	Edit variables below:*/
/* <!-- ENDIF -->*/
/* */
/* <!-- DEFINE $STANDARD_FORUMS_LAYOUT = 0 -->*/
/* <!-- DEFINE $HIDE_FORUM_DESCRIPTION = 1 -->*/
/* <!-- DEFINE $WRAP_HEADER = 0 -->*/
/* <!-- DEFINE $WRAP_FOOTER = 0 -->*/
/* <!-- DEFINE $SEARCH_IN_NAVBAR = 0 -->*/
/* */
/* <!-- IF $FALSE -->*/
/* 	Do not edit code below!*/
/* <!-- ENDIF -->*/
/* */
