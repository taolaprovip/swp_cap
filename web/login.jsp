<%-- 
    Document   : login
    Created on : May 30, 2022, 2:43:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/LoginStyle.css" rel="stylesheet" type="text/css"/>
        <!--<link href="style.css" rel="stylesheet" type="text/css"/>-->
    </head>
    
       <body>

        <div class="box-form">
            <div class="left">
                <div class="overlay">
                    <h1>Hello World.</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Curabitur et est sed felis aliquet sollicitudin</p>
                    <span>
                        <p>login with social media</p>
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i>Login with Google</a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i> Login with Twitter</a>
                    </span>
                </div>
            </div>


            <div class="right">

                <h5>Login</h5>
                <p>Don't have an account? <a href="createUser.jsp">Creat Your Account</a> it takes less than a minute</p>


                <form action="Maincontroller" method="get">
                    <div class="inputs">
                        <input type="text" placeholder="user name" name="cusName">
                        <br>
                        <input type="password" placeholder="password" name="cusPass">
                    </div>
                   
                    <br><br> 
                    <button type="submit" name="btAction" value="Login">Login</button>
                </form>


                <div class="remember-me--forget-password">
                    <!-- Angular -->
                    <label>
                        <input type="checkbox" name="item" checked/>
                        <span class="text-checkbox">Remember me</span>
                    </label>

                </div>

                <br>

            </div>

        </div>
        <!-- partial -->
    </body>
   
</html>
