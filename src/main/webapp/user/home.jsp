<%@ page contentType="text/html;charset=euc-kr" %>

<%@ page import="spring.domain.User" %>	 

<!-- ////////////////////////////////////////   변 경 된  부 분  //////////////////////////////////////////////////////////
	 ㅇ Model2 Web Arch. 적용 시 ::  JSP는 View 역할 만..  
	 ㅇ Work Flow Control 부분은 Control 이 담당                                                  
    ㅇ 아래의 주석 처리 부위은 Control 을 담당하는 @Contoller 에서 처리     
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

<!-- 	#. 비 로그인한 회원이면...	-->
<%	User sessionUser = (User)session.getAttribute("sessionUser");	%>

<%	//if ( user == null  ||  ! user.isActive() )  { %>
		<%-- <jsp:forward page="logon.jsp" /> --%>
<% //} %>

<!-- 	#. 로그인한 회원이면...	-->
<html>
	<head><title>Home Page</title></head>
	<body>
	
	<!-- ///////////// 추 가 된  부 분(~~Controller 가 전달하는 Message 출력)  ////////////-->
		[ ■  info ] :: ${ requestScope.message } <br/><br/>
	<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
	
		<p>Simple Model2 Examples</p>
		<p> 환영합니다.  : <%= sessionUser.getUserId()%> 님</p>
		<br/><br/>
		<!--  <a href = "logout.do">logout</a>  -->
		<a href = "logout">logout</a>
		
	</body>
</html>