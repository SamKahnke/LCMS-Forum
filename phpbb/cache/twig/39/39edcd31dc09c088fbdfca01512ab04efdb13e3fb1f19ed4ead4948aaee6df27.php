<?php

/* overall_header.html */
class __TwigTemplate_1cefb9508d126ce0ea8878e43bd44e1a00695ca4743d94a9cac5d100adc856f3 extends Twig_Template
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
        echo "<!DOCTYPE html>
<html dir=\"";
        // line 2
        echo (isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null);
        echo "\" lang=\"";
        echo (isset($context["S_USER_LANG"]) ? $context["S_USER_LANG"] : null);
        echo "\">
<head>
<meta charset=\"utf-8\" />
<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />
";
        // line 7
        echo (isset($context["META"]) ? $context["META"] : null);
        echo "
<title>";
        // line 8
        if ((isset($context["UNREAD_NOTIFICATIONS_COUNT"]) ? $context["UNREAD_NOTIFICATIONS_COUNT"] : null)) {
            echo "(";
            echo (isset($context["UNREAD_NOTIFICATIONS_COUNT"]) ? $context["UNREAD_NOTIFICATIONS_COUNT"] : null);
            echo ") ";
        }
        if (( !(isset($context["S_VIEWTOPIC"]) ? $context["S_VIEWTOPIC"] : null) &&  !(isset($context["S_VIEWFORUM"]) ? $context["S_VIEWFORUM"] : null))) {
            echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
            echo " - ";
        }
        if ((isset($context["S_IN_MCP"]) ? $context["S_IN_MCP"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("MCP");
            echo " - ";
        } elseif ((isset($context["S_IN_UCP"]) ? $context["S_IN_UCP"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("UCP");
            echo " - ";
        }
        echo (isset($context["PAGE_TITLE"]) ? $context["PAGE_TITLE"] : null);
        if (((isset($context["S_VIEWTOPIC"]) ? $context["S_VIEWTOPIC"] : null) || (isset($context["S_VIEWFORUM"]) ? $context["S_VIEWFORUM"] : null))) {
            echo " - ";
            echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
        }
        echo "</title>

";
        // line 10
        $location = "_style_config.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("_style_config.html", "overall_header.html", 10)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 11
        echo "
";
        // line 12
        if ((isset($context["S_ENABLE_FEEDS"]) ? $context["S_ENABLE_FEEDS"] : null)) {
            // line 13
            echo "\t";
            if ((isset($context["S_ENABLE_FEEDS_OVERALL"]) ? $context["S_ENABLE_FEEDS_OVERALL"] : null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "\">";
            }
            // line 14
            echo "\t";
            if ((isset($context["S_ENABLE_FEEDS_NEWS"]) ? $context["S_ENABLE_FEEDS_NEWS"] : null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("FEED_NEWS");
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?mode=news\">";
            }
            // line 15
            echo "\t";
            if ((isset($context["S_ENABLE_FEEDS_FORUMS"]) ? $context["S_ENABLE_FEEDS_FORUMS"] : null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("ALL_FORUMS");
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?mode=forums\">";
            }
            // line 16
            echo "\t";
            if ((isset($context["S_ENABLE_FEEDS_TOPICS"]) ? $context["S_ENABLE_FEEDS_TOPICS"] : null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("FEED_TOPICS_NEW");
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?mode=topics\">";
            }
            // line 17
            echo "\t";
            if ((isset($context["S_ENABLE_FEEDS_TOPICS_ACTIVE"]) ? $context["S_ENABLE_FEEDS_TOPICS_ACTIVE"] : null)) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("FEED_TOPICS_ACTIVE");
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?mode=topics_active\">";
            }
            // line 18
            echo "\t";
            if (((isset($context["S_ENABLE_FEEDS_FORUM"]) ? $context["S_ENABLE_FEEDS_FORUM"] : null) && (isset($context["S_FORUM_ID"]) ? $context["S_FORUM_ID"] : null))) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("FORUM");
                echo " - ";
                echo (isset($context["FORUM_NAME"]) ? $context["FORUM_NAME"] : null);
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?f=";
                echo (isset($context["S_FORUM_ID"]) ? $context["S_FORUM_ID"] : null);
                echo "\">";
            }
            // line 19
            echo "\t";
            if (((isset($context["S_ENABLE_FEEDS_TOPIC"]) ? $context["S_ENABLE_FEEDS_TOPIC"] : null) && (isset($context["S_TOPIC_ID"]) ? $context["S_TOPIC_ID"] : null))) {
                echo "<link rel=\"alternate\" type=\"application/atom+xml\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("FEED");
                echo " - ";
                echo $this->env->getExtension('phpbb')->lang("TOPIC");
                echo " - ";
                echo (isset($context["TOPIC_TITLE"]) ? $context["TOPIC_TITLE"] : null);
                echo "\" href=\"";
                echo (isset($context["U_FEED"]) ? $context["U_FEED"] : null);
                echo "?f=";
                echo (isset($context["S_FORUM_ID"]) ? $context["S_FORUM_ID"] : null);
                echo "&amp;t=";
                echo (isset($context["S_TOPIC_ID"]) ? $context["S_TOPIC_ID"] : null);
                echo "\">";
            }
            // line 20
            echo "\t";
        }
        // line 22
        echo "
";
        // line 23
        if ((isset($context["U_CANONICAL"]) ? $context["U_CANONICAL"] : null)) {
            // line 24
            echo "\t<link rel=\"canonical\" href=\"";
            echo (isset($context["U_CANONICAL"]) ? $context["U_CANONICAL"] : null);
            echo "\">
";
        }
        // line 26
        echo "
";
        // line 27
        if ((isset($context["S_ALLOW_CDN"]) ? $context["S_ALLOW_CDN"] : null)) {
            // line 28
            echo "<script>
\tWebFontConfig = {
\t\tgoogle: {
\t\t\tfamilies: ['Open+Sans:600:cyrillic-ext,latin,greek-ext,greek,vietnamese,latin-ext,cyrillic']
\t\t}
\t};

\t(function(d) {
\t\tvar wf = d.createElement('script'), s = d.scripts[0];
\t\twf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js';
\t\twf.async = true;
\t\ts.parentNode.insertBefore(wf, s);
\t})(document);
</script>
\t<link href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css\" rel=\"stylesheet\">
";
        } else {
            // line 44
            echo "\t<link href=\"";
            echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
            echo "/fonts/font-awesome-4.5.0/css/font-awesome.min.css\" rel=\"stylesheet\">
";
        }
        // line 46
        echo "<link href=\"";
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/fonts/glyphicons-pro-1.9.2/css/glyphicons.css\" rel=\"stylesheet\">

<link href=\"";
        // line 48
        echo (isset($context["T_STYLESHEET_LINK"]) ? $context["T_STYLESHEET_LINK"] : null);
        echo "\" rel=\"stylesheet\">

";
        // line 50
        if (((isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null) == "rtl")) {
            // line 51
            echo "\t<link href=\"";
            echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
            echo "/bidi.css?assets_version=";
            echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
            echo "\" rel=\"stylesheet\">
";
        }
        // line 53
        echo "
";
        // line 54
        if ((isset($context["S_PLUPLOAD"]) ? $context["S_PLUPLOAD"] : null)) {
            // line 55
            echo "\t<link href=\"";
            echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
            echo "/plupload.css?assets_version=";
            echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
            echo "\" rel=\"stylesheet\">
";
        }
        // line 57
        echo "
<!--[if lte IE 9]>
\t<link href=\"";
        // line 59
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/tweaks.css?assets_version=";
        echo (isset($context["T_ASSETS_VERSION"]) ? $context["T_ASSETS_VERSION"] : null);
        echo "\" rel=\"stylesheet\">
<![endif]-->

";
        // line 62
        // line 63
        echo "
";
        // line 64
        echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "STYLESHEETS", array());
        echo "

";
        // line 66
        // line 67
        echo "
</head>
<body id=\"phpbb\" class=\"nojs notouch section-";
        // line 69
        echo (isset($context["SCRIPT_NAME"]) ? $context["SCRIPT_NAME"] : null);
        echo " ";
        echo (isset($context["S_CONTENT_DIRECTION"]) ? $context["S_CONTENT_DIRECTION"] : null);
        echo " ";
        echo (isset($context["BODY_CLASS"]) ? $context["BODY_CLASS"] : null);
        echo "\" data-online-text=\"";
        echo addslashes($this->env->getExtension('phpbb')->lang("ONLINE"));
        echo "\">

";
        // line 71
        // line 72
        echo "
";
        // line 73
        if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "WRAP_HEADER", array()) == 1)) {
            // line 74
            echo "<div id=\"wrap\" class=\"page-width\">
";
        }
        // line 76
        echo "\t<a id=\"top\" class=\"anchor\" accesskey=\"t\"></a>
\t<div id=\"page-header\" class=\"page-width\">
\t\t<div class=\"headerbar\" role=\"banner\">
\t\t\t<div class=\"inner\">

\t\t\t<div id=\"site-description\">
\t\t\t\t<a id=\"logo\" class=\"logo\" href=\"";
        // line 82
        if ((isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null)) {
            echo (isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null);
        } else {
            echo (isset($context["U_INDEX"]) ? $context["U_INDEX"] : null);
        }
        echo "\" title=\"";
        if ((isset($context["U_SITE_HOME"]) ? $context["U_SITE_HOME"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("SITE_HOME");
        } else {
            echo $this->env->getExtension('phpbb')->lang("INDEX");
        }
        echo "\"><img src=\"";
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/images/logo.png\" data-src-hd=\"";
        echo (isset($context["T_THEME_PATH"]) ? $context["T_THEME_PATH"] : null);
        echo "/images/logo_hd.png\" /></a>
\t\t\t\t<p class=\"sitename\">";
        // line 83
        echo (isset($context["SITENAME"]) ? $context["SITENAME"] : null);
        echo "</p>
\t\t\t\t<p>";
        // line 84
        echo (isset($context["SITE_DESCRIPTION"]) ? $context["SITE_DESCRIPTION"] : null);
        echo "</p>
\t\t\t\t<p class=\"skiplink\"><a href=\"#start_here\">";
        // line 85
        echo $this->env->getExtension('phpbb')->lang("SKIP");
        echo "</a></p>
\t\t\t</div>

\t\t\t";
        // line 88
        // line 89
        echo "\t\t\t";
        if (((isset($context["S_DISPLAY_SEARCH"]) ? $context["S_DISPLAY_SEARCH"] : null) &&  !(isset($context["S_IN_SEARCH"]) ? $context["S_IN_SEARCH"] : null))) {
            // line 90
            echo "\t\t\t";
            ob_start();
            // line 91
            echo "\t\t\t<div id=\"search-box\" class=\"search-box search-header\" role=\"search\">
\t\t\t\t<form action=\"";
            // line 92
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" method=\"get\" id=\"search\">
\t\t\t\t<fieldset>
\t\t\t\t\t<input name=\"keywords\" id=\"keywords\" type=\"search\" maxlength=\"128\" title=\"";
            // line 94
            echo $this->env->getExtension('phpbb')->lang("SEARCH_KEYWORDS");
            echo "\" class=\"inputbox search tiny\" size=\"20\" value=\"";
            echo (isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null);
            echo "\" placeholder=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_MINI");
            echo "\" />
\t\t\t\t\t<button class=\"button icon-button search-icon\" type=\"submit\" title=\"";
            // line 95
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH");
            echo "</button>
\t\t\t\t\t<a href=\"";
            // line 96
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" class=\"button icon-button search-adv-icon\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "</a>
\t\t\t\t\t";
            // line 97
            echo (isset($context["S_SEARCH_HIDDEN_FIELDS"]) ? $context["S_SEARCH_HIDDEN_FIELDS"] : null);
            echo "
\t\t\t\t</fieldset>
\t\t\t\t</form>
\t\t\t</div>
\t\t\t";
            $value = ('' === $value = ob_get_clean()) ? '' : new \Twig_Markup($value, $this->env->getCharset());
            $context['definition']->set('SEARCH_BOX', $value);
            // line 102
            echo "\t\t\t";
            if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_IN_NAVBAR", array()) == 0)) {
                echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "SEARCH_BOX", array());
            }
            // line 103
            echo "\t\t\t";
        }
        // line 104
        echo "
\t\t\t</div>
\t\t</div>

";
        // line 108
        if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "WRAP_HEADER", array()) == 2)) {
            // line 109
            echo "</div>
<div id=\"wrap\" class=\"page-width\">
<div>
";
        }
        // line 113
        echo "
