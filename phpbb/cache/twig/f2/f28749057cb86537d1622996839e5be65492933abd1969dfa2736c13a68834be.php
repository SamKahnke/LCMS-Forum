<?php

/* search_results.html */
class __TwigTemplate_c9ec78a12cfc2f2330878ceef5d4673efaa5f8fc921f6307d83aad98c4014879 extends Twig_Template
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
        $this->loadTemplate("overall_header.html", "search_results.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
";
        // line 3
        // line 4
        echo "
<h2 class=\"searchresults-title\">";
        // line 5
        if ((isset($context["SEARCH_TITLE"]) ? $context["SEARCH_TITLE"] : null)) {
            echo (isset($context["SEARCH_TITLE"]) ? $context["SEARCH_TITLE"] : null);
        } else {
            echo (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null);
        }
        if ((isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null)) {
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <a href=\"";
            echo (isset($context["U_SEARCH_WORDS"]) ? $context["U_SEARCH_WORDS"] : null);
            echo "\">";
            echo (isset($context["SEARCH_WORDS"]) ? $context["SEARCH_WORDS"] : null);
            echo "</a>";
        }
        echo "</h2>
";
        // line 6
        if ((isset($context["SEARCHED_QUERY"]) ? $context["SEARCHED_QUERY"] : null)) {
            echo " <p>";
            echo $this->env->getExtension('phpbb')->lang("SEARCHED_QUERY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <strong>";
            echo (isset($context["SEARCHED_QUERY"]) ? $context["SEARCHED_QUERY"] : null);
            echo "</strong></p>";
        }
        // line 7
        if ((isset($context["IGNORED_WORDS"]) ? $context["IGNORED_WORDS"] : null)) {
            echo " <p>";
            echo $this->env->getExtension('phpbb')->lang("IGNORED_TERMS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " <strong>";
            echo (isset($context["IGNORED_WORDS"]) ? $context["IGNORED_WORDS"] : null);
            echo "</strong></p>";
        }
        // line 8
        if ((isset($context["PHRASE_SEARCH_DISABLED"]) ? $context["PHRASE_SEARCH_DISABLED"] : null)) {
            echo " <p><strong>";
            echo $this->env->getExtension('phpbb')->lang("PHRASE_SEARCH_DISABLED");
            echo "</strong></p>";
        }
        // line 9
        echo "
";
        // line 10
        if ((isset($context["SEARCH_TOPIC"]) ? $context["SEARCH_TOPIC"] : null)) {
            // line 11
            echo "\t<p class=\"return-link\"><a class=\"arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" href=\"";
            echo (isset($context["U_SEARCH_TOPIC"]) ? $context["U_SEARCH_TOPIC"] : null);
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("RETURN_TO_TOPIC");
            echo "</a></p>
";
        } else {
            // line 13
            echo "\t<p class=\"advanced-search-link\"><a class=\"arrow-";
            echo (isset($context["S_CONTENT_FLOW_BEGIN"]) ? $context["S_CONTENT_FLOW_BEGIN"] : null);
            echo "\" href=\"";
            echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
            echo "\" title=\"";
            echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
            echo "\">";
            echo $this->env->getExtension('phpbb')->lang("GO_TO_SEARCH_ADV");
            echo "</a></p>
";
        }
        // line 15
        echo "
";
        // line 16
        // line 17
        echo "
";
        // line 18
        if ((((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null)) || (isset($context["TOTAL_MATCHES"]) ? $context["TOTAL_MATCHES"] : null)) || (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null))) {
            // line 19
            echo "\t<div class=\"action-bar top\">

\t";
            // line 21
            if (((isset($context["TOTAL_MATCHES"]) ? $context["TOTAL_MATCHES"] : null) > 0)) {
                // line 22
                echo "\t\t<div class=\"search-box\" role=\"search\">
\t\t\t<form method=\"post\" action=\"";
                // line 23
                echo (isset($context["S_SEARCH_ACTION"]) ? $context["S_SEARCH_ACTION"] : null);
                echo "\">
\t\t\t<fieldset>
\t\t\t\t<input class=\"inputbox search tiny\" type=\"search\" name=\"add_keywords\" id=\"add_keywords\" value=\"\" placeholder=\"";
                // line 25
                echo $this->env->getExtension('phpbb')->lang("SEARCH_IN_RESULTS");
                echo "\" />
\t\t\t\t<button class=\"button icon-button search-icon\" type=\"submit\" title=\"";
                // line 26
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH");
                echo "</button>
\t\t\t\t<a href=\"";
                // line 27
                echo (isset($context["U_SEARCH"]) ? $context["U_SEARCH"] : null);
                echo "\" class=\"button icon-button search-adv-icon\" title=\"";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("SEARCH_ADV");
                echo "</a>
\t\t\t</fieldset>
\t\t\t</form>
\t\t</div>
\t";
            }
            // line 32
            echo "
\t\t";
            // line 33
            // line 34
            echo "
\t\t<div class=\"pagination\">
\t\t\t";
            // line 36
            if ((isset($context["U_MARK_ALL_READ"]) ? $context["U_MARK_ALL_READ"] : null)) {
                echo "<a href=\"";
                echo (isset($context["U_MARK_ALL_READ"]) ? $context["U_MARK_ALL_READ"] : null);
                echo "\" class=\"mark-read\" accesskey=\"m\">";
                echo $this->env->getExtension('phpbb')->lang("MARK_ALL_READ");
                echo "</a> &bull;";
            }
            // line 37
            echo "\t\t\t";
            echo (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null);
            echo "
\t\t\t";
            // line 38
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 39
                echo "\t\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "search_results.html", 39)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 40
                echo "\t\t\t";
            } else {
                // line 41
                echo "\t\t\t\t &bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t\t";
            }
            // line 43
            echo "\t\t</div>
\t</div>
";
        }
        // line 46
        echo "
";
        // line 47
        if ((isset($context["S_SHOW_TOPICS"]) ? $context["S_SHOW_TOPICS"] : null)) {
            // line 48
            echo "
\t";
            // line 49
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults", array()))) {
                // line 50
                echo "\t<div class=\"forumbg\">

\t\t<div class=\"inner\">
\t\t<ul class=\"topiclist\">
\t\t\t<li class=\"header\">
\t\t\t\t<dl class=\"icon\">
\t\t\t\t\t<dt><div class=\"list-inner\">";
                // line 56
                echo $this->env->getExtension('phpbb')->lang("TOPICS");
                echo "</div></dt>
\t\t\t\t\t<dd class=\"posts\">";
                // line 57
                echo $this->env->getExtension('phpbb')->lang("REPLIES");
                echo "</dd>
\t\t\t\t\t<dd class=\"views\">";
                // line 58
                echo $this->env->getExtension('phpbb')->lang("VIEWS");
                echo "</dd>
\t\t\t\t\t<dd class=\"lastpost\"><span>";
                // line 59
                echo $this->env->getExtension('phpbb')->lang("LAST_POST");
                echo "</span></dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t</ul>
\t\t<ul class=\"topiclist topics\">

\t\t";
                // line 65
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["searchresults"]) {
                    // line 66
                    echo "\t\t\t";
                    // line 67
                    echo "\t\t\t<li class=\"row";
                    if (($this->getAttribute($context["searchresults"], "S_ROW_COUNT", array()) % 2 == 0)) {
                        echo " bg1";
                    } else {
                        echo " bg2";
                    }
                    echo "\">
\t\t\t\t<dl class=\"icon ";
                    // line 68
                    echo $this->getAttribute($context["searchresults"], "TOPIC_IMG_STYLE", array());
                    echo "\">
\t\t\t\t\t<dt ";
                    // line 69
                    if ($this->getAttribute($context["searchresults"], "TOPIC_ICON_IMG", array())) {
                        echo "style=\"background-image: url(";
                        echo (isset($context["T_ICONS_PATH"]) ? $context["T_ICONS_PATH"] : null);
                        echo $this->getAttribute($context["searchresults"], "TOPIC_ICON_IMG", array());
                        echo "); background-repeat: no-repeat;\"";
                    }
                    echo " title=\"";
                    echo $this->getAttribute($context["searchresults"], "TOPIC_FOLDER_IMG_ALT", array());
                    echo "\">
\t\t\t\t\t\t";
                    // line 70
                    if (($this->getAttribute($context["searchresults"], "S_UNREAD_TOPIC", array()) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                        echo "<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_NEWEST_POST", array());
                        echo "\" class=\"icon-link\"></a>";
                    }
                    // line 71
                    echo "\t\t\t\t\t\t<div class=\"list-inner\">

\t\t\t\t\t\t\t";
                    // line 73
                    // line 74
                    echo "\t\t\t\t\t\t\t";
                    if (($this->getAttribute($context["searchresults"], "S_UNREAD_TOPIC", array()) &&  !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null))) {
                        echo "<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_NEWEST_POST", array());
                        echo "\">";
                        echo (isset($context["NEWEST_POST_IMG"]) ? $context["NEWEST_POST_IMG"] : null);
                        echo "</a> ";
                    }
                    // line 75
                    echo "\t\t\t\t\t\t\t<a href=\"";
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_TOPIC", array());
                    echo "\" class=\"topictitle\">";
                    echo $this->getAttribute($context["searchresults"], "TOPIC_TITLE", array());
                    echo "</a> ";
                    echo $this->getAttribute($context["searchresults"], "ATTACH_ICON_IMG", array());
                    echo "
