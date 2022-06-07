<%-- 
    Document   : home
    Created on : May 30, 2022, 2:12:44 PM
    Author     : 2uang
--%>

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
            if (loginUser == null || !loginUser.getRolID().trim().equals("NM")) {
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

                    <a style="padding-right: 200px"> Xin chào<%=loginUser.getFullName()%>  </a>


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




        <!-- Section-->


        <section class="py-5">



            <div class="container px-4 px-lg-5 mt-5">
                <!--//          <h3>Loạisdfsf phế liệu</h3>-->
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <% for (int i = 0; i < listUserIdGroupBy.size(); i++) {%>
                    <div class="col mb-5">

                        <div class="card h-100">
                            <!-- Product image-->
                            <!--<img class="card-img-top" src="<--%=listProductBeSell.get(i).getProductImg()%>" alt="..." />-->
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%=listUserIdGroupBy.get(i).getUserID()%></h5>
                                    <!-- Product price-->
                                    <%--<%=listProductBeSell.get(i).getProductID()%>--%>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <form action="Maincontroller" >
                                <input type="hidden" name="userSellID" value="<%=listUserIdGroupBy.get(i).getUserID() %>">
                                <button style="text-align: center ;margin: 0 auto; display: block"  name="btAction" value="See detail to buy">Click to see detail</button>
                            </form>

                        </div>

                    </div>

                    <% }%>

                    <!--                                                            <div class="col mb-5">
                                                                                    <div class="card h-100">
                                                                                         Sale badge
                                                                                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                                                         Product image
                                                                                        <img class="card-img-top" src="https://tse3.mm.bing.net/th?id=OIP.USqlcQnofgaLxm3YFKwrUwHaFj&pid=Api&P=0&w=220&h=165" alt="..." />
                                                                                         Product details
                                                                                        <div class="card-body p-4">
                                                                                            <div class="text-center">
                                                                                                 Product name
                                                                                                <h5 class="fw-bolder">Đồng</h5>
                                                                                                 Product reviews
                                                                                                <div class="d-flex justify-content-center small text-warning mb-2">
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                </div>
                                                                                                 Product price
                                                                                                <span class="text-muted text-decoration-line-through">$20.00</span>
                                                                                                3000
                                                                                            </div>
                                                                                        </div>
                                                                                         Product actions
                                                                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Product Detail</a></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>-->
                    <!--                                                            <div class="col mb-5">
                                                                                    <div class="card h-100">
                                                                                         Sale badge
                                                                                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                                                         Product image
                                                                                        <img class="card-img-top" src="https://tse3.mm.bing.net/th?id=OIP.7hQqpWP4yAJYAniNbQqRVQHaF1&pid=Api&P=0&w=208&h=163" alt="..." />
                                                                                         Product details
                                                                                        <div class="card-body p-4">
                                                                                            <div class="text-center">
                                                                                                 Product name
                                                                                                <h5 class="fw-bolder">nhựa</h5>
                                                                                                 Product price
                                                                                                <span class="text-muted text-decoration-line-through">$50.00</span>
                                                                                                2000
                                                                                            </div>
                                                                                        </div>
                                                                                         Product actions
                                                                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="productDetail.jsp">Product Detail</a></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>-->
                    <!--                                                            <div class="col mb-5">
                                                                                    <div class="card h-100">
                                                                                         Product image
                                                                                        <img class="card-img-top" src="https://tse3.mm.bing.net/th?id=OIP.hTAAxVR-jYtcTH2vzHUo_gHaEw&pid=Api&P=0&w=295&h=189" alt="..." />
                                                                                         Product details
                                                                                        <div class="card-body p-4">
                                                                                            <div class="text-center">
                                                                                                 Product name
                                                                                                <h5 class="fw-bolder">nhôm</h5>
                                                                                                 Product reviews
                                                                                                <div class="d-flex justify-content-center small text-warning mb-2">
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                    <div class="bi-star-fill"></div>
                                                                                                </div>
                                                                                                 Product price
                                                                                                6000
                                                                                            </div>
                                                                                        </div>
                                                                                         Product actions
                                                                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Product Detail</a></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>-->
                    <!--                                        <div class="col mb-5">
                                                                <div class="card h-100">
                                                                     Sale badge
                                                                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                                     Product image
                                                                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                                     Product details
                                                                    <div class="card-body p-4">
                                                                        <div class="text-center">
                                                                             Product name
                                                                            <h5 class="fw-bolder">Giấy báo</h5>
                                                                             Product price
                                                                            <span class="text-muted text-decoration-line-through">$50.00</span>
                                                                            2000
                                                                        </div>
                                                                    </div>
                                                                     Product actions
                                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Product Detail</a></div>
                                                                    </div>
                                                                </div>
                                                            </div>-->
                    <!--                                        <div class="col mb-5">
                                                                <div class="card h-100">
                                                                     Product image
                                                                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                                     Product details
                                                                    <div class="card-body p-4">
                                                                        <div class="text-center">
                                                                             Product name
                                                                            <h5 class="fw-bolder">nhôm cứng</h5>
                                                                             Product price
                                                                            10000
                                                                        </div>
                                                                    </div>
                                                                     Product actions
                                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Product Detail</a></div>
                                                                    </div>
                                                                </div>
                                                            </div>-->
                    <!--                                        <div class="col mb-5">
                                                                <div class="card h-100">
                                                                     Sale badge
                                                                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                                     Product image
                                                                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                                     Product details
                                                                    <div class="card-body p-4">
                                                                        <div class="text-center">
                                                                             Product name
                                                                            <h5 class="fw-bolder">Thép</h5>
                                                                             Product reviews
                                                                            <div class="d-flex justify-content-center small text-warning mb-2">
                                                                                <div class="bi-star-fill"></div>
                                                                                <div class="bi-star-fill"></div>
                                                                                <div class="bi-star-fill"></div>
                                                                                <div class="bi-star-fill"></div>
                                                                                <div class="bi-star-fill"></div>
                                                                            </div>
                                                                             Product price
                                                                            <span class="text-muted text-decoration-line-through">$20.00</span>
                                                                            20000
                                                                        </div>
                                                                    </div>
                                                                     Product actions
                                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Product Detail</a></div>
                                                                    </div>
                                                                </div>
                                                            </div>-->
                    <!--                                        <div class="col mb-5">
                                                                <div class="card h-100">
                                                                     Product image
                                                                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                                     Product details
                                                                    <div class="card-body p-4">
                                                                        <div class="text-center">
                                                                             Product name
                                                                            <h5 class="fw-bolder">Cao su</h5>
                                                                             Product reviews
                                                                            <div class="d-flex justify-content-center small text-warning mb-2">
                                                                                <div class="bi-star-fill"></div>
                                                                                <div class="bi-star-fill"></div>
                                                                                <div class="bi-star-fill"></div>
                                                                                <div class="bi-star-fill"></div>
                                                                                <div class="bi-star-fill"></div>
                                                                            </div>
                                                                             Product price
                                                                            4000
                                                                        </div>
                                                                    </div>
                                                                     Product actions
                                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Product Detail</a></div>
                                                                    </div>
                                                                </div>
                                                            </div>-->
                </div>
            </div>  



        </section>

        <--% }%>

        <nav aria-label="Page navigation example" class="d-flex justify-content-center">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Thu mua phế liệu</p></div>
        </footer>

    </body>
</html>
