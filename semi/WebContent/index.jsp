<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<script>
	function popup() {
		window.open('/semi/cookie/popup.jsp', 'popup', 'width=400 height=400');
	}
</script>

</head>
<%
	String cookie = null;
	String user = null;
	Cookie ck[] = request.getCookies();

	if (ck != null) {

		for (int a = 0; a < ck.length; a++) {
			if (ck[a].getName() == "popup" || ck[a].getName() == "user") {
				cookie = URLDecoder.decode(ck[a].getValue());
				user = URLDecoder.decode(ck[a].getValue());
			}
		}
	}
%>
<%@include file="/header/header.jsp"%>
<body>

	<section>
	<fieldset>
	<div>div1=지난주 로또 번호,  오늘 날짜, 당첨 누적금액 </div>
	<div>div2=추천 게시글, gps 게시글, hot issue</div>
	<div>div2=기술, gps 게시글, hot issue</div>
	

	</fieldset>
	</section>
	<%@include file = "/footer/footer.jsp" %>
</body>
</html>