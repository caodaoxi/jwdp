<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/jsp/include/taglib.jsp"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>九州证券Web开发平台</title>

	<%@ include file="/jsp/include/head.jsp"%>
	<script src="${ctxStatic}/common/inspinia.js?v=3.2.0"></script>
	<script src="${ctxStatic}/common/contabs.js"></script> 
    <meta name="keywords" content="九州证券Web开发平台">
    <meta name="description" content="Jwdp，采用spring mvc+mybatis+shiro+bootstrap，Web开发平台">
    <script type="text/javascript">
	$(document).ready(function() {
		 if('${fns:getDictLabel(cookie.theme.value,'theme','默认主题')}' == '天蓝主题'){
			    // 蓝色主题
			        $("body").removeClass("skin-2");
			        $("body").removeClass("skin-3");
			        $("body").addClass("skin-1");
		 }else  if('${fns:getDictLabel(cookie.theme.value,'theme','默认主题')}' == '橙色主题'){
			    // 黄色主题
			        $("body").removeClass("skin-1");
			        $("body").removeClass("skin-2");
			        $("body").addClass("skin-3");
		 }else {
			 // 默认主题
			        $("body").removeClass("skin-2");
			        $("body").removeClass("skin-3");
			        $("body").removeClass("skin-1");
		 };
	 });
			
	</script>

</head>

<body class="fixed-sidebar full-height-layout gray-bg">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu2">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img alt="image" class="img-circle" style="height:64px;width:64px;" src="${fns:getUser().photo }" /></span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">${fns:getUser().name}</strong></span>
                               <span class="text-muted text-xs block">${fns:getUser().roleNames}<b class="caret"></b></span>
                                </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a class="J_menuItem" href="${ctx}/sys/user/imageEdit">修改头像</a>
                                </li>
                                <li><a class="J_menuItem" href="${ctx }/sys/user/info">个人资料</a>
                                </li>
                                 <li class="divider"></li>
                                <li><a onclick="changeStyle()" href="#">切换到ACE模式</a>
                                </li> 
                                 
                                <li class="divider"></li>
                                <li><a href="${ctx}/logout">安全退出</a>
                                </li>
                            </ul>
                        </div>
                        <div class="logo-element">JP
                        </div>
                    </li>
                </ul>
                <ul class="nav" id="side-menu">
                	<t:menu menu="${fns:getTopMenu()}"></t:menu>
                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                    	<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i></a>
                        <h2>九州证券Web开发平台</h2>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                      <!-- 子系统切换接口 -->
                        <li class="dropdown">
							<a id="lang-switch" class="lang-selector dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="true" style="height: 50px;">
								<span class="lang-selected">
										<i class="fa fa-columns"></i>
										<span class="lang-id">AAA</span>
										<span class="lang-name">子系统</span>
									</span>
							</a>

							<!--Language selector menu-->
							<ul class="head-list dropdown-menu with-arrow">
								<li>
									<!--English-->
									<a class="lang-select">
										<i class="fa fa-columns"></i>
										<span class="lang-id">AAA</span>
										<span class="lang-name">子系统</span>
									</a>
								</li>
								<li>
									<!--English-->
									<a class="lang-select">
										<i class="fa fa-cog"></i>
										<span class="lang-id">BBB</span>
										<span class="lang-name">子系统</span>
									</a>
								</li>
							</ul>
						</li>
                    </ul>
                </nav>
            </div>
            <div class="row content-tabs">
                <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
                </button>
                <nav class="page-tabs J_menuTabs">
                    <div class="page-tabs-content">
                        <a href="javascript:;" class="active J_menuTab" data-id="${ctx}/home">首页</a>
                    </div>
                </nav>
                <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
                </button>
                <div class="btn-group roll-nav roll-right">
                    <button class="dropdown J_tabClose"  data-toggle="dropdown">关闭操作<span class="caret"></span>

                    </button>
                    <ul role="menu" class="dropdown-menu dropdown-menu-right">
                        <li class="J_tabShowActive"><a>定位当前选项卡</a>
                        </li>
                        <li class="divider"></li>
                        <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                        </li>
                        <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                        </li>
                    </ul>
                </div>
                <a href="${ctx}/logout" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="${ctx}/home" frameborder="0" data-id="${ctx}/home" seamless></iframe>
            </div>
            <div class="footer">
                <div class="pull-right"><a href="http://www.jzsec.com" target="_blank">http://www.jzsec.com</a> &copy; 2016-2026</div>
            </div>
        </div>
        <!--右侧部分结束-->
       
       
    </div>
