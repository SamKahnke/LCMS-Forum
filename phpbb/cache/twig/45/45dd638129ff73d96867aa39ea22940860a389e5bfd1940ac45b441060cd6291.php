<?php

/* user_activate_passwd.txt */
class __TwigTemplate_99fa333f3c5b5330ade004e5621af6ea56b3f8f33c828c03039c605a5fe20c14 extends Twig_Template
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
        echo "Subject: New password activation

Hello ";
        // line 3
        echo (isset($context["USERNAME"]) ? $context["USERNAME"] : null);
        echo "

You are receiving this notification because you have (or someone pretending to be you has) requested a new password be sent for your account on \"";
        // line 5
        echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
        echo "\". If you did not request this notification then please ignore it, if you keep receiving it please contact the board administrator.

To use the new password you need to activate it. To do this click the link provided below.

";
        // line 9
        echo (isset($context["U_ACTIVATE"]) ? $context["U_ACTIVATE"] : null);
        echo "

If successful you will be able to login using the following password:

Password: ";
        // line 13
        echo (isset($context["PASSWORD"]) ? $context["PASSWORD"] : null);
        echo "

You can of course change this password yourself via the profile page. If you have any difficulties please contact the board administrator.

";
        // line 17
        echo (isset($context["EMAIL_SIG"]) ? $context["EMAIL_SIG"] : null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "user_activate_passwd.txt";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  49 => 17,  42 => 13,  35 => 9,  28 => 5,  23 => 3,  19 => 1,);
    }
}
/* Subject: New password activation*/
/* */
/* Hello {USERNAME}*/
/* */
/* You are receiving this notification because you have (or someone pretending to be you has) requested a new password be sent for your account on "{SITENAME}". If you did not request this notification then please ignore it, if you keep receiving it please contact the board administrator.*/
/* */
/* To use the new password you need to activate it. To do this click the link provided below.*/
/* */
/* {U_ACTIVATE}*/
/* */
/* If successful you will be able to login using the following password:*/
/* */
/* Password: {PASSWORD}*/
/* */
/* You can of course change this password yourself via the profile page. If you have any difficulties please contact the board administrator.*/
/* */
/* {EMAIL_SIG}*/
/* */
