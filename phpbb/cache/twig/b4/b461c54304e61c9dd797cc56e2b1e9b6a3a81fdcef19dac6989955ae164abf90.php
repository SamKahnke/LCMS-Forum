<?php

/* acp_main.html */
class __TwigTemplate_17e00a3fb67300b4bdb632b7e0315aad86023cda981c6b680fcd6a9725094ce4 extends Twig_Template
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
        $this->loadTemplate("overall_header.html", "acp_main.html", 1)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
        // line 2
        echo "
<a id=\"maincontent\"></a>

";
        // line 5
        if ((isset($context["S_RESTORE_PERMISSIONS"]) ? $context["S_RESTORE_PERMISSIONS"] : null)) {
            // line 6
            echo "
\t<h1>";
            // line 7
            echo $this->env->getExtension('phpbb')->lang("PERMISSIONS_TRANSFERRED");
            echo "</h1>

\t<p>";
            // line 9
            echo $this->env->getExtension('phpbb')->lang("PERMISSIONS_TRANSFERRED_EXPLAIN");
            echo "</p>

";
        } else {
            // line 12
            echo "
\t<h1>";
            // line 13
            echo $this->env->getExtension('phpbb')->lang("WELCOME_PHPBB");
            echo "</h1>

\t<p>";
            // line 15
            echo $this->env->getExtension('phpbb')->lang("ADMIN_INTRO");
            echo "</p>

\t";
            // line 17
            if ((isset($context["S_UPDATE_INCOMPLETE"]) ? $context["S_UPDATE_INCOMPLETE"] : null)) {
                // line 18
                echo "\t\t<div class=\"errorbox\">
\t\t\t<p>";
                // line 19
                echo $this->env->getExtension('phpbb')->lang("UPDATE_INCOMPLETE");
                echo " <a href=\"";
                echo (isset($context["U_VERSIONCHECK"]) ? $context["U_VERSIONCHECK"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("MORE_INFORMATION");
                echo "</a></p>
\t\t</div>
\t";
            } elseif (            // line 21
(isset($context["S_VERSIONCHECK_FAIL"]) ? $context["S_VERSIONCHECK_FAIL"] : null)) {
                // line 22
                echo "\t\t<div class=\"errorbox notice\">
\t\t\t<p>";
                // line 23
                echo $this->env->getExtension('phpbb')->lang("VERSIONCHECK_FAIL");
                echo "</p>
\t\t\t<p>";
                // line 24
                echo (isset($context["VERSIONCHECK_FAIL_REASON"]) ? $context["VERSIONCHECK_FAIL_REASON"] : null);
                echo "</p>
\t\t\t<p><a href=\"";
                // line 25
                echo (isset($context["U_VERSIONCHECK_FORCE"]) ? $context["U_VERSIONCHECK_FORCE"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("VERSIONCHECK_FORCE_UPDATE");
                echo "</a> &middot; <a href=\"";
                echo (isset($context["U_VERSIONCHECK"]) ? $context["U_VERSIONCHECK"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("MORE_INFORMATION");
                echo "</a></p>
\t\t</div>
\t";
            } elseif ( !            // line 27
(isset($context["S_VERSION_UP_TO_DATE"]) ? $context["S_VERSION_UP_TO_DATE"] : null)) {
                // line 28
                echo "\t\t<div class=\"errorbox\">
\t\t\t<p>";
                // line 29
                echo $this->env->getExtension('phpbb')->lang("VERSION_NOT_UP_TO_DATE_TITLE");
                echo "</p>
\t\t\t<p><a href=\"";
                // line 30
                echo (isset($context["U_VERSIONCHECK_FORCE"]) ? $context["U_VERSIONCHECK_FORCE"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("VERSIONCHECK_FORCE_UPDATE");
                echo "</a> &middot; <a href=\"";
                echo (isset($context["U_VERSIONCHECK"]) ? $context["U_VERSIONCHECK"] : null);
                echo "\">";
                echo $this->env->getExtension('phpbb')->lang("MORE_INFORMATION");
                echo "</a></p>
\t\t</div>
\t";
            }
            // line 33
            echo "\t";
            if ((isset($context["S_VERSION_UPGRADEABLE"]) ? $context["S_VERSION_UPGRADEABLE"] : null)) {
                // line 34
                echo "\t\t<div class=\"errorbox notice\">
\t\t\t<p>";
                // line 35
                echo (isset($context["UPGRADE_INSTRUCTIONS"]) ? $context["UPGRADE_INSTRUCTIONS"] : null);
                echo "</p>
\t\t</div>
\t";
            }
            // line 38
            echo "
\t";
            // line 39
            if ((isset($context["S_SEARCH_INDEX_MISSING"]) ? $context["S_SEARCH_INDEX_MISSING"] : null)) {
                // line 40
                echo "\t\t<div class=\"errorbox\">
\t\t\t<h3>";
                // line 41
                echo $this->env->getExtension('phpbb')->lang("WARNING");
                echo "</h3>
\t\t\t<p>";
                // line 42
                echo $this->env->getExtension('phpbb')->lang("NO_SEARCH_INDEX");
                echo "</p>
\t\t</div>
\t";
            }
            // line 45
            echo "
\t";
            // line 46
            if ((isset($context["S_REMOVE_INSTALL"]) ? $context["S_REMOVE_INSTALL"] : null)) {
                // line 47
                echo "\t\t<div class=\"errorbox\">
\t\t\t<h3>";
                // line 48
                echo $this->env->getExtension('phpbb')->lang("WARNING");
                echo "</h3>
\t\t\t<p>";
                // line 49
                echo $this->env->getExtension('phpbb')->lang("REMOVE_INSTALL");
                echo "</p>
\t\t</div>
\t";
            }
            // line 52
            echo "
\t";
            // line 53
            if ((isset($context["S_MBSTRING_LOADED"]) ? $context["S_MBSTRING_LOADED"] : null)) {
                // line 54
                echo "\t\t";
                if ((isset($context["S_MBSTRING_FUNC_OVERLOAD_FAIL"]) ? $context["S_MBSTRING_FUNC_OVERLOAD_FAIL"] : null)) {
                    // line 55
                    echo "\t\t\t<div class=\"errorbox\">
\t\t\t\t<h3>";
                    // line 56
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_FUNC_OVERLOAD");
                    echo "</h3>
\t\t\t\t<p>";
                    // line 57
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_FUNC_OVERLOAD_EXPLAIN");
                    echo "</p>
\t\t\t</div>
\t\t";
                }
                // line 60
                echo "
\t\t";
                // line 61
                if ((isset($context["S_MBSTRING_ENCODING_TRANSLATION_FAIL"]) ? $context["S_MBSTRING_ENCODING_TRANSLATION_FAIL"] : null)) {
                    // line 62
                    echo "\t\t\t<div class=\"errorbox\">
\t\t\t\t<h3>";
                    // line 63
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_ENCODING_TRANSLATION");
                    echo "</h3>
\t\t\t\t<p>";
                    // line 64
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_ENCODING_TRANSLATION_EXPLAIN");
                    echo "</p>
\t\t\t</div>
\t\t";
                }
                // line 67
                echo "
\t\t";
                // line 68
                if ((isset($context["S_MBSTRING_HTTP_INPUT_FAIL"]) ? $context["S_MBSTRING_HTTP_INPUT_FAIL"] : null)) {
                    // line 69
                    echo "\t\t\t<div class=\"errorbox\">
\t\t\t\t<h3>";
                    // line 70
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_HTTP_INPUT");
                    echo "</h3>
\t\t\t\t<p>";
                    // line 71
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_HTTP_INPUT_EXPLAIN");
                    echo "</p>
\t\t\t</div>
\t\t";
                }
                // line 74
                echo "
\t\t";
                // line 75
                if ((isset($context["S_MBSTRING_HTTP_OUTPUT_FAIL"]) ? $context["S_MBSTRING_HTTP_OUTPUT_FAIL"] : null)) {
                    // line 76
                    echo "\t\t\t<div class=\"errorbox\">
\t\t\t\t<h3>";
                    // line 77
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_HTTP_OUTPUT");
                    echo "</h3>
\t\t\t\t<p>";
                    // line 78
                    echo $this->env->getExtension('phpbb')->lang("ERROR_MBSTRING_HTTP_OUTPUT_EXPLAIN");
                    echo "</p>
\t\t\t</div>
\t\t";
                }
                // line 81
                echo "\t";
            }
            // line 82
            echo "
\t";
            // line 83
            if ((isset($context["S_WRITABLE_CONFIG"]) ? $context["S_WRITABLE_CONFIG"] : null)) {
                // line 84
                echo "\t\t<div class=\"errorbox notice\">
\t\t\t<p>";
                // line 85
                echo $this->env->getExtension('phpbb')->lang("WRITABLE_CONFIG");
                echo "</p>
\t\t</div>
\t";
            }
            // line 88
            echo "
\t";
            // line 89
            if ((isset($context["S_PHP_VERSION_OLD"]) ? $context["S_PHP_VERSION_OLD"] : null)) {
                // line 90
                echo "\t\t<div class=\"errorbox notice\">
\t\t\t<p>";
                // line 91
                echo $this->env->getExtension('phpbb')->lang("PHP_VERSION_OLD");
                echo "</p>
\t\t</div>
\t";
            }
            // line 94
            echo "
\t";
            // line 95
            // line 96
            echo "
\t<table class=\"table1 two-columns no-header\" data-no-responsive-header=\"true\">
\t\t<caption>";
            // line 98
            echo $this->env->getExtension('phpbb')->lang("FORUM_STATS");
            echo "</caption>
\t\t<col class=\"col1\" /><col class=\"col2\" /><col class=\"col1\" /><col class=\"col2\" />
\t<thead>
\t<tr>
\t\t<th>";
            // line 102
            echo $this->env->getExtension('phpbb')->lang("STATISTIC");
            echo "</th>
\t\t<th>";
            // line 103
            echo $this->env->getExtension('phpbb')->lang("VALUE");
            echo "</th>
\t\t<th>";
            // line 104
            echo $this->env->getExtension('phpbb')->lang("STATISTIC");
            echo "</th>
\t\t<th>";
            // line 105
            echo $this->env->getExtension('phpbb')->lang("VALUE");
            echo "</th>
\t</tr>
\t</thead>
\t<tbody>
\t<tr>
\t\t<td>";
            // line 110
            echo $this->env->getExtension('phpbb')->lang("NUMBER_POSTS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 111
            echo (isset($context["TOTAL_POSTS"]) ? $context["TOTAL_POSTS"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 112
            echo $this->env->getExtension('phpbb')->lang("POSTS_PER_DAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 113
            echo (isset($context["POSTS_PER_DAY"]) ? $context["POSTS_PER_DAY"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 116
            echo $this->env->getExtension('phpbb')->lang("NUMBER_TOPICS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 117
            echo (isset($context["TOTAL_TOPICS"]) ? $context["TOTAL_TOPICS"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 118
            echo $this->env->getExtension('phpbb')->lang("TOPICS_PER_DAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 119
            echo (isset($context["TOPICS_PER_DAY"]) ? $context["TOPICS_PER_DAY"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 122
            echo $this->env->getExtension('phpbb')->lang("NUMBER_USERS");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 123
            echo (isset($context["TOTAL_USERS"]) ? $context["TOTAL_USERS"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 124
            echo $this->env->getExtension('phpbb')->lang("USERS_PER_DAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 125
            echo (isset($context["USERS_PER_DAY"]) ? $context["USERS_PER_DAY"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 128
            echo $this->env->getExtension('phpbb')->lang("NUMBER_FILES");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 129
            echo (isset($context["TOTAL_FILES"]) ? $context["TOTAL_FILES"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 130
            echo $this->env->getExtension('phpbb')->lang("FILES_PER_DAY");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 131
            echo (isset($context["FILES_PER_DAY"]) ? $context["FILES_PER_DAY"] : null);
            echo "</strong></td>
\t</tr>


\t<tr>
\t\t<td>";
            // line 136
            echo $this->env->getExtension('phpbb')->lang("BOARD_STARTED");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 137
            echo (isset($context["START_DATE"]) ? $context["START_DATE"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 138
            echo $this->env->getExtension('phpbb')->lang("AVATAR_DIR_SIZE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 139
            echo (isset($context["AVATAR_DIR_SIZE"]) ? $context["AVATAR_DIR_SIZE"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 142
            echo $this->env->getExtension('phpbb')->lang("DATABASE_SIZE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 143
            echo (isset($context["DBSIZE"]) ? $context["DBSIZE"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 144
            echo $this->env->getExtension('phpbb')->lang("UPLOAD_DIR_SIZE");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 145
            echo (isset($context["UPLOAD_DIR_SIZE"]) ? $context["UPLOAD_DIR_SIZE"] : null);
            echo "</strong></td>
\t</tr>
\t<tr>
\t\t<td>";
            // line 148
            echo $this->env->getExtension('phpbb')->lang("DATABASE_SERVER_INFO");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 149
            echo (isset($context["DATABASE_INFO"]) ? $context["DATABASE_INFO"] : null);
            echo "</strong></td>
\t\t<td>";
            // line 150
            echo $this->env->getExtension('phpbb')->lang("GZIP_COMPRESSION");
            echo $this->env->getExtension('phpbb')->lang("COLON");
            echo " </td>
\t\t<td><strong>";
            // line 151
            echo (isset($context["GZIP_COMPRESSION"]) ? $context["GZIP_COMPRESSION"] : null);
            echo "</strong></td>
\t</tr>
\t";
            // line 153
            if (((isset($context["S_TOTAL_ORPHAN"]) ? $context["S_TOTAL_ORPHAN"] : null) || (isset($context["S_VERSIONCHECK"]) ? $context["S_VERSIONCHECK"] : null))) {
                // line 154
                echo "\t<tr>
\t";
                // line 155
                if ((isset($context["S_VERSIONCHECK"]) ? $context["S_VERSIONCHECK"] : null)) {
                    // line 156
                    echo "\t\t<td>";
                    echo $this->env->getExtension('phpbb')->lang("BOARD_VERSION");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " </td>
\t\t<td>
\t\t\t<strong><a href=\"";
                    // line 158
                    echo (isset($context["U_VERSIONCHECK"]) ? $context["U_VERSIONCHECK"] : null);
                    echo "\" ";
                    if ((isset($context["S_VERSION_UP_TO_DATE"]) ? $context["S_VERSION_UP_TO_DATE"] : null)) {
                        echo "style=\"color: #228822;\" ";
                    } elseif ( !(isset($context["S_VERSIONCHECK_FAIL"]) ? $context["S_VERSIONCHECK_FAIL"] : null)) {
                        echo "style=\"color: #BC2A4D;\" ";
                    }
                    echo "title=\"";
                    echo $this->env->getExtension('phpbb')->lang("MORE_INFORMATION");
                    echo "\">";
                    echo (isset($context["BOARD_VERSION"]) ? $context["BOARD_VERSION"] : null);
                    echo "</a></strong> [&nbsp;<a href=\"";
                    echo (isset($context["U_VERSIONCHECK_FORCE"]) ? $context["U_VERSIONCHECK_FORCE"] : null);
                    echo "\">";
                    echo $this->env->getExtension('phpbb')->lang("VERSIONCHECK_FORCE_UPDATE");
                    echo "</a>&nbsp;]
\t\t</td>
\t";
                }
                // line 161
                echo "\t";
                if ((isset($context["S_TOTAL_ORPHAN"]) ? $context["S_TOTAL_ORPHAN"] : null)) {
                    // line 162
                    echo "\t\t<td>";
                    echo $this->env->getExtension('phpbb')->lang("NUMBER_ORPHAN");
                    echo $this->env->getExtension('phpbb')->lang("COLON");
                    echo " </td>
\t\t<td><strong>";
                    // line 163
                    echo (isset($context["TOTAL_ORPHAN"]) ? $context["TOTAL_ORPHAN"] : null);
                    echo "</strong></td>
\t";
                }
                // line 165
                echo "\t";
                if (( !(isset($context["S_TOTAL_ORPHAN"]) ? $context["S_TOTAL_ORPHAN"] : null) ||  !(isset($context["S_VERSIONCHECK"]) ? $context["S_VERSIONCHECK"] : null))) {
                    // line 166
                    echo "\t\t<td>&nbsp;</td>
\t\t<td>&nbsp;</td>
\t";
                }
                // line 169
                echo "\t</tr>
\t";
            }
            // line 171
            echo "\t</tbody>
\t</table>

\t";
            // line 174
            if ((isset($context["S_ACTION_OPTIONS"]) ? $context["S_ACTION_OPTIONS"] : null)) {
                // line 175
                echo "\t\t<fieldset>
\t\t\t<legend>";
                // line 176
                echo $this->env->getExtension('phpbb')->lang("STATISTIC_RESYNC_OPTIONS");
                echo "</legend>

\t\t\t<form id=\"action_online_form\" method=\"post\" action=\"";
                // line 178
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\" data-ajax=\"true\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_online\">";
                // line 180
                echo $this->env->getExtension('phpbb')->lang("RESET_ONLINE");
                echo "</label><br /><span>&nbsp;</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"online\" /><input class=\"button2\" type=\"submit\" id=\"action_online\" name=\"action_online\" value=\"";
                // line 181
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t<form id=\"action_date_form\" method=\"post\" action=\"";
                // line 185
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\" data-ajax=\"true\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_date\">";
                // line 187
                echo $this->env->getExtension('phpbb')->lang("RESET_DATE");
                echo "</label><br /><span>&nbsp;</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"date\" /><input class=\"button2\" type=\"submit\" id=\"action_date\" name=\"action_date\" value=\"";
                // line 188
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t<form id=\"action_stats_form\" method=\"post\" action=\"";
                // line 192
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_stats\">";
                // line 194
                echo $this->env->getExtension('phpbb')->lang("RESYNC_STATS");
                echo "</label><br /><span>";
                echo $this->env->getExtension('phpbb')->lang("RESYNC_STATS_EXPLAIN");
                echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"stats\" /><input class=\"button2\" type=\"submit\" id=\"action_stats\" name=\"action_stats\" value=\"";
                // line 195
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t<form id=\"action_user_form\" method=\"post\" action=\"";
                // line 199
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_user\">";
                // line 201
                echo $this->env->getExtension('phpbb')->lang("RESYNC_POSTCOUNTS");
                echo "</label><br /><span>";
                echo $this->env->getExtension('phpbb')->lang("RESYNC_POSTCOUNTS_EXPLAIN");
                echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"user\" /><input class=\"button2\" type=\"submit\" id=\"action_user\" name=\"action_user\" value=\"";
                // line 202
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t<form id=\"action_db_track_form\" method=\"post\" action=\"";
                // line 206
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_db_track\">";
                // line 208
                echo $this->env->getExtension('phpbb')->lang("RESYNC_POST_MARKING");
                echo "</label><br /><span>";
                echo $this->env->getExtension('phpbb')->lang("RESYNC_POST_MARKING_EXPLAIN");
                echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"db_track\" /><input class=\"button2\" type=\"submit\" id=\"action_db_track\" name=\"action_db_track\" value=\"";
                // line 209
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t";
                // line 213
                if ((isset($context["S_FOUNDER"]) ? $context["S_FOUNDER"] : null)) {
                    // line 214
                    echo "\t\t\t<form id=\"action_purge_sessions_form\" method=\"post\" action=\"";
                    echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                    echo "\" data-ajax=\"true\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_purge_sessions\">";
                    // line 216
                    echo $this->env->getExtension('phpbb')->lang("PURGE_SESSIONS");
                    echo "</label><br /><span>";
                    echo $this->env->getExtension('phpbb')->lang("PURGE_SESSIONS_EXPLAIN");
                    echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"purge_sessions\" /><input class=\"button2\" type=\"submit\" id=\"action_purge_sessions\" name=\"action_purge_sessions\" value=\"";
                    // line 217
                    echo $this->env->getExtension('phpbb')->lang("RUN");
                    echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>
\t\t\t";
                }
                // line 221
                echo "
\t\t\t<form id=\"action_purge_cache_form\" method=\"post\" action=\"";
                // line 222
                echo (isset($context["U_ACTION"]) ? $context["U_ACTION"] : null);
                echo "\" data-ajax=\"true\">
\t\t\t\t<dl>
\t\t\t\t\t<dt><label for=\"action_purge_cache\">";
                // line 224
                echo $this->env->getExtension('phpbb')->lang("PURGE_CACHE");
                echo "</label><br /><span>";
                echo $this->env->getExtension('phpbb')->lang("PURGE_CACHE_EXPLAIN");
                echo "</span></dt>
\t\t\t\t\t<dd><input type=\"hidden\" name=\"action\" value=\"purge_cache\" /><input class=\"button2\" type=\"submit\" id=\"action_purge_cache\" name=\"action_purge_cache\" value=\"";
                // line 225
                echo $this->env->getExtension('phpbb')->lang("RUN");
                echo "\" /></dd>
\t\t\t\t</dl>
\t\t\t</form>

\t\t\t";
                // line 229
                // line 230
                echo "  \t\t</fieldset>
\t";
            }
            // line 232
            echo "
\t";
            // line 233
            if (twig_length_filter($this->env, $this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "log", array()))) {
                // line 234
                echo "\t\t<h2>";
                echo $this->env->getExtension('phpbb')->lang("ADMIN_LOG");
                echo "</h2>

\t\t<p>";
                // line 236
                echo $this->env->getExtension('phpbb')->lang("ADMIN_LOG_INDEX_EXPLAIN");
                echo "</p>

\t\t<div style=\"text-align: right;\"><a href=\"";
                // line 238
                echo (isset($context["U_ADMIN_LOG"]) ? $context["U_ADMIN_LOG"] : null);
                echo "\">&raquo; ";
                echo $this->env->getExtension('phpbb')->lang("VIEW_ADMIN_LOG");
                echo "</a></div>

\t\t<table class=\"table1 zebra-table\">
\t\t<thead>
\t\t<tr>
\t\t\t<th>";
                // line 243
                echo $this->env->getExtension('phpbb')->lang("USERNAME");
                echo "</th>
\t\t\t<th>";
                // line 244
                echo $this->env->getExtension('phpbb')->lang("IP");
                echo "</th>
\t\t\t<th>";
                // line 245
                echo $this->env->getExtension('phpbb')->lang("TIME");
                echo "</th>
\t\t\t<th>";
                // line 246
                echo $this->env->getExtension('phpbb')->lang("ACTION");
                echo "</th>
\t\t</tr>
\t\t</thead>
\t\t<tbody>
\t\t";
                // line 250
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "log", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["log"]) {
                    // line 251
                    echo "\t\t\t<tr>
\t\t\t\t<td>";
                    // line 252
                    echo $this->getAttribute($context["log"], "USERNAME", array());
                    echo "</td>
\t\t\t\t<td style=\"text-align: center;\">";
                    // line 253
                    echo $this->getAttribute($context["log"], "IP", array());
                    echo "</td>
\t\t\t\t<td style=\"text-align: center;\">";
                    // line 254
                    echo $this->getAttribute($context["log"], "DATE", array());
                    echo "</td>
\t\t\t\t<td>";
                    // line 255
                    echo $this->getAttribute($context["log"], "ACTION", array());
                    echo "</td>
\t\t\t</tr>
\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['log'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 258
                echo "\t\t</tbody>
\t\t</table>
\t";
            }
            // line 261
            echo "
\t";
            // line 262
            if ((isset($context["S_INACTIVE_USERS"]) ? $context["S_INACTIVE_USERS"] : null)) {
                // line 263
                echo "\t\t<h2>";
                echo $this->env->getExtension('phpbb')->lang("INACTIVE_USERS");
                echo "</h2>

\t\t<p>";
                // line 265
                echo $this->env->getExtension('phpbb')->lang("INACTIVE_USERS_EXPLAIN_INDEX");
                echo "</p>

\t\t<div style=\"text-align: right;\"><a href=\"";
                // line 267
                echo (isset($context["U_INACTIVE_USERS"]) ? $context["U_INACTIVE_USERS"] : null);
                echo "\">&raquo; ";
                echo $this->env->getExtension('phpbb')->lang("VIEW_INACTIVE_USERS");
                echo "</a></div>

\t\t<table class=\"table1 zebra-table\">
\t\t<thead>
\t\t<tr>
\t\t\t<th>";
                // line 272
                echo $this->env->getExtension('phpbb')->lang("USERNAME");
                echo "</th>
\t\t\t<th>";
                // line 273
                echo $this->env->getExtension('phpbb')->lang("JOINED");
                echo "</th>
\t\t\t<th>";
                // line 274
                echo $this->env->getExtension('phpbb')->lang("INACTIVE_DATE");
                echo "</th>
\t\t\t<th>";
                // line 275
                echo $this->env->getExtension('phpbb')->lang("LAST_VISIT");
                echo "</th>
\t\t\t<th>";
                // line 276
                echo $this->env->getExtension('phpbb')->lang("INACTIVE_REASON");
                echo "</th>
\t\t</tr>
\t\t</thead>
\t\t<tbody>
\t\t";
                // line 280
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "inactive", array()));
                $context['_iterated'] = false;
                foreach ($context['_seq'] as $context["_key"] => $context["inactive"]) {
                    // line 281
                    echo "\t\t\t<tr>
\t\t\t\t<td style=\"vertical-align: top;\">
\t\t\t\t\t";
                    // line 283
                    echo $this->getAttribute($context["inactive"], "USERNAME_FULL", array());
                    echo "
\t\t\t\t\t";
                    // line 284
                    if ($this->getAttribute($context["inactive"], "POSTS", array())) {
                        echo "<br />";
                        echo $this->env->getExtension('phpbb')->lang("POSTS");
                        echo $this->env->getExtension('phpbb')->lang("COLON");
                        echo " <strong>";
                        echo $this->getAttribute($context["inactive"], "POSTS", array());
                        echo "</strong> [<a href=\"";
                        echo $this->getAttribute($context["inactive"], "U_SEARCH_USER", array());
                        echo "\">";
                        echo $this->env->getExtension('phpbb')->lang("SEARCH_USER_POSTS");
                        echo "</a>]";
                    }
                    // line 285
                    echo "\t\t\t\t</td>
\t\t\t\t<td style=\"vertical-align: top;\">";
                    // line 286
                    echo $this->getAttribute($context["inactive"], "JOINED", array());
                    echo "</td>
\t\t\t\t<td style=\"vertical-align: top;\">";
                    // line 287
                    echo $this->getAttribute($context["inactive"], "INACTIVE_DATE", array());
                    echo "</td>
\t\t\t\t<td style=\"vertical-align: top;\">";
                    // line 288
                    echo $this->getAttribute($context["inactive"], "LAST_VISIT", array());
                    echo "</td>
\t\t\t\t<td style=\"vertical-align: top;\">
\t\t\t\t\t";
                    // line 290
                    echo $this->getAttribute($context["inactive"], "REASON", array());
                    echo "
\t\t\t\t\t";
                    // line 291
                    if ($this->getAttribute($context["inactive"], "REMINDED", array())) {
                        echo "<br />";
                        echo $this->getAttribute($context["inactive"], "REMINDED_EXPLAIN", array());
                    }
                    // line 292
                    echo "\t\t\t\t</td>
\t\t\t</tr>
\t\t";
                    $context['_iterated'] = true;
                }
                if (!$context['_iterated']) {
                    // line 295
                    echo "\t\t\t<tr>
\t\t\t\t<td colspan=\"5\" style=\"text-align: center;\">";
                    // line 296
                    echo $this->env->getExtension('phpbb')->lang("NO_INACTIVE_USERS");
                    echo "</td>
\t\t\t</tr>
\t\t";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['inactive'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 299
                echo "\t\t</tbody>
\t\t</table>
\t";
            }
            // line 302
            echo "
";
        }
        // line 304
        echo "
";
        // line 305
        $location = "overall_footer.html";
        $namespace = false;
        if (strpos($location, '@') === 0) {
            $namespace = substr($location, 1, strpos($location, '/') - 1);
            $previous_look_up_order = $this->env->getNamespaceLookUpOrder();
            $this->env->setNamespaceLookUpOrder(array($namespace, '__main__'));
        }
        $this->loadTemplate("overall_footer.html", "acp_main.html", 305)->display($context);
        if ($namespace) {
            $this->env->setNamespaceLookUpOrder($previous_look_up_order);
        }
    }

    public function getTemplateName()
    {
        return "acp_main.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  871 => 305,  868 => 304,  864 => 302,  859 => 299,  850 => 296,  847 => 295,  840 => 292,  835 => 291,  831 => 290,  826 => 288,  822 => 287,  818 => 286,  815 => 285,  802 => 284,  798 => 283,  794 => 281,  789 => 280,  782 => 276,  778 => 275,  774 => 274,  770 => 273,  766 => 272,  756 => 267,  751 => 265,  745 => 263,  743 => 262,  740 => 261,  735 => 258,  726 => 255,  722 => 254,  718 => 253,  714 => 252,  711 => 251,  707 => 250,  700 => 246,  696 => 245,  692 => 244,  688 => 243,  678 => 238,  673 => 236,  667 => 234,  665 => 233,  662 => 232,  658 => 230,  657 => 229,  650 => 225,  644 => 224,  639 => 222,  636 => 221,  629 => 217,  623 => 216,  617 => 214,  615 => 213,  608 => 209,  602 => 208,  597 => 206,  590 => 202,  584 => 201,  579 => 199,  572 => 195,  566 => 194,  561 => 192,  554 => 188,  550 => 187,  545 => 185,  538 => 181,  534 => 180,  529 => 178,  524 => 176,  521 => 175,  519 => 174,  514 => 171,  510 => 169,  505 => 166,  502 => 165,  497 => 163,  491 => 162,  488 => 161,  468 => 158,  461 => 156,  459 => 155,  456 => 154,  454 => 153,  449 => 151,  444 => 150,  440 => 149,  435 => 148,  429 => 145,  424 => 144,  420 => 143,  415 => 142,  409 => 139,  404 => 138,  400 => 137,  395 => 136,  387 => 131,  382 => 130,  378 => 129,  373 => 128,  367 => 125,  362 => 124,  358 => 123,  353 => 122,  347 => 119,  342 => 118,  338 => 117,  333 => 116,  327 => 113,  322 => 112,  318 => 111,  313 => 110,  305 => 105,  301 => 104,  297 => 103,  293 => 102,  286 => 98,  282 => 96,  281 => 95,  278 => 94,  272 => 91,  269 => 90,  267 => 89,  264 => 88,  258 => 85,  255 => 84,  253 => 83,  250 => 82,  247 => 81,  241 => 78,  237 => 77,  234 => 76,  232 => 75,  229 => 74,  223 => 71,  219 => 70,  216 => 69,  214 => 68,  211 => 67,  205 => 64,  201 => 63,  198 => 62,  196 => 61,  193 => 60,  187 => 57,  183 => 56,  180 => 55,  177 => 54,  175 => 53,  172 => 52,  166 => 49,  162 => 48,  159 => 47,  157 => 46,  154 => 45,  148 => 42,  144 => 41,  141 => 40,  139 => 39,  136 => 38,  130 => 35,  127 => 34,  124 => 33,  112 => 30,  108 => 29,  105 => 28,  103 => 27,  92 => 25,  88 => 24,  84 => 23,  81 => 22,  79 => 21,  70 => 19,  67 => 18,  65 => 17,  60 => 15,  55 => 13,  52 => 12,  46 => 9,  41 => 7,  38 => 6,  36 => 5,  31 => 2,  19 => 1,);
    }
}
/* <!-- INCLUDE overall_header.html -->*/
/* */
/* <a id="maincontent"></a>*/
/* */
/* <!-- IF S_RESTORE_PERMISSIONS -->*/
/* */
/* 	<h1>{L_PERMISSIONS_TRANSFERRED}</h1>*/
/* */
/* 	<p>{L_PERMISSIONS_TRANSFERRED_EXPLAIN}</p>*/
/* */
/* <!-- ELSE -->*/
/* */
/* 	<h1>{L_WELCOME_PHPBB}</h1>*/
/* */
/* 	<p>{L_ADMIN_INTRO}</p>*/
/* */
/* 	<!-- IF S_UPDATE_INCOMPLETE -->*/
/* 		<div class="errorbox">*/
/* 			<p>{L_UPDATE_INCOMPLETE} <a href="{U_VERSIONCHECK}">{L_MORE_INFORMATION}</a></p>*/
/* 		</div>*/
/* 	<!-- ELSEIF S_VERSIONCHECK_FAIL -->*/
/* 		<div class="errorbox notice">*/
/* 			<p>{L_VERSIONCHECK_FAIL}</p>*/
/* 			<p>{VERSIONCHECK_FAIL_REASON}</p>*/
/* 			<p><a href="{U_VERSIONCHECK_FORCE}">{L_VERSIONCHECK_FORCE_UPDATE}</a> &middot; <a href="{U_VERSIONCHECK}">{L_MORE_INFORMATION}</a></p>*/
/* 		</div>*/
/* 	<!-- ELSEIF not S_VERSION_UP_TO_DATE -->*/
/* 		<div class="errorbox">*/
/* 			<p>{L_VERSION_NOT_UP_TO_DATE_TITLE}</p>*/
/* 			<p><a href="{U_VERSIONCHECK_FORCE}">{L_VERSIONCHECK_FORCE_UPDATE}</a> &middot; <a href="{U_VERSIONCHECK}">{L_MORE_INFORMATION}</a></p>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* 	<!-- IF S_VERSION_UPGRADEABLE -->*/
/* 		<div class="errorbox notice">*/
/* 			<p>{UPGRADE_INSTRUCTIONS}</p>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_SEARCH_INDEX_MISSING -->*/
/* 		<div class="errorbox">*/
/* 			<h3>{L_WARNING}</h3>*/
/* 			<p>{L_NO_SEARCH_INDEX}</p>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_REMOVE_INSTALL -->*/
/* 		<div class="errorbox">*/
/* 			<h3>{L_WARNING}</h3>*/
/* 			<p>{L_REMOVE_INSTALL}</p>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_MBSTRING_LOADED -->*/
/* 		<!-- IF S_MBSTRING_FUNC_OVERLOAD_FAIL -->*/
/* 			<div class="errorbox">*/
/* 				<h3>{L_ERROR_MBSTRING_FUNC_OVERLOAD}</h3>*/
/* 				<p>{L_ERROR_MBSTRING_FUNC_OVERLOAD_EXPLAIN}</p>*/
/* 			</div>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- IF S_MBSTRING_ENCODING_TRANSLATION_FAIL -->*/
/* 			<div class="errorbox">*/
/* 				<h3>{L_ERROR_MBSTRING_ENCODING_TRANSLATION}</h3>*/
/* 				<p>{L_ERROR_MBSTRING_ENCODING_TRANSLATION_EXPLAIN}</p>*/
/* 			</div>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- IF S_MBSTRING_HTTP_INPUT_FAIL -->*/
/* 			<div class="errorbox">*/
/* 				<h3>{L_ERROR_MBSTRING_HTTP_INPUT}</h3>*/
/* 				<p>{L_ERROR_MBSTRING_HTTP_INPUT_EXPLAIN}</p>*/
/* 			</div>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- IF S_MBSTRING_HTTP_OUTPUT_FAIL -->*/
/* 			<div class="errorbox">*/
/* 				<h3>{L_ERROR_MBSTRING_HTTP_OUTPUT}</h3>*/
/* 				<p>{L_ERROR_MBSTRING_HTTP_OUTPUT_EXPLAIN}</p>*/
/* 			</div>*/
/* 		<!-- ENDIF -->*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_WRITABLE_CONFIG -->*/
/* 		<div class="errorbox notice">*/
/* 			<p>{L_WRITABLE_CONFIG}</p>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_PHP_VERSION_OLD -->*/
/* 		<div class="errorbox notice">*/
/* 			<p>{L_PHP_VERSION_OLD}</p>*/
/* 		</div>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- EVENT acp_main_notice_after -->*/
/* */
/* 	<table class="table1 two-columns no-header" data-no-responsive-header="true">*/
/* 		<caption>{L_FORUM_STATS}</caption>*/
/* 		<col class="col1" /><col class="col2" /><col class="col1" /><col class="col2" />*/
/* 	<thead>*/
/* 	<tr>*/
/* 		<th>{L_STATISTIC}</th>*/
/* 		<th>{L_VALUE}</th>*/
/* 		<th>{L_STATISTIC}</th>*/
/* 		<th>{L_VALUE}</th>*/
/* 	</tr>*/
/* 	</thead>*/
/* 	<tbody>*/
/* 	<tr>*/
/* 		<td>{L_NUMBER_POSTS}{L_COLON} </td>*/
/* 		<td><strong>{TOTAL_POSTS}</strong></td>*/
/* 		<td>{L_POSTS_PER_DAY}{L_COLON} </td>*/
/* 		<td><strong>{POSTS_PER_DAY}</strong></td>*/
/* 	</tr>*/
/* 	<tr>*/
/* 		<td>{L_NUMBER_TOPICS}{L_COLON} </td>*/
/* 		<td><strong>{TOTAL_TOPICS}</strong></td>*/
/* 		<td>{L_TOPICS_PER_DAY}{L_COLON} </td>*/
/* 		<td><strong>{TOPICS_PER_DAY}</strong></td>*/
/* 	</tr>*/
/* 	<tr>*/
/* 		<td>{L_NUMBER_USERS}{L_COLON} </td>*/
/* 		<td><strong>{TOTAL_USERS}</strong></td>*/
/* 		<td>{L_USERS_PER_DAY}{L_COLON} </td>*/
/* 		<td><strong>{USERS_PER_DAY}</strong></td>*/
/* 	</tr>*/
/* 	<tr>*/
/* 		<td>{L_NUMBER_FILES}{L_COLON} </td>*/
/* 		<td><strong>{TOTAL_FILES}</strong></td>*/
/* 		<td>{L_FILES_PER_DAY}{L_COLON} </td>*/
/* 		<td><strong>{FILES_PER_DAY}</strong></td>*/
/* 	</tr>*/
/* */
/* */
/* 	<tr>*/
/* 		<td>{L_BOARD_STARTED}{L_COLON} </td>*/
/* 		<td><strong>{START_DATE}</strong></td>*/
/* 		<td>{L_AVATAR_DIR_SIZE}{L_COLON} </td>*/
/* 		<td><strong>{AVATAR_DIR_SIZE}</strong></td>*/
/* 	</tr>*/
/* 	<tr>*/
/* 		<td>{L_DATABASE_SIZE}{L_COLON} </td>*/
/* 		<td><strong>{DBSIZE}</strong></td>*/
/* 		<td>{L_UPLOAD_DIR_SIZE}{L_COLON} </td>*/
/* 		<td><strong>{UPLOAD_DIR_SIZE}</strong></td>*/
/* 	</tr>*/
/* 	<tr>*/
/* 		<td>{L_DATABASE_SERVER_INFO}{L_COLON} </td>*/
/* 		<td><strong>{DATABASE_INFO}</strong></td>*/
/* 		<td>{L_GZIP_COMPRESSION}{L_COLON} </td>*/
/* 		<td><strong>{GZIP_COMPRESSION}</strong></td>*/
/* 	</tr>*/
/* 	<!-- IF S_TOTAL_ORPHAN or S_VERSIONCHECK -->*/
/* 	<tr>*/
/* 	<!-- IF S_VERSIONCHECK -->*/
/* 		<td>{L_BOARD_VERSION}{L_COLON} </td>*/
/* 		<td>*/
/* 			<strong><a href="{U_VERSIONCHECK}" <!-- IF S_VERSION_UP_TO_DATE -->style="color: #228822;" <!-- ELSEIF not S_VERSIONCHECK_FAIL -->style="color: #BC2A4D;" <!-- ENDIF -->title="{L_MORE_INFORMATION}">{BOARD_VERSION}</a></strong> [&nbsp;<a href="{U_VERSIONCHECK_FORCE}">{L_VERSIONCHECK_FORCE_UPDATE}</a>&nbsp;]*/
/* 		</td>*/
/* 	<!-- ENDIF -->*/
/* 	<!-- IF S_TOTAL_ORPHAN -->*/
/* 		<td>{L_NUMBER_ORPHAN}{L_COLON} </td>*/
/* 		<td><strong>{TOTAL_ORPHAN}</strong></td>*/
/* 	<!-- ENDIF -->*/
/* 	<!-- IF not S_TOTAL_ORPHAN or not S_VERSIONCHECK -->*/
/* 		<td>&nbsp;</td>*/
/* 		<td>&nbsp;</td>*/
/* 	<!-- ENDIF -->*/
/* 	</tr>*/
/* 	<!-- ENDIF -->*/
/* 	</tbody>*/
/* 	</table>*/
/* */
/* 	<!-- IF S_ACTION_OPTIONS -->*/
/* 		<fieldset>*/
/* 			<legend>{L_STATISTIC_RESYNC_OPTIONS}</legend>*/
/* */
/* 			<form id="action_online_form" method="post" action="{U_ACTION}" data-ajax="true">*/
/* 				<dl>*/
/* 					<dt><label for="action_online">{L_RESET_ONLINE}</label><br /><span>&nbsp;</span></dt>*/
/* 					<dd><input type="hidden" name="action" value="online" /><input class="button2" type="submit" id="action_online" name="action_online" value="{L_RUN}" /></dd>*/
/* 				</dl>*/
/* 			</form>*/
/* */
/* 			<form id="action_date_form" method="post" action="{U_ACTION}" data-ajax="true">*/
/* 				<dl>*/
/* 					<dt><label for="action_date">{L_RESET_DATE}</label><br /><span>&nbsp;</span></dt>*/
/* 					<dd><input type="hidden" name="action" value="date" /><input class="button2" type="submit" id="action_date" name="action_date" value="{L_RUN}" /></dd>*/
/* 				</dl>*/
/* 			</form>*/
/* */
/* 			<form id="action_stats_form" method="post" action="{U_ACTION}">*/
/* 				<dl>*/
/* 					<dt><label for="action_stats">{L_RESYNC_STATS}</label><br /><span>{L_RESYNC_STATS_EXPLAIN}</span></dt>*/
/* 					<dd><input type="hidden" name="action" value="stats" /><input class="button2" type="submit" id="action_stats" name="action_stats" value="{L_RUN}" /></dd>*/
/* 				</dl>*/
/* 			</form>*/
/* */
/* 			<form id="action_user_form" method="post" action="{U_ACTION}">*/
/* 				<dl>*/
/* 					<dt><label for="action_user">{L_RESYNC_POSTCOUNTS}</label><br /><span>{L_RESYNC_POSTCOUNTS_EXPLAIN}</span></dt>*/
/* 					<dd><input type="hidden" name="action" value="user" /><input class="button2" type="submit" id="action_user" name="action_user" value="{L_RUN}" /></dd>*/
/* 				</dl>*/
/* 			</form>*/
/* */
/* 			<form id="action_db_track_form" method="post" action="{U_ACTION}">*/
/* 				<dl>*/
/* 					<dt><label for="action_db_track">{L_RESYNC_POST_MARKING}</label><br /><span>{L_RESYNC_POST_MARKING_EXPLAIN}</span></dt>*/
/* 					<dd><input type="hidden" name="action" value="db_track" /><input class="button2" type="submit" id="action_db_track" name="action_db_track" value="{L_RUN}" /></dd>*/
/* 				</dl>*/
/* 			</form>*/
/* */
/* 			<!-- IF S_FOUNDER -->*/
/* 			<form id="action_purge_sessions_form" method="post" action="{U_ACTION}" data-ajax="true">*/
/* 				<dl>*/
/* 					<dt><label for="action_purge_sessions">{L_PURGE_SESSIONS}</label><br /><span>{L_PURGE_SESSIONS_EXPLAIN}</span></dt>*/
/* 					<dd><input type="hidden" name="action" value="purge_sessions" /><input class="button2" type="submit" id="action_purge_sessions" name="action_purge_sessions" value="{L_RUN}" /></dd>*/
/* 				</dl>*/
/* 			</form>*/
/* 			<!-- ENDIF -->*/
/* */
/* 			<form id="action_purge_cache_form" method="post" action="{U_ACTION}" data-ajax="true">*/
/* 				<dl>*/
/* 					<dt><label for="action_purge_cache">{L_PURGE_CACHE}</label><br /><span>{L_PURGE_CACHE_EXPLAIN}</span></dt>*/
/* 					<dd><input type="hidden" name="action" value="purge_cache" /><input class="button2" type="submit" id="action_purge_cache" name="action_purge_cache" value="{L_RUN}" /></dd>*/
/* 				</dl>*/
/* 			</form>*/
/* */
/* 			<!-- EVENT acp_main_actions_append -->*/
/*   		</fieldset>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF .log -->*/
/* 		<h2>{L_ADMIN_LOG}</h2>*/
/* */
/* 		<p>{L_ADMIN_LOG_INDEX_EXPLAIN}</p>*/
/* */
/* 		<div style="text-align: right;"><a href="{U_ADMIN_LOG}">&raquo; {L_VIEW_ADMIN_LOG}</a></div>*/
/* */
/* 		<table class="table1 zebra-table">*/
/* 		<thead>*/
/* 		<tr>*/
/* 			<th>{L_USERNAME}</th>*/
/* 			<th>{L_IP}</th>*/
/* 			<th>{L_TIME}</th>*/
/* 			<th>{L_ACTION}</th>*/
/* 		</tr>*/
/* 		</thead>*/
/* 		<tbody>*/
/* 		<!-- BEGIN log -->*/
/* 			<tr>*/
/* 				<td>{log.USERNAME}</td>*/
/* 				<td style="text-align: center;">{log.IP}</td>*/
/* 				<td style="text-align: center;">{log.DATE}</td>*/
/* 				<td>{log.ACTION}</td>*/
/* 			</tr>*/
/* 		<!-- END log -->*/
/* 		</tbody>*/
/* 		</table>*/
/* 	<!-- ENDIF -->*/
/* */
/* 	<!-- IF S_INACTIVE_USERS -->*/
/* 		<h2>{L_INACTIVE_USERS}</h2>*/
/* */
/* 		<p>{L_INACTIVE_USERS_EXPLAIN_INDEX}</p>*/
/* */
/* 		<div style="text-align: right;"><a href="{U_INACTIVE_USERS}">&raquo; {L_VIEW_INACTIVE_USERS}</a></div>*/
/* */
/* 		<table class="table1 zebra-table">*/
/* 		<thead>*/
/* 		<tr>*/
/* 			<th>{L_USERNAME}</th>*/
/* 			<th>{L_JOINED}</th>*/
/* 			<th>{L_INACTIVE_DATE}</th>*/
/* 			<th>{L_LAST_VISIT}</th>*/
/* 			<th>{L_INACTIVE_REASON}</th>*/
/* 		</tr>*/
/* 		</thead>*/
/* 		<tbody>*/
/* 		<!-- BEGIN inactive -->*/
/* 			<tr>*/
/* 				<td style="vertical-align: top;">*/
/* 					{inactive.USERNAME_FULL}*/
/* 					<!-- IF inactive.POSTS --><br />{L_POSTS}{L_COLON} <strong>{inactive.POSTS}</strong> [<a href="{inactive.U_SEARCH_USER}">{L_SEARCH_USER_POSTS}</a>]<!-- ENDIF -->*/
/* 				</td>*/
/* 				<td style="vertical-align: top;">{inactive.JOINED}</td>*/
/* 				<td style="vertical-align: top;">{inactive.INACTIVE_DATE}</td>*/
/* 				<td style="vertical-align: top;">{inactive.LAST_VISIT}</td>*/
/* 				<td style="vertical-align: top;">*/
/* 					{inactive.REASON}*/
/* 					<!-- IF inactive.REMINDED --><br />{inactive.REMINDED_EXPLAIN}<!-- ENDIF -->*/
/* 				</td>*/
/* 			</tr>*/
/* 		<!-- BEGINELSE -->*/
/* 			<tr>*/
/* 				<td colspan="5" style="text-align: center;">{L_NO_INACTIVE_USERS}</td>*/
/* 			</tr>*/
/* 		<!-- END inactive -->*/
/* 		</tbody>*/
/* 		</table>*/
/* 	<!-- ENDIF -->*/
/* */
/* <!-- ENDIF -->*/
/* */
/* <!-- INCLUDE overall_footer.html -->*/
/* */
