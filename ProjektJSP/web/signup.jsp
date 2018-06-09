
<%@ page import="java.sql.*,java.util.*"%>
<%
    String action=request.getParameter("action");
    if(action.equals("signup")){
        String username = request.getParameter("username");
        String pwd = request.getParameter("password");
        String mail = request.getParameter("email");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://db4free.net:3306/projekt2","aleksandra_galat","truskawkiipoziomki");
            Statement st = con.createStatement();
            int i= st.executeUpdate("insert into projekt2.projekt(Login,Haslo,Email) values ('"+username+"','"+pwd+"','"+mail+"')");  
            response.sendRedirect("success.jsp");
           
        }
        catch(Exception e){
            out.println(e);
        }
        
    }
    
    
%>