<?php

/* ucp_remind.html */
class __TwigTemplate_28ffb4de2a741432e67a49374584bd2b646a3c5ec4fe7313b4b149edff639c7f extends Twig_Template
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
        $location = "overall_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_header.html", "ucp_remind.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<form action=\"";
        // line 3
        echo (isset($context["S_PROFILE_ACTION"]) ? $context["S_PROFILE_ACTION"] : null);
        echo "\" method=\"post\" id=\"remind\">

<div class=\"panel\">
\t<div class=\"inner\">

\t<div class=\"content\">
\t\t<h2>";
        // line 9
        echo $this->env->getExtension('phpbb')->lang("SEND_PASSWORD");
        echo "</h2>

\t\t<fieldset>
\t\t<dl>
\t\t\t<dt><label for=\"username\">";
        // line 13
        echo $this->env->getExtension('phpbb')->lang("USERNAME");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t\t\t<dd><input class=\"inputbox narrow\" type=\"text\" name=\"username\" id=\"username\" size=\"25\" /></dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt><label for=\"email\">";
        // line 17
        echo $this->env->getExtension('phpbb')->lang("EMAIL_ADDRESS");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label><br /><span>";
        echo $this->env->getExtension('phpbb')->lang("EMAIL_REMIND");
        echo "</span></dt>
\t\t\t<dd><input class=\"inputbox narrow\" type=\"email\" name=\"email\" id=\"email\" size=\"25\" maxlength=\"100\" /></dd>
\t\t</dl>
\t\t<dl>
\t\t\t<dt>&nbsp;</dt>
\t\t\t<dd>";
        // line 22
        echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
        echo "<input type=\"submit\" name=\"submit\" id=\"submit\" class=\"button1\" value=\"";
        echo $this->env->getExtension('phpbb')->lang("SUBMIT");
        echo "\" tabindex=\"2\" />&nbsp; <input type=\"reset\" value=\"";
        echo $this->env->getExtension('phpbb')->lang("RESET");
        echo "\" name=\"reset\" class=\"button2\" /></dd>
\t\t</dl>
\t\t";
        // line 24
        echo (isset($context["S_FORM_TOKEN"]) ? $context["S_FORM_TOKEN"] : null);
        echo "
\t\t</fieldset>
\t</div>

\t</div>
</div>
</form>

";
        // line 32
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "ucp_remind.html", 32)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "ucp_remind.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  89 => 32,  78 => 24,  69 => 22,  58 => 17,  50 => 13,  43 => 9,  34 => 3,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE overall_header.html -->*/
/* */
/* <form action="{S_PROFILE_ACTION}" method="post" id="remind">*/
/* */
/* <div class="panel">*/
/* 	<div class="inner">*/
/* */
/* 	<div class="content">*/
/* 		<h2>{L_SEND_PASSWORD}</h2>*/
/* */
/* 		<fieldset>*/
/* 		<dl>*/
/* 			<dt><label for="username">{L_USERNAME}{L_COLON}</label></dt>*/
/* 			<dd><input class="inputbox narrow" type="text" name="username" id="username" size="25" /></dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt><label for="email">{L_EMAIL_ADDRESS}{L_COLON}</label><br /><span>{L_EMAIL_REMIND}</span></dt>*/
/* 			<dd><input class="inputbox narrow" type="email" name="email" id="email" size="25" maxlength="100" /></dd>*/
/* 		</dl>*/
/* 		<dl>*/
/* 			<dt>&nbsp;</dt>*/
/* 			<dd>{S_HIDDEN_FIELDS}<input type="submit" name="submit" id="submit" class="button1" value="{L_SUBMIT}" tabindex="2" />&nbsp; <input type="reset" value="{L_RESET}" name="reset" class="button2" /></dd>*/
/* 		</dl>*/
/* 		{S_FORM_TOKEN}*/
/* 		</fieldset>*/
/* 	</div>*/
/* */
/* 	</div>*/
/* </div>*/
/* </form>*/
/* */
/* <!-- INCLUDE overall_footer.html -->*/
/* */
