<?php

/* overall_footer.html */
class __TwigTemplate_3387cfcf3c3d61aa315c87c2149d820640bb66c4d21bf8fb472e2f982e9fab2c extends Twig_Template
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
        echo "\t\t";
        // line 2
        echo "\t</div>

";
        // line 4
        // line 5
        echo "
";
        // line 6
        if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "WRAP_FOOTER", array()) == 0)) {
            // line 7
            echo "\t";
            $location = "navbar_footer.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("navbar_footer.html", "overall_footer.html", 7)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
            // line 8
            echo "</div>
";
        }
        // line 10
        echo "
<div id=\"page-footer\" class=\"page-width\" role=\"contentinfo\">
\t";
        // line 12
        if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "WRAP_FOOTER", array()) == 1)) {
            // line 13
            echo "\t\t";
            $location = "navbar_footer.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("navbar_footer.html", "overall_footer.html", 13)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
            // line 14
            echo "\t";
        }
        // line 15
        echo "
\t<div class=\"copyright\">
\t\t";
        // line 17
        // line 18
        echo "\t\t";
        echo (isset($context["CREDIT_LINE"]) ? $context["CREDIT_LINE"] : null);
        echo "
\t\t<br />Style by <a href=\"http://www.artodia.com/\">Arty</a>
\t\t";
        // line 20
        if ((isset($context["TRANSLATION_INFO"]) ? $context["TRANSLATION_INFO"] : null)) {
            echo "<br />";
            echo (isset($context["TRANSLATION_INFO"]) ? $context["TRANSLATION_INFO"] : null);
        }
        // line 21
        echo "\t\t";
        // line 22
        echo "\t\t";
        if ((isset($context["DEBUG_OUTPUT"]) ? $context["DEBUG_OUTPUT"] : null)) {
            echo "<br />";
            echo (isset($context["DEBUG_OUTPUT"]) ? $context["DEBUG_OUTPUT"] : null);
        }
        // line 23
        echo "\t\t";
        if ((isset($context["U_ACP"]) ? $context["U_ACP"] : null)) {
            echo "<br /><strong><a href=\"";
            echo (isset($context["U_ACP"]) ? $context["U_ACP"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("ACP");
            echo "</a></strong>";
        }
        // line 24
        echo "\t</div>

\t<div id=\"darkenwrapper\" data-ajax-error-title=\"";
        // line 26
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TITLE");
        echo "\" data-ajax-error-text=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT");
        echo "\" data-ajax-error-text-abort=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT_ABORT");
        echo "\" data-ajax-error-text-timeout=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT_TIMEOUT");
        echo "\" data-ajax-error-text-parsererror=\"";
        echo $this->env->getExtension('phpbb')->lang("AJAX_ERROR_TEXT_PARSERERROR");
        echo "\">
\t\t<div id=\"darken\">&nbsp;</div>
\t</div>

\t<div id=\"phpbb_alert\" class=\"phpbb_alert\" data-l-err=\"";
        // line 30
        echo $this->env->getExtension('phpbb')->lang("ERROR");
        echo "\" data-l-timeout-processing-req=\"";
        echo $this->env->getExtension('phpbb')->lang("TIMEOUT_PROCESSING_REQ");
        echo "\">
\t\t<a href=\"#\" class=\"alert_close\"></a>
\t\t<h3 class=\"alert_title\">&nbsp;</h3><p class=\"alert_text\"></p>
\t</div>
\t<div id=\"phpbb_confirm\" class=\"phpbb_alert\">
\t\t<a href=\"#\" class=\"alert_close\"></a>
\t\t<div class=\"alert_text\"></div>
\t</div>
</div>

";
        // line 40
        if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "WRAP_FOOTER", array()) == 1)) {
            // line 41
            echo "</div>
";
        }
        // line 43
        echo "