\t\t\t\t\t\t\t";
                    // line 76
                    if (($this->getAttribute($context["searchresults"], "S_TOPIC_UNAPPROVED", array()) || $this->getAttribute($context["searchresults"], "S_POSTS_UNAPPROVED", array()))) {
                        echo "<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_MCP_QUEUE", array());
                        echo "\">";
                        echo $this->getAttribute($context["searchresults"], "UNAPPROVED_IMG", array());
                        echo "</a> ";
                    }
                    // line 77
                    echo "\t\t\t\t\t\t\t";
                    if ($this->getAttribute($context["searchresults"], "S_TOPIC_DELETED", array())) {
                        echo "<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_MCP_QUEUE", array());
                        echo "\">";
                        echo (isset($context["DELETED_IMG"]) ? $context["DELETED_IMG"] : null);
                        echo "</a> ";
                    }
                    // line 78
                    echo "\t\t\t\t\t\t\t";
                    if ($this->getAttribute($context["searchresults"], "S_TOPIC_REPORTED", array())) {
                        echo "<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_MCP_REPORT", array());
                        echo "\">";
                        echo (isset($context["REPORTED_IMG"]) ? $context["REPORTED_IMG"] : null);
                        echo "</a>";
                    }
                    echo "<br />
\t\t\t\t\t\t\t";
                    // line 79
                    // line 80
                    echo "\t\t\t\t\t\t\t";
                    if (twig_length_filter($this->env, $this->getAttribute($context["searchresults"], "pagination", array()))) {
                        // line 81
                        echo "\t\t\t\t\t\t\t<div class=\"pagination\">
\t\t\t\t\t\t\t\t<ul>
\t\t\t\t\t\t\t\t";
                        // line 83
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["searchresults"], "pagination", array()));
                        foreach ($context['_seq'] as $context["_key"] => $context["pagination"]) {
                            // line 84
                            echo "\t\t\t\t\t\t\t\t\t";
                            if ($this->getAttribute($context["pagination"], "S_IS_PREV", array())) {
                                // line 85
                                echo "\t\t\t\t\t\t\t\t\t";
                            } elseif ($this->getAttribute($context["pagination"], "S_IS_CURRENT", array())) {
                                echo "<li class=\"active\"><span>";
                                echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                                echo "</span></li>
\t\t\t\t\t\t\t\t\t";
                            } elseif ($this->getAttribute(                            // line 86
$context["pagination"], "S_IS_ELLIPSIS", array())) {
                                echo "<li class=\"ellipsis\"><span>";
                                echo $this->env->getExtension('phpbb')->lang("ELLIPSIS");
                                echo "</span></li>
\t\t\t\t\t\t\t\t\t";
                            } elseif ($this->getAttribute(                            // line 87
$context["pagination"], "S_IS_NEXT", array())) {
                                // line 88
                                echo "\t\t\t\t\t\t\t\t\t";
                            } else {
                                echo "<li><a href=\"";
                                echo $this->getAttribute($context["pagination"], "PAGE_URL", array());
                                echo "\">";
                                echo $this->getAttribute($context["pagination"], "PAGE_NUMBER", array());
                                echo "</a></li>
\t\t\t\t\t\t\t\t\t";
                            }
                            // line 90
                            echo "\t\t\t\t\t\t\t\t";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['pagination'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 91
                        echo "\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t";
                    }
                    // line 94
                    echo "\t\t\t\t\t\t\t";
                    if ($this->getAttribute($context["searchresults"], "S_HAS_POLL", array())) {
                        echo (isset($context["POLL_IMG"]) ? $context["POLL_IMG"] : null);
                        echo " ";
                    }
                    // line 95
                    echo "\t\t\t\t\t\t\t";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["searchresults"], "TOPIC_AUTHOR_FULL", array());
                    echo " &raquo; ";
                    echo $this->getAttribute($context["searchresults"], "FIRST_POST_TIME", array());
                    echo " &raquo; ";
                    echo $this->env->getExtension('phpbb')->lang("IN");
                    echo " <a href=\"";
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_FORUM", array());
                    echo "\">";
                    echo $this->getAttribute($context["searchresults"], "FORUM_TITLE", array());
                    echo "</a>
