

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Proejekt</title>
    </head>
    <body style="text-align:center">
        <form method="post" action="check.jsp">
            <label><h2>Logowanie</h2></label>
            <br>
            <br>
            <div>
                <label>Login</label>
                <input type="text" name="username" placeholder="Login">
            </div>
            <div>
                <label>Haslo</label>
                <input type="text" name="password" placeholder="Haslo">
            </div>
           
            <br>
            <button type="submit" name="action" value="signin" class="btn">Zaloguj</button>
           
            <button type="reset" class="btn">Reset</button>
        </form>
        <br>
        <br>
        <label><h2>Rejestracja  </h2></label>
            <br>
            <br>
            <form method="post" action="signup.jsp">
            <div>
                <label>Login</label>
                <input type="text" name="username" placeholder="Login">
            </div>
           
            <div>
                <label>Haslo</label>
                <input type="text" name="password" placeholder="Haslo">
            </div>
       
            <div>
                <label>Email</label>
                <input type="text" name="email" placeholder="Email">
            </div>
            <br>
            <button type="submit" name="action" value="signup" class="btn">Rejestracja</button>
            <button type="reset" class="btn">Reset</button>                 
        </form>
    </body>
</html>
