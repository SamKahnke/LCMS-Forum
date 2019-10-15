<?php

/* skeleton_body.html */
class __TwigTemplate_6e42002b29a0e02bd4e82e522e626af5902ba3459c47ad3be4f0f33349545e19 extends Twig_Template
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
        $this->loadTemplate("overall_header.html", "skeleton_body.html", 1)->display($context);
        // line 2
        $asset_file = "@phpbb_skeleton/editor.js";
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
        // line 3
        echo "
<script>
\tvar warningMsg = '";
        // line 5
        echo $this->env->getExtension('phpbb')->lang("SKELETON_RESERVED_NAME_WARNING_UI");
        echo "';
</script>

<h2>";
        // line 8
        echo $this->env->getExtension('phpbb')->lang("PHPBB_CREATE_SKELETON_EXT");
        echo "</h2>

<form id=\"postform\" method=\"post\" action=\"";
        // line 10
        echo (isset($context["S_POST_ACTION"]) ? $context["S_POST_ACTION"] : null);
        echo "\">
";
        // line 11
        if ((isset($context["ERROR"]) ? $context["ERROR"] : null)) {
            // line 12
            echo "<div class=\"panel\">
\t<div class=\"inner\">
\t\t<p class=\"error\">";
            // line 14
            echo (isset($context["ERROR"]) ? $context["ERROR"] : null);
            echo "</p>
\t</div>
</div>
";
        }
        // line 18
        echo "
<div class=\"panel bg1\">
\t<div class=\"inner\">
\t\t<p class=\"rightside\">";
        // line 21
        echo $this->env->getExtension('phpbb')->lang("PHPBB_SKELETON_EXT_DOCS");
        echo "</p>
\t\t<h2 class=\"solo\">";
        // line 22
        echo $this->env->getExtension('phpbb')->lang("SKELETON_TITLE_EXTENSION_INFO");
        echo "</h2>
