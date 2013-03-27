<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<html>
<head>
<title>Successfully Login by JSP</title>
<link href='http://fonts.googleapis.com/css?family=Wendy+One' rel='stylesheet' type='text/css'>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

function initMenu() {
    $('#menu ul').hide(); // Hide the submenu
    if ($('#menu li').has('ul')) $('#menu ul').prev().addClass('expandable'); // Expand/collapse a submenu when it exists  
    $('.expandable').click(
      function() {
          $(this).next().slideToggle();
          $(this).toggleClass('expanded');
        }
      );
    }
  
  // When document ready, call initMenu() function 
  $(document).ready(function() {initMenu();});
</script>
<style type="text/css">
body
{
	
    background: #eee url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAMAAAC6sdbXAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF3d3d////riJKgAAAAAJ0Uk5T/wDltzBKAAAAFUlEQVR42mJgBAEGGMmAxAYCgAADAAGGABmnk/7aAAAAAElFTkSuQmCC);
	font-family: Arial,Helvetica,sans-serif;
    font-size: 16px;
    margin: 0;
    padding: 0;
}

#header
{
background: none repeat scroll 0 0 #000000;
    height: 50px;
    width: 100%;
    top: 15px; 
}

#topmenu ul {
    float: left;
    top: 15px;
    padding: 0;
    text-align: center;
    width: auto;
}

ul {
    list-style: none outside none;
    
    
    
}
#topmenu li
{
	list-style-type: none;
	padding-left: 38px;
	padding-right: 38px;
	display: inline;
	height: 22px;
	text-align: center;
	width: auto;
	
}

#logout
{
float: right;
position: relative;
top: 15px;
padding-right: 25px;
}

a
{
color: #E56A22;
}

#topmenu
{
display: block;
float: left;
position: relative;
color: white;
height: 30px;
width: 800px;
left: 50px;
}

#welcomeName
{
color: white;
float: right;
position: relative;
top: 15px;
right: 30px;
padding-right: 2px;
}

aside {
    float: left;
    margin-right: 20px;
    width: 250px;
    display: block;
}

nav {
	display: block;
}

/* Vertical menu */

#menu {
	display: block;
}