\t\t";
        // line 114
        // line 115
        echo "\t\t";
        $location = "navbar_header.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("navbar_header.html", "overall_header.html", 115)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 116
        echo "\t</div>

";
        // line 118
        if (($this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "WRAP_HEADER", array()) == 0)) {
            // line 119
            echo "<div id=\"wrap\" class=\"page-width\">
";
        }
        // line 121
        echo "
\t";
        // line 122
        // line 123
        echo "
\t<a id=\"start_here\" class=\"anchor\"></a>
\t<div id=\"page-body\" role=\"main\">
\t\t";
        // line 126
        echo $this->getAttribute((isset($context["definition"]) ? $context["definition"] : null), "BREADCRUMBS", array());
        echo "
\t\t";
        // line 127
        if ((((isset($context["S_BOARD_DISABLED"]) ? $context["S_BOARD_DISABLED"] : null) && (isset($context["S_USER_LOGGED_IN"]) ? $context["S_USER_LOGGED_IN"] : null)) && ((isset($context["U_MCP"]) ? $context["U_MCP"] : null) || (isset($context["U_ACP"]) ? $context["U_ACP"] : null)))) {
            // line 128
            echo "\t\t<div id=\"information\" class=\"rules\">
\t\t\t<div class=\"inner\">
\t\t\t\t<strong>";
            // line 130
            echo $this->env->getExtension('phpbb')->lang("INFORMATION");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo "</strong> ";
            echo $this->env->getExtension('phpbb')->lang("BOARD_DISABLED");
            echo "
\t\t\t</div>
\t\t</div>
\t\t";
        }
        // line 134
        echo "
