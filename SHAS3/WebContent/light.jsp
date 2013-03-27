<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*" errorPage="" %>
<!--[if lt IE 7 ]> <html lang="en" class="ie6 ielt8"> <![endif]-->
<!--[if IE 7 ]> <html lang="en" class="ie7 ielt8"> <![endif]-->
<!--[if IE 8 ]> <html lang="en" class="ie8"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<title>LIGHTS</title>
<link rel="stylesheet" type="text/css" href="">
<link href='http://fonts.googleapis.com/css?family=Wendy+One' rel='stylesheet' type='text/css'>

<script type="text/javascript" language="javascript">
function lightSensor(values)
{
var table=document.getElementById("room");
var cells=table.getElementsByTagName("td");
for (var i=0;i<cells.length;i++)
	{
		if(i%2!=0){
		if((cells[i].childNodes[0].attributes[0].value)!="range")
		{
		for(var j=0;j<3;j++)
		{
		if(j%2==0)
		{
if(values>50)
cells[i].childNodes[2].checked=true;
else
	cells[i].childNodes[0].checked=true;
}
}
}
else
{
cells[i].firstChild.value= 100-values;
}
}
	}
}

function rooms(selected)
{
	var table=document.getElementById("room");
	var cells=table.getElementsByTagName("td");
	for(var i=0;i<cells.length;i++)
		{
		if((cells[i].className)!=selected)
			{
			cells[i].hidden=true;
			}
		else
			{
			cells[i].hidden=false;
			}
		if(selected=="All Rooms")
			{
			cells[i].hidden=false;
			}
		}


}
function optionChange(selectObj)
{
var x= selectObj;
var table=document.getElementById("room");
var cells=table.getElementsByTagName("td");
switch(true)
{
case (x==0)://off
for (var i=0;i<cells.length;i++)
	{
		if(i%2!=0){
		if((cells[i].childNodes[0].attributes[0].value)!="range")
		{
		for(var j=0;j<3;j++)
		{
		if(j%2==0)
		{
if(cells[i].childNodes[j].checked==true)
cells[i].childNodes[2].checked=true;
}
}
}
else
{
cells[i].firstChild.value= "0";
}
}
}
break;
case (x==1)://natural
{
for (var i=0;i<cells.length;i++)
{
if(i%2!=0){
if((cells[i].childNodes[0].attributes[0].value)!="range")
{
for(var j=0;j<3;j++)
{
if(j%2==0)
{
if(cells[i].childNodes[j].checked==true)
cells[i].childNodes[2].checked=true;
}
}
}
else
{
cells[i].firstChild.value= "25";
}
}
}
break;
}
case (x==2)://read
for (var i=0;i<cells.length;i++)
{
if(i%2!=0){
if((cells[i].childNodes[0].attributes[0].value)!="range")
{
for(var j=0;j<3;j++)
{
if(j%2==0)
{
if(cells[i].childNodes[j].checked==false)
cells[i].childNodes[0].checked=true;
}
}
}
else
{
cells[i].firstChild.value= "75";
}
}
}
break;
default:
alert("Default");
break;
}
}
</script>
</head>
<body>
<section id=".on">
<div id="Lights">SHAS Lights</div>
</section>
<div class="container">
<section id="">
<form method="post" action="light.jsp" name="light">
<h1>Lights</h1>
&nbsp;&nbsp; Select Room: <select onchange="rooms(this.value)"><option id="AllRooms">All Rooms</option>
<%
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
 
 String sqlOption="select distinct rooms from room";
 PreparedStatement psLight=null;
 psLight=con.prepareStatement(sqlOption);
 
 ResultSet rsLight = null;
 
 rsLight=psLight.executeQuery();
 
 while(rsLight.next()){
     %> 
     <option id="<%=rsLight.getString(1) %>" value="<%= rsLight.getString(1) %>"><%=rsLight.getString(1)%></option>
 <%
 }
     %>
</select>
&nbsp; &nbsp;Present Conditions <select name="Cond" onChange="optionChange(this.value)">
<option value=0>OFF</option>
<option value=1>Natural</option>
<option value=2>Read</option>
</select>
<table border="10" name="room" id="room">
<%
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
 
 String sqlOption1="select * from room";
 PreparedStatement psLight1=null;
 
 
 psLight1=con.prepareStatement(sqlOption1);
 
 
 ResultSet rsLight1=null;
 
 rsLight1=psLight1.executeQuery();
 int s;
 while(rsLight1.next()){
     %>
     <tr>
		<td class="<%=rsLight1.getString(1)%>"><%=rsLight1.getString(2)%></td>
		<% s=Integer.parseInt(rsLight1.getString(3));
     switch(s)
     {
     case 1:
     %>
    	 <td class="<%=rsLight1.getString(1)%>"><input type="range" min="0" max="100" value="<%= rsLight1.getString(6) %>" name="demo"></td>
     <% break;
     case 0:
     %>
     <td class="<%=rsLight1.getString(1)%>"><input type="radio" name="<%= rsLight1.getString(2) %>" value="<%=rsLight1.getString(2) %>" checked>ON
     <input type="radio" value="<%=rsLight1.getString(2) %>" name="<%= rsLight1.getString(2) %>">OFF</td>
     <% break;
     }
     %></tr> 
 <%
 }
     %>
</table>
<br>
Light Sensor Simulator: <input type="range" value="100" min="0" max="100" step="5" name="demo1" onchange="lightSensor(this.value)">
<br>
<a href="addlight.jsp"><input type="button" name="addLight" value="Add Light Devices"></a>
</form>
</div>
</body>
</html>
