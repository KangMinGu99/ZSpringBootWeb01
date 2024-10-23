<%@ page contentType="text/html;charset=euc-kr" %>

<!-- ////////////////////////////////////////   변 경 된  부 분  //////////////////////////////////////////////////////////
	 ㅇ Model2 Web Arch. 적용 시 ::  JSP는 View 역할 만..  
	 ㅇ Work Flow Control 부분은 Control 이 담당                                                  
     ㅇ 아래의 주석 처리 부위은 Control 을 담당하는 @Contoller 에서 처리   
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

<%
	String userId = "아이디입력";
	String password = "패스워등입력";
	//User user = (User)session.getAttribute("user");
%>

<html>
	<head><title>Logon Page</title></head>
	<body>
	
	<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
	<!-- /// 추가된 부분(Controller 가 ModelAndView 에 저장한 Message 출력) //-->
		[ ■  info ] :: ${ requestScope.message } <br/><br/>
	<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
	
	<% //if(user == null ||  user.isActive() != true ) {%>
		
		<!--  <form  method="post" action="logonAction.do">  -->
		<form  method="post" action="/user/logonAction">

			아  이  디 : <input type="text" name="userId" value="<%= userId %>"><br/><br/>
			패스워드 : <input type="text" name="password" value="<%= password %>"><br/><br/>
			<input type="submit" name="submit" value="Enter"/>

		</form>

	 <%//}else{ %>
			<%-- <%= user.getUserId() %>님은 이미 로그인 하셨습니다.  --%>
	<% //} %>

	</body>
</html>