\t\t\t\t\t\t\t";
                    // line 96
                    // line 97
                    echo "
\t\t\t\t\t\t</div>
\t\t\t\t\t</dt>
\t\t\t\t\t<dd class=\"posts\">";
                    // line 100
                    echo $this->getAttribute($context["searchresults"], "TOPIC_REPLIES", array());
                    echo "</dd>
\t\t\t\t\t<dd class=\"views\">";
                    // line 101
                    echo $this->getAttribute($context["searchresults"], "TOPIC_VIEWS", array());
                    echo "</dd>
\t\t\t\t\t<dd class=\"lastpost\"><span>
\t\t\t\t\t\t";
                    // line 103
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["searchresults"], "LAST_POST_AUTHOR_FULL", array());
                    echo "
\t\t\t\t\t\t";
                    // line 104
                    if ( !(isset($context["S_IS_BOT"]) ? $context["S_IS_BOT"] : null)) {
                        echo "<a href=\"";
                        echo $this->getAttribute($context["searchresults"], "U_LAST_POST", array());
                        echo "\" title=\"";
                        echo $this->env->getExtension('phpbb')->lang("GOTO_LAST_POST");
                        echo "\">";
                        echo (isset($context["LAST_POST_IMG"]) ? $context["LAST_POST_IMG"] : null);
                        echo "</a> ";
                    }
                    echo "<br />";
                    echo $this->getAttribute($context["searchresults"], "LAST_POST_TIME", array());
                    echo "<br /> </span>