#menu ul {
	position: relative;
	padding: 0;
	
} 
        
        #menu li
        {
          margin: 0 0 3px 0;             
        }
        
        #menu a
        {
          display: block;
          *display: inline-block;
          *width: 240px;
          text-decoration: none;	            
          background: #ddd;
          color: #444;	
          padding: 10px 5px;
          text-transform: uppercase;
          font: bold 14px Arial,Helvetica, sans-serif;          
          -moz-border-radius:5px;
          -webkit-border-radius:5px;
          border-radius:5px;
          -moz-box-shadow: 0 1px 0 #ccc;
          -webkit-box-shadow: 0 1px 0 #ccc;
          box-shadow: 0 1px 0 #ccc;   
        }
        
        #menu a:hover
        {
            color: #eee;
            background: #9c9c9c;
            background: -webkit-gradient(linear, left top, left bottom, from(#bbb), to(#999));
            background: -webkit-linear-gradient(top, #bbb, #999); 
            background:    -moz-linear-gradient(top, #bbb, #999); 
            background:     -ms-linear-gradient(top, #bbb, #999); 
            background:      -o-linear-gradient(top, #bbb, #999); 
            background:         linear-gradient(top, #bbb, #999);          
        }
        
        #menu .expandable
        {
            position: relative; 
            
        }
        
        #menu .expandable:before,
        #menu .expandable:after
        {
          content: '';
          position: absolute;
          right: 5px;
          margin-top: 5px;
          border-top: 6px solid #444;
          border-right: 6px solid transparent;
          border-left: 6px solid transparent;          
        }
        
        #menu .expandable:before
        {
           border-top-color: #fff;
           margin-top: 6px;
        }
        
        #menu .expanded:after
        {
          border-top: 0;
          border-bottom: 6px solid #444;       
        }
        
        #menu .expanded:before
        {
            border-top: 0;
            border-bottom: 6px solid #fff;               
        }
        
        #menu ul a
        {
            background: #f2f2f2;
            text-transform: none;
            font-weight: normal;            
        }
        
        #menu ul a:hover
        {
            background: #fafafa;
            color: #444;
        } 
        
        #logo
        {
        	color: #ffffff;
			font-family: 'Wendy One', sans-serif;
			font-size: 45px;
			position: relative;
			left: 30px;
			float: left;

        } 
        
        footer {
			  position: relative;
			  text-align:right;
			  width:100%;
			  background-color: white;
			  display: block;
			  top: 559px;
			  height: 20px;
			  font-size: 14px;
				}
				
	    section{
        position: relative;
        display: block;
        
        }

 #content
        {
            float: left;
            width: 690px;
        }
        
        article
        {
            position: relative;            
            padding: 20px;
            top: 15px;
            margin: 0 0 20px 0;
            text-align: left;
            background: #fff;
            -moz-box-shadow: 0 1px 1px #999;
            -webkit-box-shadow: 0 1px 1px #999;
            box-shadow: 0 1px 1px #999;
            -moz-border-radius:5px;
            -webkit-border-radius:5px;
            border-radius:5px;            
        }
		
		button
		{
		height: 40px;
		width: 70px;		
    background-color: #DDDDDD;
    border: 1px solid #BBBBBB;
    border-radius: 3px 3px 3px 3px;
    box-shadow: 0 1px 0 rgba(0, 0, 0, 0.3), 0 2px 2px -1px rgba(0, 0, 0, 0.5), 0 1px 0 rgba(255, 255, 255, 0.3) inset;
    color: #555555;
    cursor: pointer;
    font: bold 13px arial,helvetica,sans-serif;
    text-shadow: 0 1px 0 rgba(255, 255, 255, 0.9);
    position: relative;
    margin-left:  30px;
    padding: 2px;
		}
		
		button:hover {
  		background-color:#EEEEEE;
  		color:#555555;
  		}
  		
  		#sprinkbtn
  		{
  			left: 65px;
  		}
  		
  		#thermobtn
  		{
  			left: 49px;
  		}
  		
  		#lightbtn
  		{
  			left: 72px;
  		}
  		.status
  		{
  			position: relative;
  			margin-left: 15px;
  			text-align: left;
  			padding: 5px;
  		}
        
        
       </style>

</head>
<body>
<% 
if(session.getAttribute("sUserID") == null)
	response.sendRedirect("Invalid.jsp?error="+"invalid access");
%>
<div id="header">
<div id="logo">
SHAS
</div>
<div id="topmenu">
<ul>
<li><a href="success.jsp">Home</a></li>
<li><a href="#">Devices</a></li>
<li><a href="#">Reports</a></li>
<li><a href="#">Settings</a></li>
</ul>
</div>
<div id="logout">
<a href="LogoutPage.jsp">Logout</a>
</div> <!-- end of logout div -->
<div id="welcomeName">
<%
out.print("Welcome! "+session.getAttribute("sUserID"));
%>
</div> <!-- end of welcomeName -->
</div> <!-- end of header -->
<aside>
        <nav>
            <ul id="menu">
                <li><a href="#">Home</a></li>
                <li>
                    <a href="#" class="expandable">Devices</a>
                    <ul style="display: none;">                
                        <li><a href="#">Sprinkler</a></li>
                        <li><a href="#">Thermostat</a></li>
                        <li><a href="#">Lighting</a></li>                      
                    </ul>        
                </li>
                <li><a href="#">Usage Reports</a></li>
                <li><a href="#">Settings</a></li>  
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>                 
            </ul>
        </nav>
    </aside>
<div id="content">
        <article>
            <section>
                <div class="status">Sprinkler
                <button id="Sprinkbtn">ON</button></div>
                <div class="status">Thermostat
                <button id="Thermobtn">OFF</button></div>
                <div class="status">Lighting
                <button id="Lightbtn">OFF</button></div>
                
            </section>
            
        </article>        
    </div>
    <footer>
Design and Code by Team Omega</footer>
</body>
</html>