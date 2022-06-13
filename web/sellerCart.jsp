<%-- 
    Document   : sellerCart
    Created on : Jun 1, 2022, 6:27:49 PM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page import="dto.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cart</title>
    <link href="css/sellerCart.css" rel="stylesheet" type="text/css"/>
</head>

<body>






    <form action="Maincontroller">
        <!--<main>-->


        <div class="basket">
            <!--<link href="css/sellerCart.css" rel="stylesheet" type="text/css"/>-->
            <!--            <div class="basket-module">
                            <label for="promo-code">Enter a promotional code</label>
                            <input id="promo-code" type="text" name="promo-code" maxlength="5" class="promo-code-field">
                            <button class="promo-code-cta">Apply</button>
                        </div>-->



            <!--            <div class="basket-labels">
                            <ul>
                                <li class="item item-heading">Item</li>
                                <li class="price">Desc</li>
                                <li class="quantity">Address</li>
                                <li class="subtotal">Subtotal</li>
                            </ul>
                        </div>
                        <div class="basket-product">
                            <div class="item">  
                                <div class="product-image">
                                    <img src="" alt="Placholder Image 2" class="product-frame">
                                </div>
                                <div class="product-details">
                                                            <h1><strong><span class="item-quantity">4</span> x Eliza J</strong> Lace Sleeve Cuff Dress</h1>
                                                            <p><strong>Navy, Size 18</strong></p>
                                                            <p>Product Code - 232321939</p>
                                </div>
                            </div>
                            <div class="price">26.00</div>
                            <div class="quantity">
                                                    <input type="number" value="4" min="1" class="quantity-field">
                                <textarea></textarea>
                                <a href="#">Pick address</a>
            
                            </div>
                            <div class="subtotal">104.00</div>
                            <div class="remove">
                                <button>Remove</button>
                            </div>
                        </div>
                                    <div class="basket-product">
                                        <div class="item">
                                            <div class="product-image">
                                                <img src="" alt="Placholder Image 2" class="product-frame">
                                            </div>
                                            <div class="product-details">
                                                <h1><strong><span class="item-quantity">1</span> x Whistles</strong> Amella Lace Midi Dress</h1>
                                                <p><strong>Navy, Size 10</strong></p>
                                                <p>Product Code - 232321939</p>
                                            </div>
                                        </div>
                                        <div class="price">26.00</div>   
                                        <div class="quantity">
                        
                                            <textarea></textarea>   
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.6100104981742!2d106.80769431432095!3d10.841127592277662!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQgVFAuIEhDTQ!5e0!3m2!1svi!2s!4v1654135613428!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                        </div>
                                        <div class="subtotal">26.00</div>
                                        <div class="remove">
                                            <button>Remove</button>
                                        </div>
                                    </div> 
            
                     
                    </div>-->



            <aside style="float: left; margin: 0 auto;padding-left: 180px">
                <div class="summary" style="width: 80%; margin: 0 auto;" >
                    <div class="summary-total-items"><span class="total-items"></span> Tôi bán</div>
                    <div class="summary-subtotal">
                        <div class="subtotal-title">Đặt lịch thu gom</div>
                        <Br>
                        <p >Vui lòng chọn địa chỉ và thời gian thu gom mong muốn</p>
                        <!--<div class="subtotal-value final-value" id="basket-subtotal">130.00</div>-->
                        <div class="summary-promo hide">
                            <div class="promo-title">Promotion</div>
                            <div class="promo-value final-value" id="basket-promo"></div>
                        </div>
                    </div>
                    <div class="summary-delivery">
                        <!--                                    <select name="delivery-collection" class="summary-delivery-selection">
                                                                <option value="0" selected="selected">Select Collection or Delivery</option>
                                                                <option value="collection">Collection</option>
                                                                <option value="first-class">Royal Mail 1st Class</option>
                                                                <option value="second-class">Royal Mail 2nd Class</option>
                                                                <option value="signed-for">Royal Mail Special Delivery</option>
                                                            </select>-->

                        <textarea style="width: 60%; height: 25px" name="location"></textarea>
                    </div>
                    <div class="summary-total">
                        <div class="total-title">Thời gian thu gom</div>
                        <!--<div class="total-value final-value" id="basket-total">130.00</div>-->
                    </div>

                    <div> 
                        <ul>
                            <li ><a href="#">Ngày trong tuần</a></li>
                            <li><a href="#" style="padding-left: 80px">Thứ 7 - CN</a></li>
                        </ul>
                        <p>Date</p>
                        <input type="date" name="orderDate">


                    </div>
                    <br>
                    <br>
                    <!--                <div>
                                        Giờ thu gom: 8:00 - 21:00
                                    </div>-->
                    <div class="summary-checkout">
                        <button class="checkout-cta" name="btAction" value="Sell">Xác nhận</button>
                    </div>
                </div>

            </aside>
    </form>  



</body>

</html>
