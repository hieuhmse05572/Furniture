<%-- 
    Document   : checkout
    Created on : Apr 27, 2019, 9:25:44 AM
    Author     : Q
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>

    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css">

        <!-- Link Bootstrap JS and JQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="resources/css/checkout.css">
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-right">
                    <span style="font-size: 15px; font-weight: 500;">Call us for free: <a href="">19001221</a> |
                        support@funiture.com</span>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <img src="https://www.ezlivingfurniture.ie/media/logo/stores/1/EZLiving_logo.jpeg" alt="">
                </div>
                <div class="col-md-9 d-flex align-items-end">
                    <form class="form-inline w-100">
                        <div class="input-group w-100">
                            <input type="text" class="form-control" style="border-radius: 0"
                                   placeholder="Search entire store hare..." aria-label="Username"
                                   aria-describedby="basic-addon1">
                            <div class="input-group-prepend">
                                <button type="submit" class="input-group-text" id="basic-addon1"><i
                                        class="fa fa-search"></i></button>
                            </div>
                            <a href="checkout" class="ml-5 btn btn-danger rounded-0" data-toggle="popover" title="Popover title"
                               data-content="And her"><i class="fas fa-cart-plus"></i> 9 items</a>
                        </div>
                    </form>

                </div>
            </div>
            <div class="row d-flex justify-content-center">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="row">
                        <div class="collapse navbar-collapse w-100" id="navbarNav">
                            <ul class="navbar-nav w-100">
                                <li class="nav-item mr-4">
                                    <a class="nav-link" href="grid?catID=1">SOFAS</a>
                                </li>
                                <li class="nav-item mr-4">
                                    <a class="nav-link" href="grid?catID=2">BEDROOM</a>
                                </li>
                                <li class="nav-item mr-4">
                                    <a class="nav-link" href="grid?catID=3">LIVINGROOM</a>
                                </li>
                                <li class="nav-item mr-4">
                                    <a class="nav-link" href="grid?catID=4">DININGROOM</a>
                                </li>
                                <li class="nav-item mr-4">
                                    <a class="nav-link" href="grid?catID=5">LIGHTING</a>
                                </li>
                            </ul>
                        </div>
                        <div>
                        </div>
                    </div>
                </nav>
            </div>

        </div>
    </div>

    <div class="container my-4">
        <hr>
        <div class="row">
            <div class="col-md-6">
                <h4>BILLING DETAILS</h4>
                <form class="w-100">
                    <h5 class="f-14 mt-5">Country</h5>
                    <input type="text" class="form-control" style="border-radius: 0" placeholder="Viet Nam...">
                    <div class="row">
                        <div class="col-md-6">
                            <h5 class="f-14">First Name</h5>
                            <input type="text" class="form-control" style="border-radius: 0"
                                   placeholder="First Name...">
                        </div>
                        <div class="col-md-6">
                            <h5 class="f-14">Last Name</h5>
                            <input type="text" class="form-control" style="border-radius: 0" placeholder="Last Name...">
                        </div>
                    </div>

                    <h5 class="f-14">Company Name</h5>
                    <input type="text" class="form-control" style="border-radius: 0">
                    <h5 class="f-14">Address</h5>
                    <input type="text" class="form-control" style="border-radius: 0">
                    <h5 class="f-14">Town / City</h5>
                    <input type="text" class="form-control" style="border-radius: 0">
                    <h5 class="f-14">Email Address</h5>
                    <input type="text" class="form-control" style="border-radius: 0">
                    <h5 class="f-14">Phone</h5>
                    <input type="text" class="form-control" style="border-radius: 0">
                    <h5 class="f-14">Order Notes</h5>
                    <text type="text" class="form-control" style="border-radius: 0">

                </form>

            </div>
            <div class="ml-4 col-md-5">
                <h4>YOUR PAYMENT DETAILS</h4>
                <div class="scroll mt-5">
                    <div class="card no-border">

                        <div class="container" id="cart">
                            <c:forEach var="p" items="${Cart}">
                                <div class="row cart-items" >
                                    <div class="col-md-3">
                                        <img style="height: 50px;"
                                             src="resources/image/${p.product.image}"
                                             alt="${p.product.name}">
                                    </div>
                                    <div class="col-md-7">
                                        <h6 class="max-lines-small">
                                            <a class="tag-a" href="#">${p.product.name}</a>
                                        </h6>
                                        <p class="star_rating-small mb-0">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span>(12)</span>
                                        </p>
                                        <div class="mb-2" style="font-size: 12px">
                                            <i data-value="${p.product.id}" id="chevron--left" class="fas fa-chevron-left chevron"></i>
                                            <input type="text" style="height: 40px;" id="quantity" value="${p.quantity}">
                                            <i data-value="${p.product.id}" id="chevron--1right" class="fas fa-chevron-right chevron"></i>
                                        </div>

                                    </div>
                                    <div class="cold-md-2 text-center">
                                        <h6>€${p.product.price * p.quantity}</h6>
                                        <i data-value="${p.product.id}" data-price="${p.product.price}" class="fas fa-times mt-3 cancel-times"></i>
                                    </div>
                                    <hr class="container">
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="container">
                    <div class="row mt-3">
                        <div class="col-md-5">
                            <span>Cart Subtotal: </span>
                        </div>
                        <span>
                            <h5>$1234</h5>
                        </span>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-5">
                            <span>Shipping: </span>
                        </div>
                        <span>
                            <h5>Free Shipping</h5>
                        </span>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-5">
                            <span>Order Total: </span> </div>
                        <span>
                            <h5>$1234</h5>
                        </span>
                    </div>
                </div>

                <hr>

                <div class="form-check">
                    <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" value="">
                        <h5>Direct Bank Transfer</h5>
                        <div class="ml-3">
                            <span class="f-14">Make your payment directly into our bank account. Please use your Order
                                ID as the payment
                                reference. Your order won’t be
                                shipped until the funds have cleared in our account.</span>
                        </div>

                    </label>
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" value="">
                        <h5>COD (Cash on delivery)</h5>
                        <div class="ml-3">
                            <span class="f-14">Cash on delivery (COD), sometimes called collect on delivery, is the sale
                                of goods by mail order where payment is made
                                on delivery rather than in advance. If the goods are not paid for, they are returned to
                                the retailer</span>
                        </div>
                    </label>
                </div>
                <div class="form-check">
                    <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" value="">
                        <h5>Credit Card</h5>
                    </label>
                </div>
                <hr>
                <button class="btn btn-warning rounded-0">CHECKOUT</button>


            </div>
        </div>

    </div>

