<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>

    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css">
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/popper.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="resources/css/detail.css">

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
                    <a href="/Funiture/">
                        <img src="https://www.ezlivingfurniture.ie/media/logo/stores/1/EZLiving_logo.jpeg" alt=""> 
                    </a>                 </div>
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
                            <a id="btn-checkout" href="checkout" class="ml-5 btn btn-danger rounded-0"><i class="fas fa-cart-plus"></i> ${total} item</a>
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

    <div class="container">
        <div class="row my-5">

            <div class="col-md-6">
                <div class="container width-fit" style="margin-bottom: 15px; width: 100%">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

                        <div class="carousel-inner">
                            <div class="carousel-item active" style="height: 500px;">
                                <img class="d-block w-100"
                                     src="resources/image/${product.image}"
                                     alt="First slide">
                            </div>
                            <div class="carousel-item" style="height: 500px;">
                                <img class="d-block w-100"
                                     src="resources/image/${images[2]}"
                                     alt="Second slide">
                            </div>
                            <div class="carousel-item" style="height: 500px;">
                                <img class="d-block w-100"
                                     src="resources/image/${images[3]}"
                                     alt="Third slide">
                            </div>
                            <div class="carousel-item" style="height: 500px;">
                                <img class="d-block w-100"
                                     src="resources/image/${images[1]}"
                                     alt="Third slide">
                            </div>
                        </div>
                        <!-- <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                                            data-slide="prev">
                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                                            data-slide="next">
                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a> -->
                    </div>
                </div>
                <ul class="list-inline d-flex justify-content-center">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active list-inline-item">
                        <img class="image-slide"
                             src="resources/image/${product.image}"
                             alt="">
                    </li>
                    <li class="list-inline-item" data-target="#carouselExampleIndicators" data-slide-to="1"><img
                            class="image-slide"
                            src="resources/image/${images[2]}"
                            alt=""></li>
                    <li class="list-inline-item" data-target="#carouselExampleIndicators" data-slide-to="2"><img
                            class="image-slide"
                            src="resources/image/${images[3]}"
                            alt=""></li>
                    <li class="list-inline-item" data-target="#carouselExampleIndicators" data-slide-to="3"><img
                            class="image-slide"
                            src="resources/image/${images[1]}"
                            alt=""></li>
                </ul>

            </div>
            <div class="col-md-6 mt-5">
                <h5>${product.name}</h5>
                <p class="star_rating">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                </p>

                <span class="mt-5">Shapely curves, a gentle recline and ?just-right? cushions invite the lost art of
                    unwinding.
                    A
                    sculptural powder-coated
                    steel base sets up the striking profile. Field Ottoman also available.</span>

                <div class="row ml-2 mt-5">
                    <a class="mr-3 " id="te">COLOR: </a>
                    <button class="btn btn-primary btn-sq rounded-0 mr-2"></button>
                    <button class="btn btn-success btn-sq rounded-0 mr-2"></button>
                    <button class="btn btn-danger btn-sq rounded-0 mr-2"></button>
                    <button class="btn btn-warning btn-sq rounded-0 mr-2"></button>
                    <button class="btn btn-dark btn-sq rounded-0 mr-2"></button>
                </div>
                <div class="mt-5">
                    <i class="fas fa-chevron-left"style="cursor: grab" id="chevron-left"></i>
                    <input type="text" id="quantity" value="1">
                    <i class="fas fa-chevron-right" style="cursor: grab" id="chevron-right"></i>
                </div>
                <div class="mt-5 d-flex flex-row">
                    <h2>$${product.price * (100 - product.discount)/100}</h2>
                    <button data-value ="${product.id}" class="border border-danger ml-5 btn btn-light add-to-cart"> ADD TO CART </button>
                </div>
                <h5 style="text-decoration: line-through;">$${product.price}</h5>
            </div>
        </div>
    </div>




    <div class="container my-4">
        <hr>
        <div class="row">
            <div class="col-md-3">
                <div class="ml-4 mt-5">
                    <ul style="list-style: none">
                        <li>
                            <p><a class="tag-a add-infor" style="color: orange;" href="">DESCRIPTION</a></p>
                        </li>
                        <li>
                            <p><a class="tag-a add-infor" href="">ADDTIONAL INFORMATION</a></p>
                        </li>
                        <li>
                            <p><a class="tag-a add-infor" href="">REVIEWS</a></p>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="col-md-9">
                <div class="row">
                    ${product.description}
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <img class="fit-image" src="resources/image/${images[0]}">
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="container-fluid width-fit p" style="margin-bottom: 15px;">
        <div class="row">
            <div class="col-md-12 text-center">
                <hr class="container">
                <h3>RELATED PRODUCTS</h3>
            </div>
        </div>
        <div id="carouselBestSeller" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselBestSeller" data-slide-to="0" class="active"></li>
                <li data-target="#carouselBestSeller" data-slide-to="1"></li>
                <li data-target="#carouselBestSeller" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container">
                        <div class="row">
                            <c:forEach var="p" items="${bestSeller}">
                                <div class="col-md-3 product-item">
                                    <div class="container" >
                                        <div class="row">
                                            <div class="col-md-12" style="height: 200px">
                                                <a href="detail?id=${p.id}">
                                                    <img src="resources/image/${p.image}"
                                                         class="fit-image"
                                                         alt="${p.name}">
                                                </a>

                                            </div>
                                            <div class="col-md-12 no-padding">
                                                <h5 class="max-lines">
                                                    <a class="tag-a" href="detail?id=${p.id}">${p.name}</a>
                                                </h5>
                                                <p class="star_rating">
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star checked"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span class="fa fa-star"></span>
                                                    <span>(12)</span>
                                                </p>
                                                <div class="">
                                                    <i data-value="${p.id}" class="d-inline fas fa-cart-plus item-hover add-to-cart"></i>
                                                    <h6 class="d-inline" >€${p.price}</h6>
                                                    <i class="d-inline fas fa-heart item-hover"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 product-item">
                                <div class="card no-border" style="width: 100%">
                                    <img src="https://www.ezlivingfurniture.ie/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/1/2/121544_1_white-chair-kuga-power-shot.jpg"
                                         class="card-img-top"
                                         alt="https://images-na.ssl-images-amazon.com/images/I/51ssBq6uKmL._AC_SY300_.jpg">
                                    <div class="card-body no-padding">
                                        <h5 class="max-lines">
                                            <a class="tag-a" href="#">Modern White Dining Shell Chair</a>
                                        </h5>
                                        <p class="star_rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span>(12)</span>
                                        </p>
                                        <h6>?39.00</h6>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 product-item">
                                <div class="card no-border" style="width: 100%">
                                    <img src="https://www.ezlivingfurniture.ie/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/1/2/121544_1_white-chair-kuga-power-shot.jpg"
                                         class="card-img-top"
                                         alt="https://images-na.ssl-images-amazon.com/images/I/51ssBq6uKmL._AC_SY300_.jpg">
                                    <div class="card-body no-padding">
                                        <h5 class="max-lines">
                                            <a class="tag-a" href="#">Modern White Dining Shell Chair</a>
                                        </h5>
                                        <p class="star_rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span>(12)</span>
                                        </p>
                                        <h6>?39.00</h6>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 product-item">
                                <div class="card no-border" style="width: 100%">
                                    <img src="https://www.ezlivingfurniture.ie/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/1/2/121544_1_white-chair-kuga-power-shot.jpg"
                                         class="card-img-top"
                                         alt="https://images-na.ssl-images-amazon.com/images/I/51ssBq6uKmL._AC_SY300_.jpg">
                                    <div class="card-body no-padding">
                                        <h5 class="max-lines">
                                            <a class="tag-a" href="#">Modern White Dining Shell Chair</a>
                                        </h5>
                                        <p class="star_rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span>(12)</span>
                                        </p>
                                        <h6>?39.00</h6>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 product-item">
                                <div class="card no-border" style="width: 100%">
                                    <img src="https://www.ezlivingfurniture.ie/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/1/2/121544_1_white-chair-kuga-power-shot.jpg"
                                         class="card-img-top"
                                         alt="https://images-na.ssl-images-amazon.com/images/I/51ssBq6uKmL._AC_SY300_.jpg">
                                    <div class="card-body no-padding">
                                        <h5 class="max-lines">
                                            <a class="tag-a" href="#">Modern White Dining Shell Chair</a>
                                        </h5>
                                        <p class="star_rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span>(12)</span>
                                        </p>
                                        <h6>?39.00</h6>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 product-item">
                                <div class="card no-border" style="width: 100%">
                                    <img src="https://www.ezlivingfurniture.ie/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/1/2/121544_1_white-chair-kuga-power-shot.jpg"
                                         class="card-img-top"
                                         alt="https://images-na.ssl-images-amazon.com/images/I/51ssBq6uKmL._AC_SY300_.jpg">
                                    <div class="card-body no-padding">
                                        <h5 class="max-lines">
                                            <a class="tag-a" href="#">Modern White Dining Shell Chair</a>
                                        </h5>
                                        <p class="star_rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span>(12)</span>
                                        </p>
                                        <h6>?39.00</h6>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 product-item">
                                <div class="card no-border" style="width: 100%">
                                    <img src="https://www.ezlivingfurniture.ie/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/1/2/121544_1_white-chair-kuga-power-shot.jpg"
                                         class="card-img-top"
                                         alt="https://images-na.ssl-images-amazon.com/images/I/51ssBq6uKmL._AC_SY300_.jpg">
                                    <div class="card-body no-padding">
                                        <h5 class="max-lines">
                                            <a class="tag-a" href="#">Modern White Dining Shell Chair</a>
                                        </h5>
                                        <p class="star_rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span>(12)</span>
                                        </p>
                                        <h6>?39.00</h6>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 product-item">
                                <div class="card no-border" style="width: 100%">
                                    <img src="https://www.ezlivingfurniture.ie/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/1/2/121544_1_white-chair-kuga-power-shot.jpg"
                                         class="card-img-top"
                                         alt="https://images-na.ssl-images-amazon.com/images/I/51ssBq6uKmL._AC_SY300_.jpg">
                                    <div class="card-body no-padding">
                                        <h5 class="max-lines">
                                            <a class="tag-a" href="#">Modern White Dining Shell Chair</a>
                                        </h5>
                                        <p class="star_rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span>(12)</span>
                                        </p>
                                        <h6>?39.00</h6>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 product-item">
                                <div class="card no-border" style="width: 100%">
                                    <img src="https://www.ezlivingfurniture.ie/media/catalog/product/cache/image/e9c3970ab036de70892d86c6d221abfe/1/2/121544_1_white-chair-kuga-power-shot.jpg"
                                         class="card-img-top"
                                         alt="https://images-na.ssl-images-amazon.com/images/I/51ssBq6uKmL._AC_SY300_.jpg">
                                    <div class="card-body no-padding">
                                        <h5 class="max-lines">
                                            <a class="tag-a" href="#">Modern White Dining Shell Chair</a>
                                        </h5>
                                        <p class="star_rating">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                            <span>(12)</span>
                                        </p>
                                        <h6>?39.00</h6>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselBestSeller" role="button" data-slide="prev">
                <h3 class="text-dark far fa-arrow-alt-circle-left"></h3>
            </a>
            <a class="carousel-control-next" href="#carouselBestSeller" role="button" data-slide="next">
                <h3 class="text-dark far fa-arrow-alt-circle-right"></h3>
            </a>
        </div>
    </div>
    <hr class="container">


</div>



</body>

<footer>
    <div class="mt-5 container-fluid">
        <div class="row" style="height: 400px; background-color: #e9e9e9">
            <div class=" mt-5 container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="row" style="height: 50px;">
                            <h1>Furniture?</h1>
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
                                <p><a class="tag-a" href="">Mail: support@Furniture?.com</a></p>
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
                            2019 EZ Living Furniture?. All Rights Reserved <br> Terms & ConditionsSecure PaymentsSitemap
                        </span>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <script src="resources/js/custom.js"></script>

</footer>

</html>