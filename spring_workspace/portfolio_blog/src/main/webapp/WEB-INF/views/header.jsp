<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<html>
	<head>
	    <title>top</title>
		<script type="text/javascript">
			function changeView(value){
				if(value == "0"){//홈페이지 이동
					location.href="/";
				}else if(value == "1"){//로그인 버튼 클릭시 로그인 화면 이동
					location.href="LoginForm";
				}else if(value == "2"){//회원가입 버튼 클릭시 회원가입 화면으로 이동
					location.href="signUpForm";
				}else if(value == "3"){
					location.href="MemberLogoutAction";
				}else if (value == "6") {
					location.href="BoardListAction.bo";
				}
			}
		</script>
	</head>
	<body>
		<div id = "wrap">
			<p>
				<button class = "btn btn-success" onclick = "changeView(0)">HOME</button>
				
				<!-- // 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다. -->
		        <c:if test="${sessionScope.sessionID==null}">
		            <button id="loginBtn" class="btn btn-primary" onclick="changeView(1)">로그인</button>
		            <button id="joinBtn" class="btn btn-primary" onclick="changeView(2)">회원가입</button>
		        </c:if>
		 
		        <!-- // 로그인 되었을 경우 - 로그아웃, 내정보 버튼을 보여준다. -->
		        <c:if test="${sessionScope.sessionID!=null}">
		            <button id="logoutBtn" class="btn btn-primary" onclick="changeView(3)">로그아웃</button>
		            <button id="updateBtn" class="btn btn-primary" onclick="changeView(4)">내정보</button>
		        </c:if>
		        
		        <button class = "boardBtn" onclick = "changeView(6)">게시판</button>
			</p>
		</div>
	</body>
</html>
