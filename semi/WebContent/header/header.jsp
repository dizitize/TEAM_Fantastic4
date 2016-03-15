<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String id=(String)session.getAttribute("id");%>

<header>

<h1><a href="/semi/index.jsp"><span>로또 사이트</span></a></h1>

<%if(id==null || id.equals("")){%>	
 
<div style="float: right;"><a href="/semi/header/semi_login.jsp" id="login">로그인</a> | <a href="/semi/header/semi_before_regist.jsp">회원가입</a></div>
 
<%}else{%>

<div style="float: right;"><%=id %>님 로그인중  | <a href = "/semi/header/semi_mypage.jsp">마이페이지</a> | <a href="/semi/header/semi_logout.jsp">로그아웃</a></div>

<%}%>
  

	<div >
		<nav id="menu" class="navigation">
		<ul id="nav">
			
			<li>
			<a href="#" >main 가기</a>
			
			</li>
			<li>
			<a href="#" >community</a>
		
			</li>
			<li>
			<a href="#">번호생성 </a>
			
			</li>
			<li>
			<a href="javascript:;" >이벤트</a>
			<ul>
			
			</ul>
			</li>
			<li>
			<a href="javascript:;" >커뮤니티</a>
			<ul>
			
			</ul>
			</li>
			<li><a href="/event/ing" >고객센터</a></li>
		</ul>
		</nav>
	</div>
	<!-- End Menu -->

<!-- End Container -->
</header><!-- <<< End Header >>> -->