\t\t";
        // line 23
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "extension", array()));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["extension"]) {
            // line 24
            echo "\t\t\t<div class=\"";
            if (($this->getAttribute($context["loop"], "index", array()) % 2 == 1)) {
                echo "column1";
            } else {
                echo "column2";
            }
            echo "\">
\t\t\t\t<fieldset class=\"fields2\">
\t\t\t\t\t<dl>
\t\t\t\t\t\t<dt><label for=\"";
            // line 27
            echo $this->getAttribute($context["extension"], "NAME", array());
            echo "\">";
            echo ($this->getAttribute($context["extension"], "DESC", array()) . $this->env->getExtension('phpbb')->lang("COLON"));
            echo "</label>";
            if ($this->getAttribute($context["extension"], "DESC_EXPLAIN", array())) {
                echo "<br /><span>";
                echo $this->getAttribute($context["extension"], "DESC_EXPLAIN", array());
                echo "</span>";
            }
            echo "</dt>
\t\t\t\t\t\t<dd><input type=\"text\" tabindex=\"1\" name=\"";
            // line 28
            echo $this->getAttribute($context["extension"], "NAME", array());
            echo "\" id=\"";
            echo $this->getAttribute($context["extension"], "NAME", array());
            echo "\" size=\"32\" value=\"";
            echo $this->getAttribute($context["extension"], "VALUE", array());
            echo "\" class=\"inputbox\" /></dd>
\t\t\t\t\t</dl>
\t\t\t\t</fieldset>
\t\t\t</div>
\t\t";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['extension'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 33
        echo "\t</div>
</div>

<div class=\"panel bg2\">
\t<div class=\"inner\">
\t\t<h2 class=\"solo\">";
        // line 38
        echo $this->env->getExtension('phpbb')->lang("SKELETON_TITLE_AUTHOR_INFO");
        echo "</h2>
\t\t<div class=\"skeleton-author\" style=\"overflow: hidden;\">
\t\t";
        // line 40
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "author", array()));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["author"]) {
            // line 41
            echo "\t\t\t<div class=\"";
            if (($this->getAttribute($context["loop"], "index", array()) % 2 == 1)) {
                echo "column1";
            } else {
                echo "column2";
            }
            echo "\">
\t\t\t\t<fieldset class=\"fields2\">
\t\t\t\t\t<dl>
\t\t\t\t\t\t<dt><label for=\"";
            // line 44
            echo $this->getAttribute($context["author"], "NAME", array());
            echo "\">";
            echo ($this->getAttribute($context["author"], "DESC", array()) . $this->env->getExtension('phpbb')->lang("COLON"));
            echo "</label>";
            if ($this->getAttribute($context["author"], "DESC_EXPLAIN", array())) {
                echo "<br /><span>";
                echo $this->getAttribute($context["author"], "DESC_EXPLAIN", array());
                echo "</span>";
            }
            echo "</dt>
\t\t\t\t\t\t<dd><input type=\"text\" tabindex=\"1\" name=\"";
            // line 45
            echo $this->getAttribute($context["author"], "NAME", array());
            echo "[]\" id=\"";
            echo $this->getAttribute($context["author"], "NAME", array());
            echo "\" size=\"32\" value=\"";
            echo $this->getAttribute($context["author"], "VALUE", array());
            echo "\" class=\"inputbox\" /></dd>
\t\t\t\t\t</dl>
\t\t\t\t</fieldset>
\t\t\t</div>
\t";
            // line 49
            if (((0 == $this->getAttribute($context["loop"], "index", array()) % 4) &&  !$this->getAttribute($context["loop"], "last", array()))) {
                // line 50
                echo "\t\t</div>
\t\t<hr />
\t\t<div class=\"skeleton-author\" style=\"overflow: hidden;\">
\t";
            }
            // line 54
            echo "\t\t";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['author'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 55
        echo "\t\t</div>

\t\t<input type=\"button\" class=\"button1\" id=\"skeleton-new-author\" value=\"";
        // line 57
        echo $this->env->getExtension('phpbb')->lang("SKELETON_ADD_AUTHOR");
        echo "\" />
\t</div>
</div>

<div class=\"panel bg1\">
\t<div class=\"inner\">
\t\t<h2 class=\"solo\">";
        // line 63
        echo $this->env->getExtension('phpbb')->lang("SKELETON_TITLE_REQUIREMENT_INFO");
        echo "</h2>
\t\t";
        // line 64
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "requirement", array()));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["requirement"]) {
            // line 65
            echo "\t\t<div class=\"";
            if (($this->getAttribute($context["loop"], "index", array()) % 2 == 1)) {
                echo "column1";
            } else {
                echo "column2";
            }
            echo "\">
\t\t\t<fieldset class=\"fields2\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"";
            // line 68
            echo $this->getAttribute($context["requirement"], "NAME", array());
            echo "\">";
            echo ($this->getAttribute($context["requirement"], "DESC", array()) . $this->env->getExtension('phpbb')->lang("COLON"));
            echo "</label>";
            if ($this->getAttribute($context["requirement"], "DESC_EXPLAIN", array())) {
                echo "<br /><span>";
                echo $this->getAttribute($context["requirement"], "DESC_EXPLAIN", array());
                echo "</span>";
            }
            echo "</dt>
\t\t\t\t\t<dd><input type=\"text\" tabindex=\"1\" name=\"";
            // line 69
            echo $this->getAttribute($context["requirement"], "NAME", array());
            echo "\" id=\"";
            echo $this->getAttribute($context["requirement"], "NAME", array());
            echo "\" size=\"32\" value=\"";
            echo $this->getAttribute($context["requirement"], "VALUE", array());
            echo "\" class=\"inputbox\" /></dd>
\t\t\t\t</dl>
\t\t\t</fieldset>
\t\t</div>
\t\t";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['requirement'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 74
        echo "\t</div>
</div>

<div class=\"panel bg2\">
\t<div class=\"inner\">
\t\t<h2 class=\"solo\">";
        // line 79
        echo $this->env->getExtension('phpbb')->lang("SKELETON_TITLE_COMPONENT_INFO");
        echo "</h2>
\t\t";
        // line 80
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "component", array()));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["component"]) {
            // line 81
            echo "\t\t<div class=\"";
            if (($this->getAttribute($context["loop"], "index", array()) % 2 == 1)) {
                echo "column1";
            } else {
                echo "column2";
            }
            echo "\">
\t\t\t<fieldset class=\"fields2\">
\t\t\t\t<div><label for=\"";
            // line 83
            echo $this->getAttribute($context["component"], "NAME", array());
            echo "\" title=\"";
            echo $this->getAttribute($context["component"], "DESC_EXPLAIN", array());
            echo "\"><input class=\"components\" type=\"checkbox\" name=\"";
            echo $this->getAttribute($context["component"], "NAME", array());
            echo "\" id=\"";
            echo $this->getAttribute($context["component"], "NAME", array());
            echo "\"";
            if ($this->getAttribute($context["component"], "VALUE", array())) {
                echo " checked=\"checked\"";
            }
            echo " /> <strong>";
            echo $this->getAttribute($context["component"], "DESC", array());
            echo "</strong></label></div>
\t\t\t</fieldset>
\t\t</div>
\t\t";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['component'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 87
        echo "\t</div>
\t<fieldset class=\"display-actions\">
\t\t<div><a href=\"#\" class=\"skeleton-marklist markall\">";
        // line 89
        echo $this->env->getExtension('phpbb')->lang("MARK_ALL");
        echo "</a> :: <a href=\"#\" class=\"skeleton-marklist\">";
        echo $this->env->getExtension('phpbb')->lang("UNMARK_ALL");
        echo "</a></div>
\t</fieldset>
</div>

<div class=\"panel\">
\t<div class=\"inner\">
\t\t<fieldset class=\"submit-buttons\">
\t\t\t";
        // line 96
        echo (isset($context["S_HIDDEN_FIELDS"]) ? $context["S_HIDDEN_FIELDS"] : null);
        echo "
\t\t\t<input type=\"submit\" accesskey=\"s\" name=\"submit\" value=\"";
        // line 97
        echo $this->env->getExtension('phpbb')->lang("SUBMIT");
        echo "\" class=\"button1\" />
\t\t</fieldset>
\t</div>
</div>

</form>

";
        // line 104
        $this->loadTemplate("overall_footer.html", "skeleton_body.html", 104)->display($context);
    }

    public function getTemplateName()
    {
        return "skeleton_body.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  407 => 104,  397 => 97,  393 => 96,  381 => 89,  377 => 87,  347 => 83,  337 => 81,  320 => 80,  316 => 79,  309 => 74,  286 => 69,  274 => 68,  263 => 65,  246 => 64,  242 => 63,  233 => 57,  229 => 55,  215 => 54,  209 => 50,  207 => 49,  196 => 45,  184 => 44,  173 => 41,  156 => 40,  151 => 38,  144 => 33,  121 => 28,  109 => 27,  98 => 24,  81 => 23,  77 => 22,  73 => 21,  68 => 18,  61 => 14,  57 => 12,  55 => 11,  51 => 10,  46 => 8,  40 => 5,  36 => 3,  21 => 2,  19 => 1,);
    }
}
/* {% include 'overall_header.html' %}*/
/* {% INCLUDEJS '@phpbb_skeleton/editor.js' %}*/
/* */
/* <script>*/
/* 	var warningMsg = '{{ lang('SKELETON_RESERVED_NAME_WARNING_UI') }}';*/
/* </script>*/
/* */
/* <h2>{{ lang('PHPBB_CREATE_SKELETON_EXT') }}</h2>*/
/* */
/* <form id="postform" method="post" action="{{ S_POST_ACTION }}">*/
/* {% if ERROR %}*/
/* <div class="panel">*/
/* 	<div class="inner">*/
/* 		<p class="error">{{ ERROR }}</p>*/
/* 	</div>*/
/* </div>*/
/* {% endif %}*/
/* */
/* <div class="panel bg1">*/
/* 	<div class="inner">*/
/* 		<p class="rightside">{{ lang('PHPBB_SKELETON_EXT_DOCS') }}</p>*/
/* 		<h2 class="solo">{{ lang('SKELETON_TITLE_EXTENSION_INFO') }}</h2>*/
/* 		{% for extension in loops.extension %}*/
/* 			<div class="{% if loop.index is odd %}column1{% else %}column2{% endif %}">*/
/* 				<fieldset class="fields2">*/
/* 					<dl>*/
/* 						<dt><label for="{{ extension.NAME }}">{{ extension.DESC ~ lang('COLON') }}</label>{% if extension.DESC_EXPLAIN %}<br /><span>{{ extension.DESC_EXPLAIN }}</span>{% endif %}</dt>*/
/* 						<dd><input type="text" tabindex="1" name="{{ extension.NAME }}" id="{{ extension.NAME }}" size="32" value="{{ extension.VALUE }}" class="inputbox" /></dd>*/
/* 					</dl>*/
/* 				</fieldset>*/
/* 			</div>*/
/* 		{% endfor %}*/
/* 	</div>*/
/* </div>*/
/* */
/* <div class="panel bg2">*/
/* 	<div class="inner">*/
/* 		<h2 class="solo">{{ lang('SKELETON_TITLE_AUTHOR_INFO') }}</h2>*/
/* 		<div class="skeleton-author" style="overflow: hidden;">*/
/* 		{% for author in loops.author %}*/
/* 			<div class="{% if loop.index is odd %}column1{% else %}column2{% endif %}">*/
/* 				<fieldset class="fields2">*/
/* 					<dl>*/
/* 						<dt><label for="{{ author.NAME }}">{{ author.DESC ~ lang('COLON') }}</label>{% if author.DESC_EXPLAIN %}<br /><span>{{ author.DESC_EXPLAIN }}</span>{% endif %}</dt>*/
/* 						<dd><input type="text" tabindex="1" name="{{ author.NAME }}[]" id="{{ author.NAME }}" size="32" value="{{ author.VALUE }}" class="inputbox" /></dd>*/
/* 					</dl>*/
/* 				</fieldset>*/
/* 			</div>*/
/* 	{% if loop.index is divisible by(4) and not loop.last %}*/
/* 		</div>*/
/* 		<hr />*/
/* 		<div class="skeleton-author" style="overflow: hidden;">*/
/* 	{% endif %}*/
/* 		{% endfor %}*/
/* 		</div>*/
/* */
/* 		<input type="button" class="button1" id="skeleton-new-author" value="{{ lang('SKELETON_ADD_AUTHOR') }}" />*/
/* 	</div>*/
/* </div>*/
/* */
/* <div class="panel bg1">*/
/* 	<div class="inner">*/
/* 		<h2 class="solo">{{ lang('SKELETON_TITLE_REQUIREMENT_INFO') }}</h2>*/
/* 		{% for requirement in loops.requirement %}*/
/* 		<div class="{% if loop.index is odd %}column1{% else %}column2{% endif %}">*/
/* 			<fieldset class="fields2">*/
/* 				<dl>*/
/* 					<dt><label for="{{ requirement.NAME }}">{{ requirement.DESC ~ lang('COLON') }}</label>{% if requirement.DESC_EXPLAIN %}<br /><span>{{ requirement.DESC_EXPLAIN }}</span>{% endif %}</dt>*/
/* 					<dd><input type="text" tabindex="1" name="{{ requirement.NAME }}" id="{{ requirement.NAME }}" size="32" value="{{ requirement.VALUE }}" class="inputbox" /></dd>*/
/* 				</dl>*/
/* 			</fieldset>*/
/* 		</div>*/
/* 		{% endfor %}*/
/* 	</div>*/
/* </div>*/
/* */
/* <div class="panel bg2">*/
/* 	<div class="inner">*/
/* 		<h2 class="solo">{{ lang('SKELETON_TITLE_COMPONENT_INFO') }}</h2>*/
/* 		{% for component in loops.component %}*/
/* 		<div class="{% if loop.index is odd %}column1{% else %}column2{% endif %}">*/
/* 			<fieldset class="fields2">*/
/* 				<div><label for="{{ component.NAME }}" title="{{ component.DESC_EXPLAIN }}"><input class="components" type="checkbox" name="{{ component.NAME }}" id="{{ component.NAME }}"{% if component.VALUE %} checked="checked"{% endif %} /> <strong>{{ component.DESC }}</strong></label></div>*/
/* 			</fieldset>*/
/* 		</div>*/
/* 		{% endfor %}*/
/* 	</div>*/
/* 	<fieldset class="display-actions">*/
/* 		<div><a href="#" class="skeleton-marklist markall">{{ lang('MARK_ALL') }}</a> :: <a href="#" class="skeleton-marklist">{{ lang('UNMARK_ALL') }}</a></div>*/
/* 	</fieldset>*/
/* </div>*/
/* */
/* <div class="panel">*/
/* 	<div class="inner">*/
/* 		<fieldset class="submit-buttons">*/
/* 			{{ S_HIDDEN_FIELDS }}*/
/* 			<input type="submit" accesskey="s" name="submit" value="{{ lang('SUBMIT') }}" class="button1" />*/
/* 		</fieldset>*/
/* 	</div>*/
/* </div>*/
/* */
/* </form>*/
/* */
/* {% include 'overall_footer.html' %}*/
/* */
