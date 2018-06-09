<%@ page import="java.sql.*"%>
<%
    String action=request.getParameter("action");
    if(action.equals("signin")){
        String username = request.getParameter("username");
        String pwd = request.getParameter("password");
        String idd = request.getParameter("id");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://db4free.net:3306/projekt2","aleksandra_galat","truskawkiipoziomki");
            Statement st = con.createStatement();
            ResultSet rs= st.executeQuery("select * from projekt2.projekt where Login='"+username+"'and Haslo='"+pwd+"'");
            Statement stt = con.createStatement();
            if(rs.next()){          
                
                response.sendRedirect("success.jsp");           
                
                     
                  
               
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Nazwa uzytkownika lub haslo bledne')");
                out.println("location=index.jsp");
                out.print("</script>");
                
            }
        }
        catch(Exception e){
            out.println(e);
        }
    }
    
    else if(action.equals("signup")){
        response.sendRedirect("signup.jsp");
    }
    
%>