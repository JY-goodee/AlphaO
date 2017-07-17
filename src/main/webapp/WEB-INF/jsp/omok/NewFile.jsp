<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/jsp/jspHeader.jsp" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>넷마블 - 5줄을 향한 무한한 도전, 넷마블오목</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />

<link rel="icon" href="http://c2.img.netmarble.kr/web/2005/img/common/main/netmarblebi_110701.ico" type="image/x-icon" />
<link rel="shortcut icon" href="http://c2.img.netmarble.kr/web/2005/img/common/main/netmarblebi_110701.ico" type="image/x-icon" />

<link rel="stylesheet"  href="${path }/resource/css/homeMain.css">
<script language="javascript" type="text/javascript" src="/js/_CommonJs/_Framework/jQuery/jquery-1.6.2.min.js"></script>
<script language="javascript" type="text/javascript" src="/js/comn.js"></script>
<script language="javascript" type="text/javascript" src="/js/_CommonJs/_Lib/WINDOW.Class.js"></script>
<script language="javascript" type="text/javascript" src="/js/_CommonJs/_Lib/AJAX.Class.js"></script>
<script language="javascript" type="text/javascript" src="/js/CjiWeb.js"></script>
<script language="javascript" type="text/javascript" src="/js/LoginLink.js"></script>
<script language="javascript" type="text/javascript" src="/js/GlobalDomain.asp"></script>
<script language="javascript" type="text/javascript" src="/js/ServiceProcess/LAYERMESSAGE.Class.js.asp"></script>
<script language="javascript" type="text/javascript" src="/js/myGameBnf.js"></script>
<script language="javascript" type="text/javascript" src="/js/PcBangBanner.js"></script>
<script language="javascript" type="text/javascript" src="http://sidebar.netmarble.net/widget/Service.Widget.Root.js"></script>
<script language="javascript" type="text/javascript" src="http://sidebar.netmarble.net/widget/memo/Memo.Js.Asp"></script>
<script language="javascript" type="text/javascript" src="/omok/js/Cash.js.asp"></script>
<script language="javascript" type="text/javascript" src="/omok/js/boardCommonVar.asp"></script>
<script language="javascript" type="text/javascript" src="/omok/js/boardCommon.js"></script>
</head>
<body>
<script language='javascript' type='text/javascript' src='http://gnb.netmarble.net/gnb/gnb_nmb2.asp?servicecode=omok&align=center&width=&'></script><script language="javascript" type="text/javascript">
var __nrd_enabled__ = true;
var __clickrd_enabled__ = true;

function nrd(rdcode,elem,target)
{
	try
	{
		if (__nrd_enabled__)
		{
			var frm = document.getElementById("DIRECT_GO_RD");
			frm.action = "http://nrd.netmarble.net/" + rdcode + ".rd";
			frm.url.value = (elem != null ? elem.href : "");
			frm.target = (target == null ? "_self" : target);
			frm.submit();
			return false;
		}
	}
	catch(x)
	{
	}
	
	return true;
}

function openWinNrd(rdcode, url, width, height, bScroll, Rtn)
{
	try
	{
		if (__nrd_enabled__)
		{
			openWinW("http://nrd.netmarble.net/" + rdcode + ".rd?url=" + escape(url), '_blank', width, height, '', '', 0, bScroll);
			return Rtn ? Rtn : false;
		}
	}
	catch(x)
	{
	}

	return true;
}

function openWinWNrd(rdcode, url, width, height, bScroll, Rtn,wName)
{
	try
	{
		if (__nrd_enabled__)
		{
			openWinW("http://nrd.netmarble.net/" + rdcode + ".rd?url=" + escape(url), wName, width, height, '', '', 0, bScroll);
			return Rtn ? Rtn : false;
		}
	}
	catch(x)
	{
	}
	
	return true;
}

function ntr(rdcode,elem,target)
{
	try
	{
		if (__nrd_enabled__)
		{
			var frm = document.getElementById("DIRECT_GO_RD");
			frm.action = "http://nrd.netmarble.net/" + rdcode + ".tr";
			frm.url.value = (elem != null ? elem.href : "");
			frm.target = (target == null ? "_self" : target);
			frm.submit();
			return false;
		}
	}
	catch(x)
	{
	}

	return true;
}

function clicktr(rdcode)
{
	try
	{
		if (__clickrd_enabled__)
		{
		    var clink, ifrm;
		    clink = "http://nrd.netmarble.net/" + rdcode + ".ctr";
            ifrm = document.getElementById("DIRECT_GO_CLICK_RD");
            ifrm.src = clink;
            return true;
		}
	}
	catch(x)
	{
	}
	
	return true;
}

function clickrd(rdcode)
{
	try
	{
		if (__clickrd_enabled__)
		{
		    var clink, ifrm;
		    clink = "http://nrd.netmarble.net/" + rdcode + ".cr";
            ifrm = document.getElementById("DIRECT_GO_CLICK_RD");
            ifrm.src = clink;
            return true;
		}
	}
	catch(x)
	{
	}
	
	return true;
}

