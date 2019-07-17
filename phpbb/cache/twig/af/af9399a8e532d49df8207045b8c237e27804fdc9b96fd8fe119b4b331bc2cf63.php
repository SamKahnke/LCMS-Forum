<?php

/* style_settings.html */
class __TwigTemplate_943bb40d8501488207071bccdf41f33dbb14c2effab036a2833875f35105d169 extends Twig_Template
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
        $value = "80%";
        $context['definition']->set('STYLE_WIDTH', $value);
        echo " <!-- Options: Enter a fixed width eg: '1000px' or a fluid width eg: '80%' -->
";
        // line 2
        $value = "logo";
        $context['definition']->set('HEADER_STRUCTURE', $value);
        echo " <!-- Options (case sensitive): 'logo' | 'text' -->
";
        // line 3
        $value = "yes";
        $context['definition']->set('COLLAPSIBLE_CATEGORIES', $value);
        echo " <!-- Options 'yes' | 'no' -->";
    }

    public function getTemplateName()
    {
        return "style_settings.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  29 => 3,  24 => 2,  19 => 1,);
    }
}
/* <!-- DEFINE $STYLE_WIDTH = '80%' --> <!-- Options: Enter a fixed width eg: '1000px' or a fluid width eg: '80%' -->*/
/* <!-- DEFINE $HEADER_STRUCTURE = 'logo' --> <!-- Options (case sensitive): 'logo' | 'text' -->*/
/* <!-- DEFINE $COLLAPSIBLE_CATEGORIES = 'yes' --> <!-- Options 'yes' | 'no' -->*/