</body>


<script type="text/javascript">
<!-- 子系统切换 -->
$(document).ready(function(){
	$("a.lang-select").click(function(){
		$(".lang-selected").find(".fa").attr("class",$(this).find(".fa").attr("class"));
		$(".lang-selected").find(".lang-id").text($(this).find(".lang-id").text());
		$(".lang-selected").find(".lang-name").text($(this).find(".lang-name").text());
		
		if('AAA' == $(this).find(".lang-id").text()){
			$("#side-menu").html('<li><a href=""><i class="fa fa-columns"></i> <span class="nav-label">我的面板</span><span class="fa arrow"></span></a><ul class="nav nav-second-level"><li><a class="J_menuItem"  href="/jwdp/a/sys/user/info" ><i class="fa icon-adjust"></i> <span class="nav-label">个人信息</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/../static/ckfinder/ckfinder.html" ><i class="fa icon-zoom-out"></i> <span class="nav-label">文件管理</span></a></li></ul></li><li><a href=""><i class="fa fa-cog"></i> <span class="nav-label">系统设置</span><span class="fa arrow"></span></a><ul class="nav nav-second-level"><li><a class="J_menuItem"  href="/jwdp/a/sys/menu/" ><i class="fa list-alt"></i> <span class="nav-label">菜单管理</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/sys/user/index" ><i class="fa icon-adjust"></i> <span class="nav-label">用户管理</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/sys/office/" ><i class="fa th-large"></i> <span class="nav-label">机构管理</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/sys/role/" ><i class="fa lock"></i> <span class="nav-label">角色管理</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/sys/area/" ><i class="fa th"></i> <span class="nav-label">区域管理</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/sys/dict/" ><i class="fa th-list"></i> <span class="nav-label">字典管理</span></a></li></ul></li><li><a href=""><i class="fa fa-video-camera"></i> <span class="nav-label">系统监控</span><span class="fa arrow"></span></a><ul class="nav nav-second-level"><li><a class="J_menuItem"  href="/jwdp/a/sys/log" ><i class="fa pencil"></i> <span class="nav-label">日志查询</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/../druid" ><i class="fa null"></i> <span class="nav-label">连接池监视</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/monitor/info" ><i class="fa "></i> <span class="nav-label">系统监控管理</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/sys/systemConfig" ><i class="fa "></i> <span class="nav-label">系统配置</span></a></li></ul></li>');
		}else if('BBB' == $(this).find(".lang-id").text()){
			$("#side-menu").html('<li><a href=""><i class="fa fa-columns"></i> <span class="nav-label">我的面板</span><span class="fa arrow"></span></a><ul class="nav nav-second-level"><li><a class="J_menuItem"  href="/jwdp/a/sys/user/info" ><i class="fa icon-adjust"></i> <span class="nav-label">个人信息</span></a></li><li><a class="J_menuItem"  href="/jwdp/a/../static/ckfinder/ckfinder.html" ><i class="fa icon-zoom-out"></i> <span class="nav-label">文件管理</span></a></li></ul></li>');
		}
		$('#side-menu').metisMenu();
		initMenu();
	});


});

function changeStyle(){
   $.get('${pageContext.request.contextPath}/theme/ace?url='+window.top.location.href,function(result){   window.location.reload();});
}

</script>
</html>