</script>
<div style="display:none;">
	<form id="DIRECT_GO_RD" name="DIRECT_GO_RD" method="get" action="">
		<input type="hidden" name="url" value="" ID="Hidden1">
	</form>
</div>
<iframe title="빈프레임" id="DIRECT_GO_CLICK_RD" name="DIRECT_GO_CLICK_RD" frameborder=0 width=0 height=0 style="position:absolute;left:0;top:-100px;"></iframe>
<div id="MainContent" class="m_omok">
<div class="origin">
<div class="side_left"><div></div></div>
<div class="side_right"><div></div></div>
<div id="DivMinSize" class="minsize">
<div class="swf_visual">
<script type="text/javascript">
if (UseFlash.CheckFlashPlayer()) {
Board2Common.ChannelForm();
 UseFlash.SetChannelList('omok');
}
</script>
 <div id="shanghaiChannel_div">
<script type="text/javascript">
if (!UseFlash.CheckFlashPlayer()) {
Board2Common.ChannelForm();
Cji_Flash("http://c2.img.netmarble.kr/web/board/game/v/swf/110906/marble_100_558_client.swf", "100%", "558", "omokChannel", "transparent", "xmlPath=/omok/Channel/channelMenuXml.asp&game=omok");

			function MinSize(){ document.getElementById("DivMinSize").style.width = document.body.clientWidth<=990 ? "990px" : "100%" }
			window.onload = window.onresize = MinSize;			
}
</script>
</div>
</div>
</div>
<div class="container">

			<div class="menu03">
			<ul id="DivGame2">
				<li><a href="http://game2.netmarble.net/sachunsung/" class="g_sachunsung"><span>사천성</span></a></li>
				<li><a href="http://game2.netmarble.net/yutgame/" class="g_yutgame"><span>윷놀이</span></a></li>
				<li><a href="http://game2.netmarble.net/moma/" class="g_moma"><span>모두의마블</span></a></li>
			</ul>
			<script type="text/javascript">Cji_ClassOn("DivGame2","li")</script>
			</div>			
			
			<div class="menu04" onmouseout="Cji_DivHide('DivGame')">
			<p><a href="#" onclick="Cji_DivShow('DivGame');clickrd('201208070119');return false;" alt="캐주얼게임 더보기"><span>캐주얼게임 더보기</span></a></p>
			<ul id="DivGame" onmouseover="Cji_DivShow('DivGame')">
				<li><a href="http://game2.netmarble.net/igame/bill4/" class="g01"><span>당구/포켓볼</span></a></li>
				<li><a href="http://game2.netmarble.net/richmarble/" class="g02"><span>리치마블</span></a></li>
				<li><a href="http://game2.netmarble.net/shanghai/" class="g03"><span>상하이</span></a></li>
				<li><a href="http://game2.netmarble.net/assult/" class="g04"><span>어썰트기어</span></a></li>
				<li><a href="http://game2.netmarble.net/omok/" class="g05"><span>오목</span></a></li>
				<li><a href="http://game2.netmarble.net/igame/picture/" class="g06"><span>틀린그림찾기</span></a></li>
				<li><a href="http://game2.netmarble.net/poweral/" class="g07"><span>파워알까기</span></a></li>
				<li><a href="http://game2.netmarble.net/kkoongda/" class="g08"><span>파워쿵쿵따</span></a></li>
			</ul>
			<script type="text/javascript">Cji_ClassOn("DivGame","li")</script>
			</div>			

			<div class="menu02">
			<ul>
				<li class="t_info"><a href="#" onclick="Board2Common.OpenSub('http://game2.netmarble.net/omok/Sub/Guide.asp');return false;"><span>게임안내</span></a></li>
				
				<li class="t_rank"><a href="#" onclick="Board2Common.OpenSub('http://game2.netmarble.net/omok/Sub/Ranking.asp');return false;"><span>게임순위</span></a></li>
				<li class="t_download"><a href="#" onclick="Board2Common.OpenSub('http://game2.netmarble.net/omok/Sub/DownLoad.asp');return false;"><span>다운로드</span></a></li>
			</ul>
			</div>
			
			<script language="javascript" type="text/javascript" src="/js/Aos.js"></script>
<script type="text/javascript">
try {
	document.msCapsLockWarningOff = true;
}catch(e){}

