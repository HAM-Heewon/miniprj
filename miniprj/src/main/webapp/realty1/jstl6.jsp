<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%

String subject = "공지사항 3월 이벤트 진행중 많관부";
//JSP에서 생성된 값을 top.jsp 에 출력할 경우 attribute로 세팅후전달가능
String data = "냉장고,에어컨,김치냉장고,서랍";
//request.setAttribute("data", data);
String mid = "hong";
request.setAttribute("mid", mid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 외부 페이지 로드</title>
</head>
<body>
	<header>
		<nav>
		<%-- fn: length,--%>
		<c:set var="subject" value="<%=subject %>"></c:set>
		<c:set var="sub" value="${fn:length(subject) }"></c:set>
		<c:if test="${sub > 10}">
			<c:set var="jum" value="...."/>
		</c:if>
		게시판 제목 : ${fn:substring(subject,0,10)} ${jum}<br>
		
		
			<c:set var="a" value="연습"></c:set>
			<c:import url="./top.jsp">
				<%-- param(import 안에만 적용): 파라미터 이름으로 해당 페이지에 전달 --%>
				<c:param name="user" value="홍길동"/>
				<c:param name="z" value="${a}"/>
			</c:import>

		</nav>
	</header>


	<main>
	<%-- fn에 jsp 변수값 직접 적용못함 --%>
	<c:set var="product" value="${fn:split($data,',')}" />
	<c:forEach var="pd" items="${product}">
	${pd}
	</c:forEach>
	<c:import url="./main.jsp"></c:import>
	
	</main>

	<footer>
		<c:import url="./copyright.jsp">
		
		
		</c:import>
	</footer>
</body>
</html>