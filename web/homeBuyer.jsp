<%-- 
    Document   : home
    Created on : May 30, 2022, 2:12:44 PM
    Author     : 2uang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dto.Order"%>
<%@page import="java.util.List"%>
<%@page import="dto.ProductDTO"%>
<%@page import="dto.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Buyer</title>
        <link href="css/homeStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            String email = "";
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRolID().trim().equals("BU")) {
                loginUser = new UserDTO();
                response.sendRedirect("login.jsp");
                return;
            }
            if (loginUser != null) {
                email = loginUser.getEmail();
            }

            List<Order> listUserIdGroupBy = (List<Order>) request.getAttribute("LIST_USERID_GROUP_BY");
//            if (listProductBeSell != null) {

////                   List<ProductDTO> listSearchProduct = (List<ProductDTO>) request.getAttribute("LIST_SEARCH_PRODUCT");
//
////                String search = (String) request.getParameter("searchProduct");
////                if (search == null) {
////                    search = "";
////                }
            //get list product -->

        %>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Veca</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="homeSeller.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="inforAccount.jsp">About account</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>

                    <!--search product-->

                    <!--                    <form class="d-flex mx-auto" action="Maincontroller" method="get" >
                                            <input class="form-control me-2" type="text" placeholder="Search" name="txtSearch">
                                            <button class="btn btn-outline-success" type="submit" name="btAction" value="Search">Search</button>
                                        </form>
                    -->


                    <!--search product-->

                    <a style="padding-right: 200px"> Xin chào<%=loginUser.getFullName()%>  </a>


                    <form class="d-flex my-2"  action="sellerCart.jsp">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Buy
                            <!--<span class="badge bg-dark text-white ms-1 rounded-pill">0</span>-->
                        </button>
                    </form>


                    <form class="d-flex my-2" action="Maincontroller" method="POST">
                        <button class="btn btn-outline-dark" type="submit" name="btAction" value="Logout" style="margin-left: 42px;">
                            <i class="bi-cart-fill me-1"></i>
                            Log out

                        </button>
                    </form>



                    <!--<a class="btn btn-outline-primary ms-lg-2" href="login.jsp">Login</a>-->

                </div>
            </div>

        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">THU GOM PHẾ LIỆU</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Bảo vệ môi trường</p>
                </div>
            </div>
        </header>







        <div>
            <h3>Danh sách order</h3>

            <table border="1">
                <c:forEach items="${listOrders}" var="L">
                    <h1>${L}</h1>
                </c:forEach>
                <thead>
                    <tr>
                        <th>orderID</th>
                        <th>userID</th>
                        <th>location</th>
                        <th>orderDate</th>
                        <th>status</th>
                    </tr>
                </thead>
                <tbody>
 <
                    <c:forEach items="${listOrders}" var="L">
                    <tr>
                        <td>${L.orderID}</td>
                        <td>${L.userID}</td>
                        <td>${L.location}</td>
                        <td>${L.orderDate}</td>
                        <td>${L.status}</td>
                    </tr>
                    </c:forEach>
           
                </tbody>
            </table>
  

        </div>    


        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Thu mua phế liệu</p></div>
        </footer>

    </body>
</html>