\t\t";
        // line 135
    }

    public function getTemplateName()
    {
        return "overall_header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  456 => 135,  453 => 134,  443 => 130,  439 => 128,  437 => 127,  433 => 126,  428 => 123,  427 => 122,  424 => 121,  420 => 119,  418 => 118,  414 => 116,  401 => 115,  400 => 114,  397 => 113,  391 => 109,  389 => 108,  383 => 104,  380 => 103,  375 => 102,  366 => 97,  358 => 96,  352 => 95,  344 => 94,  339 => 92,  336 => 91,  333 => 90,  330 => 89,  329 => 88,  323 => 85,  319 => 84,  315 => 83,  297 => 82,  289 => 76,  285 => 74,  283 => 73,  280 => 72,  279 => 71,  268 => 69,  264 => 67,  263 => 66,  258 => 64,  255 => 63,  254 => 62,  246 => 59,  242 => 57,  234 => 55,  232 => 54,  229 => 53,  221 => 51,  219 => 50,  214 => 48,  208 => 46,  202 => 44,  184 => 28,  182 => 27,  179 => 26,  173 => 24,  171 => 23,  168 => 22,  165 => 20,  148 => 19,  133 => 18,  122 => 17,  111 => 16,  100 => 15,  89 => 14,  78 => 13,  76 => 12,  73 => 11,  61 => 10,  36 => 8,  32 => 7,  22 => 2,  19 => 1,);
    }
}
/* <!DOCTYPE html>*/
/* <html dir="{S_CONTENT_DIRECTION}" lang="{S_USER_LANG}">*/
/* <head>*/
/* <meta charset="utf-8" />*/
/* <meta http-equiv="X-UA-Compatible" content="IE=edge" />*/
/* <meta name="viewport" content="width=device-width, initial-scale=1" />*/
/* {META}*/
/* <title><!-- IF UNREAD_NOTIFICATIONS_COUNT -->({UNREAD_NOTIFICATIONS_COUNT}) <!-- ENDIF --><!-- IF not S_VIEWTOPIC and not S_VIEWFORUM -->{SITENAME} - <!-- ENDIF --><!-- IF S_IN_MCP -->{L_MCP} - <!-- ELSEIF S_IN_UCP -->{L_UCP} - <!-- ENDIF -->{PAGE_TITLE}<!-- IF S_VIEWTOPIC or S_VIEWFORUM --> - {SITENAME}<!-- ENDIF --></title>*/
/* */
/* <!-- INCLUDE _style_config.html -->*/
/* */
/* <!-- IF S_ENABLE_FEEDS -->*/
/* 	<!-- IF S_ENABLE_FEEDS_OVERALL --><link rel="alternate" type="application/atom+xml" title="{L_FEED} - {SITENAME}" href="{U_FEED}"><!-- ENDIF -->*/
/* 	<!-- IF S_ENABLE_FEEDS_NEWS --><link rel="alternate" type="application/atom+xml" title="{L_FEED} - {L_FEED_NEWS}" href="{U_FEED}?mode=news"><!-- ENDIF -->*/
/* 	<!-- IF S_ENABLE_FEEDS_FORUMS --><link rel="alternate" type="application/atom+xml" title="{L_FEED} - {L_ALL_FORUMS}" href="{U_FEED}?mode=forums"><!-- ENDIF -->*/
/* 	<!-- IF S_ENABLE_FEEDS_TOPICS --><link rel="alternate" type="application/atom+xml" title="{L_FEED} - {L_FEED_TOPICS_NEW}" href="{U_FEED}?mode=topics"><!-- ENDIF -->*/
/* 	<!-- IF S_ENABLE_FEEDS_TOPICS_ACTIVE --><link rel="alternate" type="application/atom+xml" title="{L_FEED} - {L_FEED_TOPICS_ACTIVE}" href="{U_FEED}?mode=topics_active"><!-- ENDIF -->*/
/* 	<!-- IF S_ENABLE_FEEDS_FORUM and S_FORUM_ID --><link rel="alternate" type="application/atom+xml" title="{L_FEED} - {L_FORUM} - {FORUM_NAME}" href="{U_FEED}?f={S_FORUM_ID}"><!-- ENDIF -->*/
/* 	<!-- IF S_ENABLE_FEEDS_TOPIC and S_TOPIC_ID --><link rel="alternate" type="application/atom+xml" title="{L_FEED} - {L_TOPIC} - {TOPIC_TITLE}" href="{U_FEED}?f={S_FORUM_ID}&amp;t={S_TOPIC_ID}"><!-- ENDIF -->*/
/* 	<!-- EVENT overall_header_feeds -->*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF U_CANONICAL -->*/
/* 	<link rel="canonical" href="{U_CANONICAL}">*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_ALLOW_CDN -->*/
/* <script>*/
/* 	WebFontConfig = {*/
/* 		google: {*/
/* 			families: ['Open+Sans:600:cyrillic-ext,latin,greek-ext,greek,vietnamese,latin-ext,cyrillic']*/
/* 		}*/
/* 	};*/
/* */
/* 	(function(d) {*/
/* 		var wf = d.createElement('script'), s = d.scripts[0];*/
/* 		wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js';*/
/* 		wf.async = true;*/
/* 		s.parentNode.insertBefore(wf, s);*/
/* 	})(document);*/
/* </script>*/
/* 	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">*/
/* <!-- ELSE -->*/
/* 	<link href="{T_THEME_PATH}/fonts/font-awesome-4.5.0/css/font-awesome.min.css" rel="stylesheet">*/
/* <!-- ENDIF -->*/
/* <link href="{T_THEME_PATH}/fonts/glyphicons-pro-1.9.2/css/glyphicons.css" rel="stylesheet">*/
/* */
/* <link href="{T_STYLESHEET_LINK}" rel="stylesheet">*/
/* */
/* <!-- IF S_CONTENT_DIRECTION eq 'rtl' -->*/
/* 	<link href="{T_THEME_PATH}/bidi.css?assets_version={T_ASSETS_VERSION}" rel="stylesheet">*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_PLUPLOAD -->*/
/* 	<link href="{T_THEME_PATH}/plupload.css?assets_version={T_ASSETS_VERSION}" rel="stylesheet">*/
/* <!-- ENDIF -->*/
/* */
/* <!--[if lte IE 9]>*/
/* 	<link href="{T_THEME_PATH}/tweaks.css?assets_version={T_ASSETS_VERSION}" rel="stylesheet">*/
/* <![endif]-->*/
/* */
/* <!-- EVENT overall_header_head_append -->*/
/* */
/* {$STYLESHEETS}*/
/* */
/* <!-- EVENT overall_header_stylesheets_after -->*/
/* */
/* </head>*/
/* <body id="phpbb" class="nojs notouch section-{SCRIPT_NAME} {S_CONTENT_DIRECTION} {BODY_CLASS}" data-online-text="{LA_ONLINE}">*/
/* */
/* <!-- EVENT overall_header_body_before -->*/
/* */
/* <!-- IF $WRAP_HEADER == 1 -->*/
/* <div id="wrap" class="page-width">*/
/* <!-- ENDIF -->*/
/* 	<a id="top" class="anchor" accesskey="t"></a>*/
/* 	<div id="page-header" class="page-width">*/
/* 		<div class="headerbar" role="banner">*/
/* 			<div class="inner">*/
/* */
/* 			<div id="site-description">*/
/* 				<a id="logo" class="logo" href="<!-- IF U_SITE_HOME -->{U_SITE_HOME}<!-- ELSE -->{U_INDEX}<!-- ENDIF -->" title="<!-- IF U_SITE_HOME -->{L_SITE_HOME}<!-- ELSE -->{L_INDEX}<!-- ENDIF -->"><img src="{T_THEME_PATH}/images/logo.png" data-src-hd="{T_THEME_PATH}/images/logo_hd.png" /></a>*/
/* 				<p class="sitename">{SITENAME}</p>*/
/* 				<p>{SITE_DESCRIPTION}</p>*/
/* 				<p class="skiplink"><a href="#start_here">{L_SKIP}</a></p>*/
/* 			</div>*/
/* */
/* 			<!-- EVENT overall_header_searchbox_before -->*/
/* 			<!-- IF S_DISPLAY_SEARCH and not S_IN_SEARCH -->*/
/* 			<!-- DEFINE $SEARCH_BOX -->*/
/* 			<div id="search-box" class="search-box search-header" role="search">*/
/* 				<form action="{U_SEARCH}" method="get" id="search">*/
/* 				<fieldset>*/
/* 					<input name="keywords" id="keywords" type="search" maxlength="128" title="{L_SEARCH_KEYWORDS}" class="inputbox search tiny" size="20" value="{SEARCH_WORDS}" placeholder="{L_SEARCH_MINI}" />*/
/* 					<button class="button icon-button search-icon" type="submit" title="{L_SEARCH}">{L_SEARCH}</button>*/
/* 					<a href="{U_SEARCH}" class="button icon-button search-adv-icon" title="{L_SEARCH_ADV}">{L_SEARCH_ADV}</a>*/
/* 					{S_SEARCH_HIDDEN_FIELDS}*/
/* 				</fieldset>*/
/* 				</form>*/
/* 			</div>*/
/* 			<!-- ENDDEFINE -->*/
/* 			<!-- IF $SEARCH_IN_NAVBAR == 0 -->{$SEARCH_BOX}<!-- ENDIF -->*/
/* 			<!-- ENDIF -->*/
/* */
/* 			</div>*/
/* 		</div>*/
/* */
/* <!-- IF $WRAP_HEADER == 2 -->*/
/* </div>*/
/* <div id="wrap" class="page-width">*/
/* <div>*/
/* <!-- ENDIF -->*/
/* */
/* 		<!-- EVENT overall_header_navbar_before -->*/
/* 		<!-- INCLUDE navbar_header.html -->*/
/* 	</div>*/
/* */
/* <!-- IF $WRAP_HEADER == 0 -->*/
/* <div id="wrap" class="page-width">*/
/* <!-- ENDIF -->*/
/* */
/* 	<!-- EVENT overall_header_page_body_before -->*/
/* */
/* 	<a id="start_here" class="anchor"></a>*/
/* 	<div id="page-body" role="main">*/
/* 		{$BREADCRUMBS}*/
/* 		<!-- IF S_BOARD_DISABLED and S_USER_LOGGED_IN and (U_MCP or U_ACP) -->*/
/* 		<div id="information" class="rules">*/
/* 			<div class="inner">*/
/* 				<strong>{L_INFORMATION}{L_COLON}</strong> {L_BOARD_DISABLED}*/
/* 			</div>*/
/* 		</div>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- EVENT overall_header_content_before -->*/
/* */
