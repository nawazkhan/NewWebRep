<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<html>
<head>
<title>Successfully Login by JSP</title>
<style type="text/css">
body
{
background: #DCDDDF url(http://3.bp.blogspot.com/-rGH6MuPSSnI/TbC-aRYQABI/AAAAAAAAAb0/mcOZVM8lFG8/s1600/RivasCanyon3.JPG);
background-size: 100%;
background-repeat: no-repeat; 
position: relative;	
}
</style>

</head>
<body>
<h1>
<%
out.print("Welcome! "+session.getAttribute("sUserID")+"<br>");
%>
</h1>
</body>
</html>