</script>
<div id="divLogin">
<form name="frmLogin" method="post">
	<fieldset id="BeforeLogin">
		<legend>로그인전</legend>
		<dl>
		<dt class="uid"><em>아이디</em></dt>
		<dd class="uid"><input type="text" title="아이디" id="uid" name="Ecom_User_ID" maxlength="12" autocomplete="off" onkeydown="return _clf_onkeydown(0);"  class="bgid" onfocus="this.className='bgon'" onblur="this.className= (this.value!='') ?  'bgnone' : 'bgid'"/></dd>
		<dt class="upw"><em>비밀번호</em></dt>
		<dd class="upw"><input type="password" title="비밀번호" id="upw" name="Ecom_User_Password" maxlength="30" autocomplete="off" onkeydown="return _clf_onkeydown(1);checkCapsLock(event);" onkeypress="_clf_keypress_pwlen(this);checkCapsLock(event);"  class="bgpw" onfocus="this.className='bgon';checkCapsLock(event);" onblur="this.className= (this.value!='') ?  'bgnone' : 'bgpw';checkCapsLock(event);" /><span id="tooltip"><strong>CapsLock</strong>이 켜져 있습니다.</span></dd>
		</dl>
		<button class="bt lgn" id="_clf_submit_button" onclick="javascript:void(_clf_do_login());return false;" title="로그인"><span>로그인</span></button>
		
		<span class="s1"><a href="" onclick="javascript:loginform_clickrd('lg_secu'); WINDOW.open.common('http://helpdesk.netmarble.net/PopHelpSecureLogin.asp','SecureLogin',450,509);return false;"><em>보안접속</em></a> <strong>ON</strong></span>
		<span class="s2"><label for="Lgnchk"><a href="" onclick="javascript:loginform_clickrd('lg_key'); WINDOW.open.common('http://helpdesk.netmarble.net/PopHelpSecureKeyboard.asp','SecureKeyboard',450,509);return false;"><em>키보드보안</em></a></label><input type="checkbox" class="ichk" id="Keychk" name="chk" /></span>
		<p class="link">
		<span class="l1"><a href="javascript:loginform_clickrd('lg_sign'); moveNetmarbleJoin();"><em>회원가입</em></a></span>
		<span class="l2"><a href="" onclick="javascript:loginform_clickrd('lg_id'); WINDOW.open.common('http://member.netmarble.net/Inquiry/PopInquiryID.asp','InquiryID',450,545);return false;"><em>아이디 찾기</em></a></span>
		<span class="l3"><a href="" onclick="javascript:loginform_clickrd('lg_pw'); WINDOW.open.common('http://member.netmarble.net/Inquiry/PopInquiryPW.asp','InquiryID',450,545);return false;"><em>비밀번호 찾기</em></a></span>
		</p>
	</fieldset>
</form>
<script language="javascript" src="/js/login/with_siteloginform.js.asp?code=omok&macaddr=true"></script>
<IFRAME style="display:none" name="kdfenseFrame" src="" frameborder=0 width=0 height=0></IFRAME>
<script language="javascript" type="text/javascript">

	function loginform_clickrd(rd)
	{
		if (typeof __clickrd_enabled__ != 'undefined')
			clickrd(rd + '_omok');
	}
	
	// _clf_do_login overriding
	var _clf_do_login = (function() {
		var original_clf_do_login = _clf_do_login;

		if (typeof __clickrd_enabled__ != 'undefined') {
			return function() {
				loginform_clickrd('lg_login')
				return original_clf_do_login();
			}
		}
		else {
			return function() {
				return original_clf_do_login();
			}
		}
	})();
	
</script>
</div>

			<div class="notice">
			<ul>
<li><a href="#" onClick="javascript:Board2Common.noticeOpen(49054);return false;">[공지] 12월 7일 파워쿵쿵따 점검</a></li>
</ul>
                                                                                                                   
			</div> 			
			<div class="item"><a href="http://shop.netmarble.net/ItemShop/?Target=omok" target="_blank"><span>아이템샵 바로가기</span></a></div>

			<div class="menu01">
			<ul>
				
				<li class="t_user"><a href="http://helpdesk.netmarble.net/HelpMyPage.asp?tab=3" target="_blank"><span>게임문의</span></a></li>
				<li class="t_faq"><a href="http://helpdesk.netmarble.net/HelpFaqList.asp?category_id_second=CATE20090424000029&category_id=CATE20090311000141&parent_id=CATE20090303000139&top_id=CATE20090303000139" target="_blank"><span>FAQ</span></a></li>
				<script src="http://game2.netmarble.net/js/pcbang/CommonPcbangCheck.asp?GameCode=omok" type="text/javascript"></script>
				<script language="javascript">f_PcBangBannerDisplay('cg','omok');</script>
			</ul>
			</div>
			
			<div id="div_Msg" class="msg" style="display:none;"></div>
</div>
<div id="Footer_Area">
<script type="text/javascript" src="http://gnb.netmarble.net/footer/footer_V2.asp?chcode=0&gamename=omok&logo=nmb&link=www.netmarble.com&grade=1&type=2"></script>
</div>
</div>
</div>

<span id="PortalLayerPopup"></span>
<script type="text/javascript" src="/js/Portal.LayerPopup.js"></script>
<script type="text/javascript">
	
	LayerPopup.IsChannelingSite = true;
	
	LayerPopup.Show( 'BoardGame','omok' );
</script>
</body>
</html>