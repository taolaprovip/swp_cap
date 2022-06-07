<%-- 
    Document   : register
    Created on : Jun 4, 2022, 12:53:00 PM
    Author     : Admin
--%>

<%@page import="dto.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information account</title>

    </head>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Yinka Enoch Adedokun">
        <meta name="description" content="Simple Sign Up Page Using HTML and CSS">
        <meta name="keywords" content="sign-up page, basic html and css">
        <title>Sign Up Page - HTML + CSS</title>
        <link rel="stylesheet" href="../index/css/css/base.css">
        <link href="css/register.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="row">
            <h1>Your account</h1>

            <%
                UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");

            %>

            <h6 class="information-text">Open a New Account with Us.</h6>
            <form action="Maincontroller" method="get">

                <div class="form-group">
                    <p><label for="phone">Phone</label></p>
                    <input type="text" name="phone" id="phone" value="<%=loginUser.getPhone()%>" readonly="">
                    <p><label for="fullName">Full name</label></p>
                    <input type="text" name="fullName" id="fullName" value="<%=loginUser.getFullName()%>" readonly="">
                    <p><label for="Email">Email</label></p>
                    <input type="text" name="Email" id="Email" value="<%=loginUser.getEmail()%>" readonly="">
                    <p><label for="gender">Gender</label></p>
                    <input type="text" name="gender" id="gender" value="<%=loginUser.getSex()%>" readonly="">

                    <p><label for="DOB">DOB</label></p>
                    <input type="text" name="DOB" id="DOB" value="<%=loginUser.getBirthday()%>" readonly="">


<!--
                    <hr>
                    <label for="gender">Gender :</label>

                    <select id="gender" name="gender">
                        <option value="male">Male</option>
                        <option value="female">Female</option>

                    </select>


                    <label for="gender">Người bán / người mua :</label>

                    <select id="roleID" name="roleID">
                        <option value="NB">Người bán </option>
                        <option value="NM">Người mua</option>

                    </select>

                    <div class="medium-6 columns">
                        <p style="text-align: left">Birthday</p>
                        <div class="quesadilla">
                            <input type="date" class='date enchilada' name="birthday">
                        </div>-->
                    </div>




                    <button type="submit" name="btAction" value="updateAccount">Update Account</button>
                <!--</div>-->

            </form>
<!--            <div class="footer">
                <h5>Already have an account? <a href="login.jsp">Sign In.</a></h5>
            </div>-->
        </div>
        <script src="../index/base.js"></script>
    </body>
</html>