\t\t\t\t\t</dd>
\t\t\t\t</dl>
\t\t\t</li>
\t\t\t";
                    // line 108
                    // line 109
                    echo "\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['searchresults'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 110
                echo "\t\t</ul>

\t\t</div>
\t</div>
\t";
            } else {
                // line 115
                echo "\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">
\t\t\t<strong>";
                // line 117
                echo $this->env->getExtension('phpbb')->lang("NO_SEARCH_RESULTS");
                echo "</strong>
\t\t\t</div>
\t\t</div>
\t";
            }
            // line 121
            echo "
";
        } else {
            // line 123
            echo "
\t";
            // line 124
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults", array()));
            $context['_iterated'] = false;
            foreach ($context['_seq'] as $context["_key"] => $context["searchresults"]) {
                // line 125
                echo "\t\t";
                // line 126
                echo "\t\t<div class=\"search post ";
                if (($this->getAttribute($context["searchresults"], "S_ROW_COUNT", array()) % 2 == 1)) {
                    echo "bg1";
                } else {
                    echo "bg2";
                }
                if ($this->getAttribute($context["searchresults"], "S_POST_REPORTED", array())) {
                    echo " reported";
                }
                echo "\">
\t\t\t<div class=\"inner\">

\t";
                // line 129
                if ($this->getAttribute($context["searchresults"], "S_IGNORE_POST", array())) {
                    // line 130
                    echo "\t\t<div class=\"postbody\">
\t\t\t";
                    // line 131
                    echo $this->getAttribute($context["searchresults"], "L_IGNORE_POST", array());
                    echo "
\t\t</div>
\t";
                } else {
                    // line 134
                    echo "\t\t<dl class=\"postprofile\">
\t\t\t";
                    // line 135
                    // line 136
                    echo "\t\t\t<dt class=\"author\">";
                    echo $this->env->getExtension('phpbb')->lang("POST_BY_AUTHOR");
                    echo " ";
                    echo $this->getAttribute($context["searchresults"], "POST_AUTHOR_FULL", array());
                    echo "</dt>
\t\t\t<dd class=\"search-result-date\">";
                    // line 137
                    echo $this->getAttribute($context["searchresults"], "POST_DATE", array());
                    echo "</dd>
\t\t\t<dd>";
                    // line 138
                    echo $this->env->getExtension('phpbb')->lang("FORUM");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <a href=\"";
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_FORUM", array());
                    echo "\">";
                    echo $this->getAttribute($context["searchresults"], "FORUM_TITLE", array());
                    echo "</a></dd>
\t\t\t<dd>";
                    // line 139
                    echo $this->env->getExtension('phpbb')->lang("TOPIC");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <a href=\"";
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_TOPIC", array());
                    echo "\">";
                    echo $this->getAttribute($context["searchresults"], "TOPIC_TITLE", array());
                    echo "</a></dd>
\t\t\t";
                    // line 140
                    // line 141
                    echo "\t\t\t<dd>";
                    echo $this->env->getExtension('phpbb')->lang("REPLIES");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <strong>";
                    echo $this->getAttribute($context["searchresults"], "TOPIC_REPLIES", array());
                    echo "</strong></dd>
\t\t\t<dd>";
                    // line 142
                    echo $this->env->getExtension('phpbb')->lang("VIEWS");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " <strong>";
                    echo $this->getAttribute($context["searchresults"], "TOPIC_VIEWS", array());
                    echo "</strong></dd>
\t\t\t";
                    // line 143
                    // line 144
                    echo "\t\t</dl>

\t\t<div class=\"postbody\">
\t\t\t<h3><a href=\"";
                    // line 147
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_POST", array());
                    echo "\">";
                    echo $this->getAttribute($context["searchresults"], "POST_SUBJECT", array());
                    echo "</a></h3>
\t\t\t<div class=\"content\">";
                    // line 148
                    echo $this->getAttribute($context["searchresults"], "MESSAGE", array());
                    echo "</div>
\t\t</div>
\t";
                }
                // line 151
                echo "
\t";
                // line 152
                if ( !$this->getAttribute($context["searchresults"], "S_IGNORE_POST", array())) {
                    // line 153
                    echo "\t\t<ul class=\"searchresults\">
\t\t\t<li ><a href=\"";
                    // line 154
                    echo $this->getAttribute($context["searchresults"], "U_VIEW_POST", array());
                    echo "\" class=\"arrow-";
                    echo (isset($context["S_CONTENT_FLOW_END"]) ? $context["S_CONTENT_FLOW_END"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("JUMP_TO_POST");
                    echo "</a></li>
\t\t</ul>
\t";
                }
                // line 157
                echo "
\t\t\t</div>
\t\t</div>
\t\t";
                // line 160
                // line 161
                echo "\t";
                $context['_iterated'] = true;
            }
            if (!$context['_iterated']) {
                // line 162
                echo "\t\t<div class=\"panel\">
\t\t\t<div class=\"inner\">
\t\t\t<strong>";
                // line 164
                echo $this->env->getExtension('phpbb')->lang("NO_SEARCH_RESULTS");
                echo "</strong>
\t\t\t</div>
\t\t</div>
\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['searchresults'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        }
        // line 169
        echo "
";
        // line 170
        if ((((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults", array()))) || (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null)) || (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null))) {
            // line 171
            echo "\t<form method=\"post\" action=\"";
            echo (isset($context["S_SEARCH_ACTION"]) ? $context["S_SEARCH_ACTION"] : null);
            echo "\">

\t<fieldset class=\"display-options\">
\t\t";
            // line 174
            if (((isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null) || (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null))) {
                // line 175
                echo "\t\t\t<label>";
                if ((isset($context["S_SHOW_TOPICS"]) ? $context["S_SHOW_TOPICS"] : null)) {
                    echo $this->env->getExtension('phpbb')->lang("DISPLAY_POSTS");
                } else {
                    echo $this->env->getExtension('phpbb')->lang("SORT_BY");
                    echo "</label><label>";
                }
                echo " ";
                echo (isset($context["S_SELECT_SORT_DAYS"]) ? $context["S_SELECT_SORT_DAYS"] : null);
                if ((isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null)) {
                    echo "</label> <label>";
                    echo (isset($context["S_SELECT_SORT_KEY"]) ? $context["S_SELECT_SORT_KEY"] : null);
                    echo "</label>
\t\t\t<label>";
                    // line 176
                    echo (isset($context["S_SELECT_SORT_DIR"]) ? $context["S_SELECT_SORT_DIR"] : null);
                }
                echo "</label>
\t\t\t<input type=\"submit\" name=\"sort\" value=\"";
                // line 177
                echo $this->env->getExtension('phpbb')->lang("GO");
                echo "\" class=\"button2\" />
\t\t";
            }
            // line 179
            echo "\t</fieldset>

\t</form>

\t<hr />
";
        }
        // line 185
        echo "
";
        // line 186
        if (((twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array())) || twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "searchresults", array()))) || (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null))) {
            // line 187
            echo "<div class=\"action-bar bottom\">
\t<div class=\"pagination\">
\t\t";
            // line 189
            echo (isset($context["SEARCH_MATCHES"]) ? $context["SEARCH_MATCHES"] : null);
            echo "
\t\t";
            // line 190
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "pagination", array()))) {
                // line 191
                echo "\t\t\t";
                $location = "pagination.html";
                $namespace = false;
                if (strpos($location, '@') === 0) {
                    $namespace = substr($location, 1, strpos($location, '/') - 1);
                    $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
                    $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
                }
                $this->loadTemplate("pagination.html", "search_results.html", 191)->display($context);
                if ($namespace) {
                    $this->env->setNamespaceLookUpOrder($previous_look_up_order);
                }
                // line 192
                echo "\t\t";
            } else {
                // line 193
                echo "\t\t\t &bull; ";
                echo (isset($context["PAGE_NUMBER"]) ? $context["PAGE_NUMBER"] : null);
                echo "
\t\t";
            }
            // line 195
            echo "\t</div>
</div>
";
        }
        // line 198
        echo "