<div>
\t<a id=\"bottom\" class=\"anchor\" accesskey=\"z\"></a>
\t";
        // line 46
        if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
            echo (isset($context["RUN_CRON_TASK"]) ? $context["RUN_CRON_TASK"] : null);
        }
        // line 47
        echo "</div>

<script type=\"text/javascript\" src=\"";
        // line 49
        echo (isset($context["T_JQUERY_LINK"]) ? $context["T_JQUERY_LINK"] : null);
        echo "\"></script>
";
        // line 50
        if ((isset($context["S_ALLOW_CDN"]) ? $context["S_ALLOW_CDN"] : null)) {
            echo "<script type=\"text/javascript\">window.jQuery || document.write('\\x3Cscript src=\"";
            echo (isset($context["T_ASSETS_PATH"]) ? $context["T_ASSETS_PATH"] : null);
            echo "/javascript/jquery.min.js?assets_version=";
            echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
            echo "\">\\x3C/script>');</script>";
        }
        // line 51
        echo "<script type=\"text/javascript\" src=\"";
        echo (isset($context["T_ASSETS_PATH"]) ? $context["T_ASSETS_PATH"] : null);
        echo "/javascript/core.js?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\"></script>
";
        // line 52
        $asset_file = "forum_fn.js";
        $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper());
        if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
            $asset_path = $asset->get_path();            $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
            if (!file_exists($local_file)) {
                $local_file = $this->getEnvironment()->findTemplate($asset_path);
                $asset->set_path($local_file, true);
            $asset->add_assets_version('3');
            $asset_file = $asset->get_url();
            }
        }
        $context['definition']->append('SCRIPTS', '<script type="text/javascript" src="' . $asset_file. '"></script>

');
        // line 53
        $asset_file = "ajax.js";
        $asset = new \phpbb\template\asset($asset_file, $this->getEnvironment()->get_path_helper());
        if (substr($asset_file, 0, 2) !== './' && $asset->is_relative()) {
            $asset_path = $asset->get_path();            $local_file = $this->getEnvironment()->get_phpbb_root_path() . $asset_path;
            if (!file_exists($local_file)) {
                $local_file = $this->getEnvironment()->findTemplate($asset_path);
                $asset->set_path($local_file, true);
            $asset->add_assets_version('3');
            $asset_file = $asset->get_url();
            }
        }
        $context['definition']->append('SCRIPTS', '<script type="text/javascript" src="' . $asset_file. '"></script>

');
        // line 54
        echo "
";
        // line 55
        // line 56
        echo "
";
        // line 57
        if ((isset($context["S_PLUPLOAD"]) ? $context["S_PLUPLOAD"] : null)) {
            $location = "plupload.html";
            $namespace = false;
            if (strpos($location, '@') === 0) {
                $namespace = substr($location, 1, strpos($location, '/') - 1);
                $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
            }
            $this->loadTemplate("plupload.html", "overall_footer.html", 57)->display($context);
            if ($namespace) {
                $this->env->setNamespaceLookUpOrder($previous_look_up_order);
            }
        }
        // line 58
        echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SCRIPTS", array());
        echo "

";
        // line 60
        // line 61
        echo "
</body>
</html>
";
    }

    public function getTemplateName()
    {
        return "overall_footer.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  232 => 61,  231 => 60,  226 => 58,  212 => 57,  209 => 56,  208 => 55,  205 => 54,  190 => 53,  175 => 52,  168 => 51,  160 => 50,  156 => 49,  152 => 47,  148 => 46,  143 => 43,  139 => 41,  137 => 40,  122 => 30,  107 => 26,  103 => 24,  94 => 23,  88 => 22,  86 => 21,  81 => 20,  75 => 18,  74 => 17,  70 => 15,  67 => 14,  54 => 13,  52 => 12,  48 => 10,  44 => 8,  31 => 7,  29 => 6,  26 => 5,  25 => 4,  21 => 2,  19 => 1,);
    }
}
/* 		<!-- EVENT overall_footer_content_after -->*/
/* 	</div>*/
/* */
/* <!-- EVENT overall_footer_page_body_after -->*/
/* */
/* <!-- IF $WRAP_FOOTER == 0 -->*/
/* 	<!-- INCLUDE navbar_footer.html -->*/
/* </div>*/
/* <!-- ENDIF -->*/
/* */
/* <div id="page-footer" class="page-width" role="contentinfo">*/
/* 	<!-- IF $WRAP_FOOTER == 1 -->*/
/* 		<!-- INCLUDE navbar_footer.html -->*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<div class="copyright">*/
/* 		<!-- EVENT overall_footer_copyright_prepend -->*/
/* 		{CREDIT_LINE}*/
/* 		<br />Style by <a href="http://www.artodia.com/">Arty</a>*/
/* 		<!-- IF TRANSLATION_INFO --><br />{TRANSLATION_INFO}<!-- ENDIF -->*/
/* 		<!-- EVENT overall_footer_copyright_append -->*/
/* 		<!-- IF DEBUG_OUTPUT --><br />{DEBUG_OUTPUT}<!-- ENDIF -->*/
/* 		<!-- IF U_ACP --><br /><strong><a href="{U_ACP}">{L_ACP}</a></strong><!-- ENDIF -->*/
/* 	</div>*/
/* */
/* 	<div id="darkenwrapper" data-ajax-error-title="{L_AJAX_ERROR_TITLE}" data-ajax-error-text="{L_AJAX_ERROR_TEXT}" data-ajax-error-text-abort="{L_AJAX_ERROR_TEXT_ABORT}" data-ajax-error-text-timeout="{L_AJAX_ERROR_TEXT_TIMEOUT}" data-ajax-error-text-parsererror="{L_AJAX_ERROR_TEXT_PARSERERROR}">*/
/* 		<div id="darken">&nbsp;</div>*/
/* 	</div>*/
/* */
/* 	<div id="phpbb_alert" class="phpbb_alert" data-l-err="{L_ERROR}" data-l-timeout-processing-req="{L_TIMEOUT_PROCESSING_REQ}">*/
/* 		<a href="#" class="alert_close"></a>*/
/* 		<h3 class="alert_title">&nbsp;</h3><p class="alert_text"></p>*/
/* 	</div>*/
/* 	<div id="phpbb_confirm" class="phpbb_alert">*/
/* 		<a href="#" class="alert_close"></a>*/
/* 		<div class="alert_text"></div>*/
/* 	</div>*/
/* </div>*/
/* */
/* <!-- IF $WRAP_FOOTER == 1 -->*/
/* </div>*/
/* <!-- ENDIF -->*/
/* */
/* <div>*/
/* 	<a id="bottom" class="anchor" accesskey="z"></a>*/
/* 	<!-- IF not S_IS_BOT -->{RUN_CRON_TASK}<!-- ENDIF -->*/
/* </div>*/
/* */
/* <script type="text/javascript" src="{T_JQUERY_LINK}"></script>*/
/* <!-- IF S_ALLOW_CDN --><script type="text/javascript">window.jQuery || document.write('\x3Cscript src="{T_ASSETS_PATH}/javascript/jquery.min.js?assets_version={T_ASSETS_VERSION}">\x3C/script>');</script><!-- ENDIF -->*/
/* <script type="text/javascript" src="{T_ASSETS_PATH}/javascript/core.js?assets_version={T_ASSETS_VERSION}"></script>*/
/* <!-- INCLUDEJS forum_fn.js -->*/
/* <!-- INCLUDEJS ajax.js -->*/
/* */
/* <!-- EVENT overall_footer_after -->*/
/* */
/* <!-- IF S_PLUPLOAD --><!-- INCLUDE plupload.html --><!-- ENDIF -->*/
/* {$SCRIPTS}*/
/* */
/* <!-- EVENT overall_footer_body_after -->*/
/* */
/* </body>*/
/* </html>*/
/* */