</div>

</div>

</body>

<footer>
    <div class="mt-5 container-fluid">
        <div class="row" style="height: 400px; background-color: #e9e9e9">
            <div class=" mt-5 container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="row" style="height: 50px;">
                            <h1>Furniture™</h1>
                        </div>
                        <div class=" mt-3 row">
                            <span>
                                Looking for some furniture inspiration? Find everything for your home under one roof at
                                IKEA, including bedroom, living
                                room, kitchen, dining room furniture and much more.
                            </span>
                        </div>
                    </div>
                    <div class="col-md-2 mr-4">
                        <h4>
                            <p class="text-danger">
                                Products
                            </p>
                        </h4>
                        <ul style="list-style: none">
                            <li>
                                <p><a class="tag-a" href="">SOFAS</a></p>
                            </li>
                            <li>
                                <p><a class="tag-a" href="">BEDROOM</a></p>
                            </li>
                            <li>
                                <p><a class="tag-a" href="">LIVINGROOM</a></p>
                            </li>
                            <li>
                                <p><a class="tag-a" href="">DININGROOM</a></p>
                            </li>
                            <li>
                                <p><a class="tag-a" href="">LIGHTING</a></p>
                            </li>

                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h4>
                            <p class="text-danger">
                                Shopping
                            </p>
                        </h4>
                        <ul style="list-style: none">
                            <li>
                                <p><a class="tag-a" href="">Your Cart</a></p>
                            </li>
                            <li>
                                <p><a class="tag-a" href="">Your Order</a></p>
                            </li>
                            <li>
                                <p><a class="tag-a" href="">Wishlist Items</a></p>
                            </li>
                            <li>
                                <p><a class="tag-a" href="">Shipping Detail</a></p>
                            </li>


                        </ul>
                    </div>
                    <div>
                        <h4>
                            <p class="text-danger">
                                WE CAN HELP YOU?
                            </p>
                        </h4>
                        <ul style="list-style: none">
                            <li>
                                <p><a class="tag-a" href="">Hotline: (+84) 1900-1234 </a></p>
                            </li>
                            <li>
                                <p><a class="tag-a" href="">Open - Close: 09:00 - 21:00</a></p>
                            </li>
                            <li>
                                <p><a class="tag-a" href="">Mail: support@Furniture™.com</a></p>
                            </li>


                        </ul>
                    </div>

                </div>
            </div>

        </div>
        <div class="row" style="height: 150px; ">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 mt-5">
                        <span>
                            2019 EZ Living Furniture™. All Rights Reserved <br> Terms & ConditionsSecure PaymentsSitemap
                        </span>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <script src="resources/js/custom.js"></script>
</footer>

</html>