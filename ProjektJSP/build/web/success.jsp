
<%@ page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align:center">
        <h1>Udalo się</h1>
        <a href="index.jsp"><input type="button" value="Strona glowna" class="btn" /></a>
        <br>
         <br>
         <%
         try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://db4free.net:3306/projekt2","aleksandra_galat","truskawkiipoziomki");
            Statement st = con.createStatement();
            ResultSet rs= st.executeQuery("select * from projekt2.projekt");
      out.println("<table class=\"table\">");
             while (rs.next())
    {   
        out.println("<tr>");
        out.println("<td>"+rs.getString("id")+"</td>");
        out.println("<td>"+rs.getString("Login")+"</td>");
        out.println("<td>"+rs.getString("Haslo")+"</td>");
        out.println("<td>"+rs.getString("Email")+"</td>");
      
        out.println("</tr>");
      
      
    }
             out.println("</table>");
             
    rs.close();
            }
         catch(Exception e){
            out.println(e);
        }
           %>
        
    </body>
</html>
