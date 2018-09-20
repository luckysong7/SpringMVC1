<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<h3>
<a href ="hello.action">Spring 환영메시지</a>
</h3>

<h2>
Spring MVC Controller Test
</h2>

<h3>1. <a href ="test/param.action?name=SONG&phone=010-4164-7988&email=luckysong7@naver.com">GET방식 테스트 입니다.</a></h3>

<h3>2. Post방식 테스트 입니다.</h3>
<form action ="test/param.action" method="post">
이름 : <input type="text" name = "name"/> <br/>
전화 : <input type="text" name = "phone"/> <br/>
메일 : <input type="text" name = "email"/> <br/>
<input type ="submit" value = "전송" />
</form>
<br/>

<h3>3. <a href="test/mav.action?name=SONG&phone=010-4164-7988&email=luckysong7@naver.com">ModelAndView Get 방식 테스트 입니다.</a></h3>

<h3>4. ModelAndView Post 방식 테스트 입니다.</h3>
<form action ="test/mav.action">
이름 : <input type="text" name = "name"/> <br/>
전화 : <input type="text" name = "phone"/> <br/>
메일 : <input type="text" name = "email"/> <br/>
<input type ="submit" value = "전송" />
</form>

<h3>5. <a href ="test/redirect.action">리다이렉트 테스트</a></h3>


</body>
</html>