";
        // line 199
        $location = "jumpbox.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("jumpbox.html", "search_results.html", 199)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 200
        echo "
";
        // line 201
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "search_results.html", 201)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "search_results.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  718 => 201,  715 => 200,  703 => 199,  700 => 198,  695 => 195,  689 => 193,  686 => 192,  673 => 191,  671 => 190,  667 => 189,  663 => 187,  661 => 186,  658 => 185,  650 => 179,  645 => 177,  640 => 176,  625 => 175,  623 => 174,  616 => 171,  614 => 170,  611 => 169,  600 => 164,  596 => 162,  591 => 161,  590 => 160,  585 => 157,  575 => 154,  572 => 153,  570 => 152,  567 => 151,  561 => 148,  555 => 147,  550 => 144,  549 => 143,  542 => 142,  534 => 141,  533 => 140,  524 => 139,  515 => 138,  511 => 137,  504 => 136,  503 => 135,  500 => 134,  494 => 131,  491 => 130,  489 => 129,  475 => 126,  473 => 125,  468 => 124,  465 => 123,  461 => 121,  454 => 117,  450 => 115,  443 => 110,  437 => 109,  436 => 108,  419 => 104,  413 => 103,  408 => 101,  404 => 100,  399 => 97,  398 => 96,  383 => 95,  377 => 94,  372 => 91,  366 => 90,  356 => 88,  354 => 87,  348 => 86,  341 => 85,  338 => 84,  334 => 83,  330 => 81,  327 => 80,  326 => 79,  315 => 78,  306 => 77,  298 => 76,  289 => 75,  280 => 74,  279 => 73,  275 => 71,  269 => 70,  258 => 69,  254 => 68,  245 => 67,  243 => 66,  239 => 65,  230 => 59,  226 => 58,  222 => 57,  218 => 56,  210 => 50,  208 => 49,  205 => 48,  203 => 47,  200 => 46,  195 => 43,  189 => 41,  186 => 40,  173 => 39,  171 => 38,  166 => 37,  158 => 36,  154 => 34,  153 => 33,  150 => 32,  138 => 27,  132 => 26,  128 => 25,  123 => 23,  120 => 22,  118 => 21,  114 => 19,  112 => 18,  109 => 17,  108 => 16,  105 => 15,  93 => 13,  83 => 11,  81 => 10,  78 => 9,  72 => 8,  63 => 7,  54 => 6,  38 => 5,  35 => 4,  34 => 3,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE overall_header.html -->*/
/* */
/* <!-- EVENT search_results_header_before -->*/
/* */
/* <h2 class="searchresults-title"><!-- IF SEARCH_TITLE -->{SEARCH_TITLE}<!-- ELSE -->{SEARCH_MATCHES}<!-- ENDIF --><!-- IF SEARCH_WORDS -->{L_COLON} <a href="{U_SEARCH_WORDS}">{SEARCH_WORDS}</a><!-- ENDIF --></h2>*/
/* <!-- IF SEARCHED_QUERY --> <p>{L_SEARCHED_QUERY}{L_COLON} <strong>{SEARCHED_QUERY}</strong></p><!-- ENDIF -->*/
/* <!-- IF IGNORED_WORDS --> <p>{L_IGNORED_TERMS}{L_COLON} <strong>{IGNORED_WORDS}</strong></p><!-- ENDIF -->*/
/* <!-- IF PHRASE_SEARCH_DISABLED --> <p><strong>{L_PHRASE_SEARCH_DISABLED}</strong></p><!-- ENDIF -->*/
/* */
/* <!-- IF SEARCH_TOPIC -->*/
/* 	<p class="return-link"><a class="arrow-{S_CONTENT_FLOW_BEGIN}" href="{U_SEARCH_TOPIC}">{L_RETURN_TO_TOPIC}</a></p>*/
/* <!-- ELSE -->*/
/* 	<p class="advanced-search-link"><a class="arrow-{S_CONTENT_FLOW_BEGIN}" href="{U_SEARCH}" title="{L_SEARCH_ADV}">{L_GO_TO_SEARCH_ADV}</a></p>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- EVENT search_results_header_after -->*/
/* */
/* <!-- IF .pagination or SEARCH_MATCHES or TOTAL_MATCHES or PAGE_NUMBER -->*/
/* 	<div class="action-bar top">*/
/* */
/* 	<!-- IF TOTAL_MATCHES > 0 -->*/
/* 		<div class="search-box" role="search">*/
/* 			<form method="post" action="{S_SEARCH_ACTION}">*/
/* 			<fieldset>*/
/* 				<input class="inputbox search tiny" type="search" name="add_keywords" id="add_keywords" value="" placeholder="{L_SEARCH_IN_RESULTS}" />*/
/* 				<button class="button icon-button search-icon" type="submit" title="{L_SEARCH}">{L_SEARCH}</button>*/
/* 				<a href="{U_SEARCH}" class="button icon-button search-adv-icon" title="{L_SEARCH_ADV}">{L_SEARCH_ADV}</a>*/
/* 			</fieldset>*/
/* 			</form>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 		<!-- EVENT search_results_searchbox_after -->*/
/* */
/* 		<div class="pagination">*/
/* 			<!-- IF U_MARK_ALL_READ --><a href="{U_MARK_ALL_READ}" class="mark-read" accesskey="m">{L_MARK_ALL_READ}</a> &bull;<!-- ENDIF -->*/
/* 			{SEARCH_MATCHES}*/
/* 			<!-- IF .pagination -->*/
/* 				<!-- INCLUDE pagination.html -->*/
/* 			<!-- ELSE -->*/
/* 				 &bull; {PAGE_NUMBER}*/
/* 			<!-- ENDIF -->*/
/* 		</div>*/
/* 	</div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF S_SHOW_TOPICS -->*/
/* */
/* 	<!-- IF .searchresults -->*/
/* 	<div class="forumbg">*/
/* */
/* 		<div class="inner">*/
/* 		<ul class="topiclist">*/
/* 			<li class="header">*/
/* 				<dl class="icon">*/
/* 					<dt><div class="list-inner">{L_TOPICS}</div></dt>*/
/* 					<dd class="posts">{L_REPLIES}</dd>*/
/* 					<dd class="views">{L_VIEWS}</dd>*/
/* 					<dd class="lastpost"><span>{L_LAST_POST}</span></dd>*/
/* 				</dl>*/
/* 			</li>*/
/* 		</ul>*/
/* 		<ul class="topiclist topics">*/
/* */
/* 		<!-- BEGIN searchresults -->*/
/* 			<!-- EVENT search_results_topic_before -->*/
/* 			<li class="row<!-- IF searchresults.S_ROW_COUNT is even --> bg1<!-- ELSE --> bg2<!-- ENDIF -->">*/
/* 				<dl class="icon {searchresults.TOPIC_IMG_STYLE}">*/
/* 					<dt <!-- IF searchresults.TOPIC_ICON_IMG -->style="background-image: url({T_ICONS_PATH}{searchresults.TOPIC_ICON_IMG}); background-repeat: no-repeat;"<!-- ENDIF --> title="{searchresults.TOPIC_FOLDER_IMG_ALT}">*/
/* 						<!-- IF searchresults.S_UNREAD_TOPIC and not S_IS_BOT --><a href="{searchresults.U_NEWEST_POST}" class="icon-link"></a><!-- ENDIF -->*/
/* 						<div class="list-inner">*/
/* */
/* 							<!-- EVENT topiclist_row_prepend -->*/
/* 							<!-- IF searchresults.S_UNREAD_TOPIC and not S_IS_BOT --><a href="{searchresults.U_NEWEST_POST}">{NEWEST_POST_IMG}</a> <!-- ENDIF -->*/
/* 							<a href="{searchresults.U_VIEW_TOPIC}" class="topictitle">{searchresults.TOPIC_TITLE}</a> {searchresults.ATTACH_ICON_IMG}*/
/* 							<!-- IF searchresults.S_TOPIC_UNAPPROVED or searchresults.S_POSTS_UNAPPROVED --><a href="{searchresults.U_MCP_QUEUE}">{searchresults.UNAPPROVED_IMG}</a> <!-- ENDIF -->*/
/* 							<!-- IF searchresults.S_TOPIC_DELETED --><a href="{searchresults.U_MCP_QUEUE}">{DELETED_IMG}</a> <!-- ENDIF -->*/
/* 							<!-- IF searchresults.S_TOPIC_REPORTED --><a href="{searchresults.U_MCP_REPORT}">{REPORTED_IMG}</a><!-- ENDIF --><br />*/
/* 							<!-- EVENT topiclist_row_topic_title_after -->*/
/* 							<!-- IF .searchresults.pagination -->*/
/* 							<div class="pagination">*/
/* 								<ul>*/
/* 								<!-- BEGIN pagination -->*/
/* 									<!-- IF searchresults.pagination.S_IS_PREV -->*/
/* 									<!-- ELSEIF searchresults.pagination.S_IS_CURRENT --><li class="active"><span>{searchresults.pagination.PAGE_NUMBER}</span></li>*/
/* 									<!-- ELSEIF searchresults.pagination.S_IS_ELLIPSIS --><li class="ellipsis"><span>{L_ELLIPSIS}</span></li>*/
/* 									<!-- ELSEIF searchresults.pagination.S_IS_NEXT -->*/
/* 									<!-- ELSE --><li><a href="{searchresults.pagination.PAGE_URL}">{searchresults.pagination.PAGE_NUMBER}</a></li>*/
/* 									<!-- ENDIF -->*/
/* 								<!-- END pagination -->*/
/* 								</ul>*/
/* 							</div>*/
/* 							<!-- ENDIF -->*/
/* 							<!-- IF searchresults.S_HAS_POLL -->{POLL_IMG} <!-- ENDIF -->*/
/* 							{L_POST_BY_AUTHOR} {searchresults.TOPIC_AUTHOR_FULL} &raquo; {searchresults.FIRST_POST_TIME} &raquo; {L_IN} <a href="{searchresults.U_VIEW_FORUM}">{searchresults.FORUM_TITLE}</a>*/
/* 							<!-- EVENT topiclist_row_append -->*/
/* */
/* 						</div>*/
/* 					</dt>*/
/* 					<dd class="posts">{searchresults.TOPIC_REPLIES}</dd>*/
/* 					<dd class="views">{searchresults.TOPIC_VIEWS}</dd>*/
/* 					<dd class="lastpost"><span>*/
/* 						{L_POST_BY_AUTHOR} {searchresults.LAST_POST_AUTHOR_FULL}*/
/* 						<!-- IF not S_IS_BOT --><a href="{searchresults.U_LAST_POST}" title="{L_GOTO_LAST_POST}">{LAST_POST_IMG}</a> <!-- ENDIF --><br />{searchresults.LAST_POST_TIME}<br /> </span>*/
/* 					</dd>*/
/* 				</dl>*/
/* 			</li>*/
/* 			<!-- EVENT search_results_topic_after -->*/
/* 		<!-- END searchresults -->*/
/* 		</ul>*/
/* */
/* 		</div>*/
/* 	</div>*/
/* 	<!-- ELSE -->*/
/* 		<div class="panel">*/
/* 			<div class="inner">*/
/* 			<strong>{L_NO_SEARCH_RESULTS}</strong>*/
/* 			</div>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* <!-- ELSE -->*/
/* */
/* 	<!-- BEGIN searchresults -->*/
/* 		<!-- EVENT search_results_post_before -->*/
/* 		<div class="search post <!-- IF searchresults.S_ROW_COUNT is odd -->bg1<!-- ELSE -->bg2<!-- ENDIF --><!-- IF searchresults.S_POST_REPORTED --> reported<!-- ENDIF -->">*/
/* 			<div class="inner">*/
/* */
/* 	<!-- IF searchresults.S_IGNORE_POST -->*/
/* 		<div class="postbody">*/
/* 			{searchresults.L_IGNORE_POST}*/
/* 		</div>*/
/* 	<!-- ELSE -->*/
/* 		<dl class="postprofile">*/
/* 			<!-- EVENT search_results_postprofile_before -->*/
/* 			<dt class="author">{L_POST_BY_AUTHOR} {searchresults.POST_AUTHOR_FULL}</dt>*/
/* 			<dd class="search-result-date">{searchresults.POST_DATE}</dd>*/
/* 			<dd>{L_FORUM}{L_COLON} <a href="{searchresults.U_VIEW_FORUM}">{searchresults.FORUM_TITLE}</a></dd>*/
/* 			<dd>{L_TOPIC}{L_COLON} <a href="{searchresults.U_VIEW_TOPIC}">{searchresults.TOPIC_TITLE}</a></dd>*/
/* 			<!-- EVENT search_results_topic_title_after -->*/
/* 			<dd>{L_REPLIES}{L_COLON} <strong>{searchresults.TOPIC_REPLIES}</strong></dd>*/
/* 			<dd>{L_VIEWS}{L_COLON} <strong>{searchresults.TOPIC_VIEWS}</strong></dd>*/
/* 			<!-- EVENT search_results_postprofile_after -->*/
/* 		</dl>*/
/* */
/* 		<div class="postbody">*/
/* 			<h3><a href="{searchresults.U_VIEW_POST}">{searchresults.POST_SUBJECT}</a></h3>*/
/* 			<div class="content">{searchresults.MESSAGE}</div>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF not searchresults.S_IGNORE_POST -->*/
/* 		<ul class="searchresults">*/
/* 			<li ><a href="{searchresults.U_VIEW_POST}" class="arrow-{S_CONTENT_FLOW_END}">{L_JUMP_TO_POST}</a></li>*/
/* 		</ul>*/
/* 	<!-- ENDIF -->*/
/* */
/* 			</div>*/
/* 		</div>*/
/* 		<!-- EVENT search_results_post_after -->*/
/* 	<!-- BEGINELSE -->*/
/* 		<div class="panel">*/
/* 			<div class="inner">*/
/* 			<strong>{L_NO_SEARCH_RESULTS}</strong>*/
/* 			</div>*/
/* 		</div>*/
/* 	<!-- END searchresults -->*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF .pagination or .searchresults or S_SELECT_SORT_KEY or S_SELECT_SORT_DAYS -->*/
/* 	<form method="post" action="{S_SEARCH_ACTION}">*/
/* */
/* 	<fieldset class="display-options">*/
/* 		<!-- IF S_SELECT_SORT_DAYS or S_SELECT_SORT_KEY -->*/
/* 			<label><!-- IF S_SHOW_TOPICS -->{L_DISPLAY_POSTS}<!-- ELSE -->{L_SORT_BY}</label><label><!-- ENDIF --> {S_SELECT_SORT_DAYS}<!-- IF S_SELECT_SORT_KEY --></label> <label>{S_SELECT_SORT_KEY}</label>*/
/* 			<label>{S_SELECT_SORT_DIR}<!-- ENDIF --></label>*/
/* 			<input type="submit" name="sort" value="{L_GO}" class="button2" />*/
/* 		<!-- ENDIF -->*/
/* 	</fieldset>*/
/* */
/* 	</form>*/
/* */
/* 	<hr />*/
/* <!-- ENDIF -->*/
/* */
/* <!-- IF .pagination or .searchresults or PAGE_NUMBER -->*/
/* <div class="action-bar bottom">*/
/* 	<div class="pagination">*/
/* 		{SEARCH_MATCHES}*/
/* 		<!-- IF .pagination -->*/
/* 			<!-- INCLUDE pagination.html -->*/
/* 		<!-- ELSE -->*/
/* 			 &bull; {PAGE_NUMBER}*/
/* 		<!-- ENDIF -->*/
/* 	</div>*/
/* </div>*/
/* <!-- ENDIF -->*/
/* */
/* <!-- INCLUDE jumpbox.html -->*/
/* */
/* <!-- INCLUDE overall_footer.html -->*/
/* */
