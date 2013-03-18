<%@ page language="java" import="java.sql.*" errorPage="" %>
<%@ page import="javax.sql.DataSource,com.mysql.jdbc.Driver;" %>
<%

    Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "");
    
    ResultSet rsdoLogin = null;
    PreparedStatement psdoLogin=null;
    
    String sUserID=request.getParameter("username");
    String sPassword=request.getParameter("password");
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    
    try{
    	
    String sqlOption="INSERT INTO Users(username,password,firstname,lastname) VALUES ('"+sUserID+"',"+"'"+sPassword+"','"+fname+"','"+lname+"')";
    
    psdoLogin=conn.prepareStatement(sqlOption);    
    rsdoLogin=psdoLogin.executeQuery();
    
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    
    /// close object and connection
    try{
         if(psdoLogin!=null){
             psdoLogin.close();
         }
         if(rsdoLogin!=null){
             rsdoLogin.close();
         }
         
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }

%>