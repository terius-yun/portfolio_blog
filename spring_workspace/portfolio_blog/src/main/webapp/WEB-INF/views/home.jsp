<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>메인 화면</title>
	</head>
	<body>
		    <div id="wrap">
		        <div id="header">
		            <jsp:include page="header.jsp" />
		        </div>
		        <div id="main">
		        <c:set var="contentPage" value="${param.contentPage}"/>
		        <c:if test="${contentPage==null}">
		        	<jsp:include page="content.jsp"/>
		        </c:if>
		            <jsp:include page="${contentPage}" />
		        </div>
		        <div id="footer">
		        	<jsp:include page="footer.jsp" />
		        </div>
		    </div>
    
	</body>
</html>