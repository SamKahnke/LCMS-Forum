<?php

/* acp_avatar_options_upload.html */
class __TwigTemplate_16506be45921f6ed4349a2fc4a461ad8d55187c7a3aa625dca07d08aa5059e83 extends Twig_Template
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
        echo "<dl>
\t<dt><label for=\"avatar_upload_file\">";
        // line 2
        echo $this->env->getExtension('phpbb')->lang("UPLOAD_AVATAR_FILE");
        echo $this->env->getExtension('phpbb')->lang("COLON");
        echo "</label></dt>
\t<dd><input type=\"hidden\" name=\"MAX_FILE_SIZE\" value=\"";
        // line 3
        echo (isset($context["AVATAR_UPLOAD_SIZE"]) ? $context["AVATAR_UPLOAD_SIZE"] : null);
        echo "\" /><input type=\"file\" name=\"avatar_upload_file\" id=\"avatar_upload_file\" class=\"inputbox autowidth\" /></dd>
</dl>

";
        // line 6
        if ((isset($context["S_UPLOAD_AVATAR_URL"]) ? $context["S_UPLOAD_AVATAR_URL"] : null)) {
            // line 7
            echo "\t<dl>
\t\t<dt><label for=\"avatar_upload_url\">";
            // line 8
            echo $this->env->getExtension('phpbb')->lang("UPLOAD_AVATAR_URL");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</label><br /><span>";
            echo $this->env->getExtension('phpbb')->lang("UPLOAD_AVATAR_URL_EXPLAIN");
            echo "</span></dt>
\t\t<dd><input type=\"url\" name=\"avatar_upload_url\" id=\"avatar_upload_url\" value=\"\" class=\"inputbox\" /></dd>
\t</dl>
";
        }
    }

    public function getTemplateName()
    {
        return "acp_avatar_options_upload.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  38 => 8,  35 => 7,  33 => 6,  27 => 3,  22 => 2,  19 => 1,);
    }
}
/* <dl>*/
/* 	<dt><label for="avatar_upload_file">{L_UPLOAD_AVATAR_FILE}{L_COLON}</label></dt>*/
/* 	<dd><input type="hidden" name="MAX_FILE_SIZE" value="{AVATAR_UPLOAD_SIZE}" /><input type="file" name="avatar_upload_file" id="avatar_upload_file" class="inputbox autowidth" /></dd>*/
/* </dl>*/
/* */
/* <!-- IF S_UPLOAD_AVATAR_URL -->*/
/* 	<dl>*/
/* 		<dt><label for="avatar_upload_url">{L_UPLOAD_AVATAR_URL}{L_COLON}</label><br /><span>{L_UPLOAD_AVATAR_URL_EXPLAIN}</span></dt>*/
/* 		<dd><input type="url" name="avatar_upload_url" id="avatar_upload_url" value="" class="inputbox" /></dd>*/
/* 	</dl>*/
/* <!-- ENDIF -->*/
/* */
