/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$(".tag-a").click(function () {
//    $(this).addClass("tag-a-active");
//    $("#tag-category").find(".tag-a-active").removeClass("tag-a-active");
//});

$('body').on('click', '#chevron-left', (function () {
    var quantity = parseInt($("#quantity").val());
    if (quantity > 0)
        quantity--;
    $("#quantity").val(quantity);
}));

$('body').on('click', '#chevron-right', (function () {
    var quantity = parseInt($("#quantity").val()) + 1;
    $("#quantity").val(quantity);
}));

$(".add-infor").click(function (event) {
    event.preventDefault();
    $("#category").find($("a.tag-active")).removeClass("tag-active");
    $(this).addClass("tag-active");
    var id = $(this).attr("href").toString();
    var html = document.getElementById('grid-product');
    console.log(html);
    $.ajax({
        url: "Ajax/Products",
        type: "get",
        data: {
            catID: id
        },
        success: function (value) {
            var htm = ``;
            htm = htm.concat((JSON.parse(value).map(function (p) {
                var content = `<div class="col-md-4 product-item">
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
                                            <h6>$${p.price}</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>`;
                return content;
            }).join('')));
            console.log(htm)
            html.innerHTML = htm;

        }
    });
});



$(".add-infor").click(function (event) {
    event.preventDefault();
    var id = $(this).attr("href").toString();
    var html = document.getElementById('categoryPattern');
    $.ajax({
        url: "Ajax/Category",
        type: "get",
        data: {
            catID: id
        },
        success: function (value) {
            var p = JSON.parse(value);
            var content = `<div class="row" style="height: 500px;">
            <div class="col-md-12">
                <img style="height: 100%; width: 100%;"
                    src="resources/image/${p.categoryImage}" alt="">
                <div class="carousel-caption">
                    <h3 class="caption">${p.categoryName}</h3>
                </div>
            </div>
        </div>`;
            html.innerHTML = content;

        }
    });
});


$(".add-to-cart").click(function (event) {
    event.preventDefault();
    var id = $(this).attr("data-value");
    var quantity = $("#quantity").val();
    var html = document.getElementById("btn-checkout");

    if (quantity === undefined)
        quantity = 1;
    $.ajax({
        url: "Ajax/AddToCart",
        type: "get",
        data: {
            id: id,
            quantity: quantity
        },
        success: function (value) {
            var content = `<i class="fas fa-cart-plus"></i> ${value} items`;
            console.log(value);
            html.innerHTML = content;
        }
    });
});


$("body").on('click', '.cancel-times', (function (event) {
    event.preventDefault();
    var id = $(this).attr("data-value");
    var html = document.getElementById('cart');
    $.ajax({
        url: "Ajax/RemoveCart",
        type: "get",
        data: {
            id: id
        },
        success: function (value) {
            var htm = ``;
            htm = htm.concat((JSON.parse(value).map(function (p) {
                var content = `<div class="row cart-items" >
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
                                </div>`;
                return content;
            }).join('')));
//            console.log(htm);
            html.innerHTML = htm;
        }
    });
}));


$("body").on('click', '.chevron', (function (event) {
    event.preventDefault();
    var id = $(this).attr("data-value");
    var dir = $(this).attr("id");
    var html = document.getElementById('cart');
    $.ajax({
        url: "Ajax/ChangeQuantity",
        type: "get",
        data: {
            id: id,
            dir: dir
        },
        success: function (value) {
            var htm = ``;
            htm = htm.concat((JSON.parse(value).map(function (p) {
                var content = `<div class="row cart-items" >
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
                                </div>`;
                return content;
            }).join('')));
//            console.log(htm);
            html.innerHTML = htm;
        }
    });
}));

