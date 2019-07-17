<?php

/* attachment.html */
class __TwigTemplate_2d2d8e961be21a7b8fec34914833f8790c034620468cb3e0ff81f27735cf98bd extends Twig_Template
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
        // line 2
        echo "
";
        // line 3
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["loops"]) ? $context["loops"] : null), "_file", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["_file"]) {
            // line 4
            echo "\t";
            if ($this->getAttribute($context["_file"], "S_DENIED", array())) {
                // line 5
                echo "\t<p>[";
                echo $this->getAttribute($context["_file"], "DENIED_MESSAGE", array());
                echo "]</p>
\t";
            } else {
                // line 7
                echo "\t\t";
                // line 8
                echo "
\t\t";
                // line 9
                if ($this->getAttribute($context["_file"], "S_THUMBNAIL", array())) {
                    // line 10
                    echo "\t\t<dl class=\"thumbnail\">
\t\t\t<dt><a href=\"";
                    // line 11
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\"><img src=\"";
                    echo $this->getAttribute($context["_file"], "THUMB_IMAGE", array());
                    echo "\" class=\"postimage\" alt=\"";
                    echo $this->getAttribute($context["_file"], "DOWNLOAD_NAME", array());
                    echo "\" title=\"";
                    echo $this->getAttribute($context["_file"], "DOWNLOAD_NAME", array());
                    echo " (";
                    echo $this->getAttribute($context["_file"], "FILESIZE", array());
                    echo " ";
                    echo $this->getAttribute($context["_file"], "SIZE_LANG", array());
                    echo ") ";
                    echo $this->getAttribute($context["_file"], "L_DOWNLOAD_COUNT", array());
                    echo "\" /></a></dt>
\t\t\t";
                    // line 12
                    if ($this->getAttribute($context["_file"], "COMMENT", array())) {
                        echo "<dd> ";
                        echo $this->getAttribute($context["_file"], "COMMENT", array());
                        echo "</dd>";
                    }
                    // line 13
                    echo "\t\t</dl>
\t\t";
                }
                // line 15
                echo "
\t\t";
                // line 16
                if ($this->getAttribute($context["_file"], "S_IMAGE", array())) {
                    // line 17
                    echo "\t\t<dl class=\"file\">
\t\t\t<dt class=\"attach-image\"><img src=\"";
                    // line 18
                    echo $this->getAttribute($context["_file"], "U_INLINE_LINK", array());
                    echo "\" class=\"postimage\" alt=\"";
                    echo $this->getAttribute($context["_file"], "DOWNLOAD_NAME", array());
                    echo "\" onclick=\"viewableArea(this);\" /></dt>
\t\t\t";
                    // line 19
                    if ($this->getAttribute($context["_file"], "COMMENT", array())) {
                        echo "<dd><em>";
                        echo $this->getAttribute($context["_file"], "COMMENT", array());
                        echo "</em></dd>";
                    }
                    // line 20
                    echo "\t\t\t<dd>";
                    echo $this->getAttribute($context["_file"], "DOWNLOAD_NAME", array());
                    echo " (";
                    echo $this->getAttribute($context["_file"], "FILESIZE", array());
                    echo " ";
                    echo $this->getAttribute($context["_file"], "SIZE_LANG", array());
                    echo ") ";
                    echo $this->getAttribute($context["_file"], "L_DOWNLOAD_COUNT", array());
                    echo "</dd>
\t\t</dl>
\t\t";
                }
                // line 23
                echo "
\t\t";
                // line 24
                if ($this->getAttribute($context["_file"], "S_FILE", array())) {
                    // line 25
                    echo "\t\t<dl class=\"file\">
\t\t\t<dt>";
                    // line 26
                    if ($this->getAttribute($context["_file"], "UPLOAD_ICON", array())) {
                        echo $this->getAttribute($context["_file"], "UPLOAD_ICON", array());
                        echo " ";
                    }
                    echo "<a class=\"postlink\" href=\"";
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\">";
                    echo $this->getAttribute($context["_file"], "DOWNLOAD_NAME", array());
                    echo "</a></dt>
\t\t\t";
                    // line 27
                    if ($this->getAttribute($context["_file"], "COMMENT", array())) {
                        echo "<dd><em>";
                        echo $this->getAttribute($context["_file"], "COMMENT", array());
                        echo "</em></dd>";
                    }
                    // line 28
                    echo "\t\t\t<dd>(";
                    echo $this->getAttribute($context["_file"], "FILESIZE", array());
                    echo " ";
                    echo $this->getAttribute($context["_file"], "SIZE_LANG", array());
                    echo ") ";
                    echo $this->getAttribute($context["_file"], "L_DOWNLOAD_COUNT", array());
                    echo "</dd>
\t\t</dl>
\t\t";
                }
                // line 31
                echo "
\t\t";
                // line 32
                if ($this->getAttribute($context["_file"], "S_WM_FILE", array())) {
                    // line 33
                    echo "\t\t\t<!-- method used here from http://alistapart.com/articles/byebyeembed / autosizing seems to not work always, this will not fix -->
\t\t\t<object width=\"320\" height=\"285\" classid=\"CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6\" id=\"wmstream_";
                    // line 34
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\">
\t\t\t\t<param name=\"url\" value=\"";
                    // line 35
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\" />
\t\t\t\t<param name=\"showcontrols\" value=\"1\" />
\t\t\t\t<param name=\"showdisplay\" value=\"0\" />
\t\t\t\t<param name=\"showstatusbar\" value=\"0\" />
\t\t\t\t<param name=\"autosize\" value=\"1\" />
\t\t\t\t<param name=\"autostart\" value=\"0\" />
\t\t\t\t<param name=\"visible\" value=\"1\" />
\t\t\t\t<param name=\"animationstart\" value=\"0\" />
\t\t\t\t<param name=\"loop\" value=\"0\" />
\t\t\t\t<param name=\"src\" value=\"";
                    // line 44
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\" />
\t\t\t\t<!--[if !IE]>-->
\t\t\t\t\t<object width=\"320\" height=\"285\" type=\"video/x-ms-wmv\" data=\"";
                    // line 46
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\">
\t\t\t\t\t\t<param name=\"src\" value=\"";
                    // line 47
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\" />
\t\t\t\t\t\t<param name=\"controller\" value=\"1\" />
\t\t\t\t\t\t<param name=\"showcontrols\" value=\"1\" />
\t\t\t\t\t\t<param name=\"showdisplay\" value=\"0\" />
\t\t\t\t\t\t<param name=\"showstatusbar\" value=\"0\" />
\t\t\t\t\t\t<param name=\"autosize\" value=\"1\" />
\t\t\t\t\t\t<param name=\"autostart\" value=\"0\" />
\t\t\t\t\t\t<param name=\"visible\" value=\"1\" />
\t\t\t\t\t\t<param name=\"animationstart\" value=\"0\" />
\t\t\t\t\t\t<param name=\"loop\" value=\"0\" />
\t\t\t\t\t</object>
\t\t\t\t<!--<![endif]-->
\t\t\t</object>

\t\t";
                } elseif ($this->getAttribute(                // line 61
$context["_file"], "S_FLASH_FILE", array())) {
                    // line 62
                    echo "\t\t\t<object classid=\"clsid:D27CDB6E-AE6D-11CF-96B8-444553540000\" codebase=\"http://active.macromedia.com/flash2/cabs/swflash.cab#version=5,0,0,0\" width=\"";
                    echo $this->getAttribute($context["_file"], "WIDTH", array());
                    echo "\" height=\"";
                    echo $this->getAttribute($context["_file"], "HEIGHT", array());
                    echo "\">
\t\t\t\t<param name=\"movie\" value=\"";
                    // line 63
                    echo $this->getAttribute($context["_file"], "U_VIEW_LINK", array());
                    echo "\" />
\t\t\t\t<param name=\"play\" value=\"true\" />
\t\t\t\t<param name=\"loop\" value=\"true\" />
\t\t\t\t<param name=\"quality\" value=\"high\" />
\t\t\t\t<param name=\"allowScriptAccess\" value=\"never\" />
\t\t\t\t<param name=\"allowNetworking\" value=\"internal\" />
\t\t\t\t<embed src=\"";
                    // line 69
                    echo $this->getAttribute($context["_file"], "U_VIEW_LINK", array());
                    echo "\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\" width=\"";
                    echo $this->getAttribute($context["_file"], "WIDTH", array());
                    echo "\" height=\"";
                    echo $this->getAttribute($context["_file"], "HEIGHT", array());
                    echo "\" play=\"true\" loop=\"true\" quality=\"high\" allowscriptaccess=\"never\" allownetworking=\"internal\"></embed>
\t\t\t</object>
\t\t";
                } elseif ($this->getAttribute(                // line 71
$context["_file"], "S_QUICKTIME_FILE", array())) {
                    // line 72
                    echo "\t\t\t<object id=\"qtstream_";
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\" classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" codebase=\"http://www.apple.com/qtactivex/qtplugin.cab#version=6,0,2,0\" width=\"320\" height=\"285\">
\t\t\t\t<param name=\"src\" value=\"";
                    // line 73
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\" />
\t\t\t\t<param name=\"controller\" value=\"true\" />
\t\t\t\t<param name=\"autoplay\" value=\"false\" />
\t\t\t\t<param name=\"type\" value=\"video/quicktime\" />
\t\t\t\t<embed name=\"qtstream_";
                    // line 77
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\" src=\"";
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\" pluginspage=\"http://www.apple.com/quicktime/download/\" enablejavascript=\"true\" controller=\"true\" width=\"320\" height=\"285\" type=\"video/quicktime\" autoplay=\"false\"></embed>
\t\t\t</object>
\t\t";
                } elseif ($this->getAttribute(                // line 79
$context["_file"], "S_RM_FILE", array())) {
                    // line 80
                    echo "\t\t\t<object id=\"rmstream_";
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\" classid=\"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA\" width=\"200\" height=\"50\">
\t\t\t\t<param name=\"src\" value=\"";
                    // line 81
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\" />
\t\t\t\t<param name=\"autostart\" value=\"false\" />
\t\t\t\t<param name=\"controls\" value=\"ImageWindow\" />
\t\t\t\t<param name=\"console\" value=\"ctrls_";
                    // line 84
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\" />
\t\t\t\t<param name=\"prefetch\" value=\"false\" />
\t\t\t\t<embed name=\"rmstream_";
                    // line 86
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\" type=\"audio/x-pn-realaudio-plugin\" src=\"";
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\" width=\"0\" height=\"0\" autostart=\"false\" controls=\"ImageWindow\" console=\"ctrls_";
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\" prefetch=\"false\"></embed>
\t\t\t</object>
\t\t\t<br />
\t\t\t<object id=\"ctrls_";
                    // line 89
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\" classid=\"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA\" width=\"0\" height=\"36\">
\t\t\t\t<param name=\"controls\" value=\"ControlPanel\" />
\t\t\t\t<param name=\"console\" value=\"ctrls_";
                    // line 91
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\" />
\t\t\t\t<embed name=\"ctrls_";
                    // line 92
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\" type=\"audio/x-pn-realaudio-plugin\" width=\"200\" height=\"36\" controls=\"ControlPanel\" console=\"ctrls_";
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo "\"></embed>
\t\t\t</object>

\t\t\t<script type=\"text/javascript\">
\t\t\t// <![CDATA[
\t\t\t\tif (document.rmstream_";
                    // line 97
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo ".GetClipWidth)
\t\t\t\t{
\t\t\t\t\twhile (!document.rmstream_";
                    // line 99
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo ".GetClipWidth())
\t\t\t\t\t{
\t\t\t\t\t}

\t\t\t\t\tvar width = document.rmstream_";
                    // line 103
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo ".GetClipWidth();
\t\t\t\t\tvar height = document.rmstream_";
                    // line 104
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo ".GetClipHeight();

\t\t\t\t\tdocument.rmstream_";
                    // line 106
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo ".width = width;
\t\t\t\t\tdocument.rmstream_";
                    // line 107
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo ".height = height;
\t\t\t\t\tdocument.ctrls_";
                    // line 108
                    echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                    echo ".width = width;
\t\t\t\t}
\t\t\t// ]]>
\t\t\t</script>
\t\t";
                }
                // line 113
                echo "
\t\t";
                // line 114
                if (((($this->getAttribute($context["_file"], "S_WM_FILE", array()) || $this->getAttribute($context["_file"], "S_RM_FILE", array())) || $this->getAttribute($context["_file"], "S_FLASH_FILE", array())) || $this->getAttribute($context["_file"], "S_QUICKTIME_FILE", array()))) {
                    // line 115
                    echo "\t\t\t<p>
\t\t\t";
                    // line 116
                    if ($this->getAttribute($context["_file"], "S_QUICKTIME_FILE", array())) {
                        echo "<a href=\"#\" onclick=\"play_qt_file(document.qtstream_";
                        echo $this->getAttribute($context["_file"], "ATTACH_ID", array());
                        echo "); return false;\">[ ";
                        echo $this->env->getExtension('phpbb')->lang("PLAY_QUICKTIME_FILE");
                        echo " ]</a> ";
                    }
                    // line 117
                    echo "\t\t\t<a href=\"";
                    echo $this->getAttribute($context["_file"], "U_DOWNLOAD_LINK", array());
                    echo "\">";
                    echo $this->getAttribute($context["_file"], "DOWNLOAD_NAME", array());
                    echo "</a> [ ";
                    echo $this->getAttribute($context["_file"], "FILESIZE", array());
                    echo " ";
                    echo $this->getAttribute($context["_file"], "SIZE_LANG", array());
                    echo " | ";
                    echo $this->getAttribute($context["_file"], "L_DOWNLOAD_COUNT", array());
                    echo " ]</p>
\t\t";
                }
                // line 119
                echo "
\t\t";
                // line 120
                // line 121
                echo "\t";
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['_file'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 123
    }

    public function getTemplateName()
    {
        return "attachment.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  364 => 123,  357 => 121,  356 => 120,  353 => 119,  339 => 117,  331 => 116,  328 => 115,  326 => 114,  323 => 113,  315 => 108,  311 => 107,  307 => 106,  302 => 104,  298 => 103,  291 => 99,  286 => 97,  276 => 92,  272 => 91,  267 => 89,  257 => 86,  252 => 84,  246 => 81,  241 => 80,  239 => 79,  232 => 77,  225 => 73,  220 => 72,  218 => 71,  209 => 69,  200 => 63,  193 => 62,  191 => 61,  174 => 47,  170 => 46,  165 => 44,  153 => 35,  149 => 34,  146 => 33,  144 => 32,  141 => 31,  130 => 28,  124 => 27,  113 => 26,  110 => 25,  108 => 24,  105 => 23,  92 => 20,  86 => 19,  80 => 18,  77 => 17,  75 => 16,  72 => 15,  68 => 13,  62 => 12,  46 => 11,  43 => 10,  41 => 9,  38 => 8,  36 => 7,  30 => 5,  27 => 4,  23 => 3,  20 => 2,  19 => 1,);
    }
}
/* <!-- EVENT attachment_file_before -->*/
/* */
/* <!-- BEGIN _file -->*/
/* 	<!-- IF _file.S_DENIED -->*/
/* 	<p>[{_file.DENIED_MESSAGE}]</p>*/
/* 	<!-- ELSE -->*/
/* 		<!-- EVENT attachment_file_prepend -->*/
/* */
/* 		<!-- IF _file.S_THUMBNAIL -->*/
/* 		<dl class="thumbnail">*/
/* 			<dt><a href="{_file.U_DOWNLOAD_LINK}"><img src="{_file.THUMB_IMAGE}" class="postimage" alt="{_file.DOWNLOAD_NAME}" title="{_file.DOWNLOAD_NAME} ({_file.FILESIZE} {_file.SIZE_LANG}) {_file.L_DOWNLOAD_COUNT}" /></a></dt>*/
/* 			<!-- IF _file.COMMENT --><dd> {_file.COMMENT}</dd><!-- ENDIF -->*/
/* 		</dl>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- IF _file.S_IMAGE -->*/
/* 		<dl class="file">*/
/* 			<dt class="attach-image"><img src="{_file.U_INLINE_LINK}" class="postimage" alt="{_file.DOWNLOAD_NAME}" onclick="viewableArea(this);" /></dt>*/
/* 			<!-- IF _file.COMMENT --><dd><em>{_file.COMMENT}</em></dd><!-- ENDIF -->*/
/* 			<dd>{_file.DOWNLOAD_NAME} ({_file.FILESIZE} {_file.SIZE_LANG}) {_file.L_DOWNLOAD_COUNT}</dd>*/
/* 		</dl>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- IF _file.S_FILE -->*/
/* 		<dl class="file">*/
/* 			<dt><!-- IF _file.UPLOAD_ICON -->{_file.UPLOAD_ICON} <!-- ENDIF --><a class="postlink" href="{_file.U_DOWNLOAD_LINK}">{_file.DOWNLOAD_NAME}</a></dt>*/
/* 			<!-- IF _file.COMMENT --><dd><em>{_file.COMMENT}</em></dd><!-- ENDIF -->*/
/* 			<dd>({_file.FILESIZE} {_file.SIZE_LANG}) {_file.L_DOWNLOAD_COUNT}</dd>*/
/* 		</dl>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- IF _file.S_WM_FILE -->*/
/* 			<!-- method used here from http://alistapart.com/articles/byebyeembed / autosizing seems to not work always, this will not fix -->*/
/* 			<object width="320" height="285" classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6" id="wmstream_{_file.ATTACH_ID}">*/
/* 				<param name="url" value="{_file.U_DOWNLOAD_LINK}" />*/
/* 				<param name="showcontrols" value="1" />*/
/* 				<param name="showdisplay" value="0" />*/
/* 				<param name="showstatusbar" value="0" />*/
/* 				<param name="autosize" value="1" />*/
/* 				<param name="autostart" value="0" />*/
/* 				<param name="visible" value="1" />*/
/* 				<param name="animationstart" value="0" />*/
/* 				<param name="loop" value="0" />*/
/* 				<param name="src" value="{_file.U_DOWNLOAD_LINK}" />*/
/* 				<!--[if !IE]>-->*/
/* 					<object width="320" height="285" type="video/x-ms-wmv" data="{_file.U_DOWNLOAD_LINK}">*/
/* 						<param name="src" value="{_file.U_DOWNLOAD_LINK}" />*/
/* 						<param name="controller" value="1" />*/
/* 						<param name="showcontrols" value="1" />*/
/* 						<param name="showdisplay" value="0" />*/
/* 						<param name="showstatusbar" value="0" />*/
/* 						<param name="autosize" value="1" />*/
/* 						<param name="autostart" value="0" />*/
/* 						<param name="visible" value="1" />*/
/* 						<param name="animationstart" value="0" />*/
/* 						<param name="loop" value="0" />*/
/* 					</object>*/
/* 				<!--<![endif]-->*/
/* 			</object>*/
/* */
/* 		<!-- ELSEIF _file.S_FLASH_FILE -->*/
/* 			<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=5,0,0,0" width="{_file.WIDTH}" height="{_file.HEIGHT}">*/
/* 				<param name="movie" value="{_file.U_VIEW_LINK}" />*/
/* 				<param name="play" value="true" />*/
/* 				<param name="loop" value="true" />*/
/* 				<param name="quality" value="high" />*/
/* 				<param name="allowScriptAccess" value="never" />*/
/* 				<param name="allowNetworking" value="internal" />*/
/* 				<embed src="{_file.U_VIEW_LINK}" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" width="{_file.WIDTH}" height="{_file.HEIGHT}" play="true" loop="true" quality="high" allowscriptaccess="never" allownetworking="internal"></embed>*/
/* 			</object>*/
/* 		<!-- ELSEIF _file.S_QUICKTIME_FILE -->*/
/* 			<object id="qtstream_{_file.ATTACH_ID}" classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab#version=6,0,2,0" width="320" height="285">*/
/* 				<param name="src" value="{_file.U_DOWNLOAD_LINK}" />*/
/* 				<param name="controller" value="true" />*/
/* 				<param name="autoplay" value="false" />*/
/* 				<param name="type" value="video/quicktime" />*/
/* 				<embed name="qtstream_{_file.ATTACH_ID}" src="{_file.U_DOWNLOAD_LINK}" pluginspage="http://www.apple.com/quicktime/download/" enablejavascript="true" controller="true" width="320" height="285" type="video/quicktime" autoplay="false"></embed>*/
/* 			</object>*/
/* 		<!-- ELSEIF _file.S_RM_FILE -->*/
/* 			<object id="rmstream_{_file.ATTACH_ID}" classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" width="200" height="50">*/
/* 				<param name="src" value="{_file.U_DOWNLOAD_LINK}" />*/
/* 				<param name="autostart" value="false" />*/
/* 				<param name="controls" value="ImageWindow" />*/
/* 				<param name="console" value="ctrls_{_file.ATTACH_ID}" />*/
/* 				<param name="prefetch" value="false" />*/
/* 				<embed name="rmstream_{_file.ATTACH_ID}" type="audio/x-pn-realaudio-plugin" src="{_file.U_DOWNLOAD_LINK}" width="0" height="0" autostart="false" controls="ImageWindow" console="ctrls_{_file.ATTACH_ID}" prefetch="false"></embed>*/
/* 			</object>*/
/* 			<br />*/
/* 			<object id="ctrls_{_file.ATTACH_ID}" classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" width="0" height="36">*/
/* 				<param name="controls" value="ControlPanel" />*/
/* 				<param name="console" value="ctrls_{_file.ATTACH_ID}" />*/
/* 				<embed name="ctrls_{_file.ATTACH_ID}" type="audio/x-pn-realaudio-plugin" width="200" height="36" controls="ControlPanel" console="ctrls_{_file.ATTACH_ID}"></embed>*/
/* 			</object>*/
/* */
/* 			<script type="text/javascript">*/
/* 			// <![CDATA[*/
/* 				if (document.rmstream_{_file.ATTACH_ID}.GetClipWidth)*/
/* 				{*/
/* 					while (!document.rmstream_{_file.ATTACH_ID}.GetClipWidth())*/
/* 					{*/
/* 					}*/
/* */
/* 					var width = document.rmstream_{_file.ATTACH_ID}.GetClipWidth();*/
/* 					var height = document.rmstream_{_file.ATTACH_ID}.GetClipHeight();*/
/* */
/* 					document.rmstream_{_file.ATTACH_ID}.width = width;*/
/* 					document.rmstream_{_file.ATTACH_ID}.height = height;*/
/* 					document.ctrls_{_file.ATTACH_ID}.width = width;*/
/* 				}*/
/* 			// ]]>*/
/* 			</script>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- IF _file.S_WM_FILE or _file.S_RM_FILE or _file.S_FLASH_FILE or _file.S_QUICKTIME_FILE -->*/
/* 			<p>*/
/* 			<!-- IF _file.S_QUICKTIME_FILE --><a href="#" onclick="play_qt_file(document.qtstream_{_file.ATTACH_ID}); return false;">[ {L_PLAY_QUICKTIME_FILE} ]</a> <!-- ENDIF -->*/
/* 			<a href="{_file.U_DOWNLOAD_LINK}">{_file.DOWNLOAD_NAME}</a> [ {_file.FILESIZE} {_file.SIZE_LANG} | {_file.L_DOWNLOAD_COUNT} ]</p>*/
/* 		<!-- ENDIF -->*/
/* */
/* 		<!-- EVENT attachment_file_append -->*/
/* 	<!-- ENDIF -->*/
/* <!-- END _file -->*/
/* <!-- EVENT attachment_file_after -->*/
/* */
