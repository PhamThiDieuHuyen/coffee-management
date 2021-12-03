const $form = $( "#order-form" );

$(document).ready(function() {
    const OrderCreate = {
        init: function () {
            this.showActiveFirstCategory();
            this.showActiveImage();
            this.showActiveMenuCategoryItem();
            this.addTableRow();
            this.deleteTableRow();
            this.decreaseOneNumber();
            this.increaseOneNumber();
            this.deleteTable();
            // this.checkValidate();
        },
        showActiveFirstCategory(){
            $("#menuCategory_bar li").first().addClass("active");
        },
        showActiveImage(){
            // model 1
            // $(".image-cus").first().addClass("active");

            // model 2
            $(".tab-pane").first().addClass("active in");
        },
        showActiveMenuCategoryItem(){
            // model 1
            // $("#menuCategory_bar").each(function () {
            //     $('#menuCategory_bar ul').on('click', 'li', function(){
            //         $('#menuCategory_bar ul li').removeClass('active');
            //         $(this).addClass('active');
            //         $(".image-cus").removeClass("active");
            //         $(this).parent().parent().next().addClass('active');
            //     });
            // });

            // model 2
            $("#menuCategory_bar").each(function () {
                $('#menuCategory_bar ul').on('click', 'li', function(){
                    $('#menuCategory_bar ul li').removeClass('active');
                    $(this).addClass('active');
                });
            });
        },
        addTableRow(){
            //Compose template string
            String.prototype.compose = (function (){
                var re = /\{{(.+?)\}}/g;
                return function (o){
                    return this.replace(re, function (_, k){
                        return typeof o[k] != 'undefined' ? o[k] : '';
                    });
                }
            }());

            // press plus (select food)
            $(".plus-icon").each(function () {
                $(this).click(function () {
                    $(this).css("display", "none");
                    $(this).siblings().css("display", "block");
                    $(this).parent().parent().parent().addClass('active');
                    const name = $(this).data("name");
                    const id = $(this).data("id");
                    const price = $(this).data("price");
                    const row = `<tr data-id="{{id}}">
                                    <td>{{orderNumber}}</td>
                                    <td class="td"><input name="menuId[]" value="{{id}}" style="display: none"><input value="{{name}}" readonly></td>
                                    <td><i class="fa fa-minus-circle cursor-pointer"></i></td>
                                    <td class="num"><input name="quantity[]" value="1" readonly></td>
                                    <td><i class="fa fa-plus-circle cursor-pointer"></i></td>
                                    <td class="now-price" data-id="{{id}}">{{price}}</td>
                                    <td><i class="fa fa-trash trash-icon-add cursor-pointer"></i></td>
                                </tr>`;

                    //Add row
                    $(".list-table").append(row.compose({
                        'orderNumber': ".",
                        'name': name,
                        'price': price,
                        'id': id,
                    }));

                    // update cost
                    const nowPrice = Number($('.now-price[data-id = '+ id +']').html());
                    const  moneyTotal = Number($(".money-total").html());
                    const total = moneyTotal + nowPrice;
                    // $(".money-total").val(total);
                    $(".money-total").text(total);
                });
            });
        },
        deleteTableRow(){
            //press trash at menu
            $(".trash-icon").each(function () {
                $(this).click(function () {
                    $(this).css("display", "none");
                    $(this).siblings().css("display", "block");
                    $(this).parent().parent().parent().removeClass('active');
                    //get data-id of trash-icon
                    const menuId = $(this).data("id");

                    // update cost
                    const nowPrice = Number($('.now-price[data-id = '+ menuId +']').html());
                    const  moneyTotal = Number($(".money-total").html());
                    const total = moneyTotal - nowPrice;
                    // $(".money-total").val(total);
                    $(".money-total").text(total);

                    // delete row
                    $('table.list-table tr[data-id = '+ menuId +']').remove(); //remove tr of table with the same data-id
                });
            });

            //press trash at table row
            $form.on("click", ".trash-icon-add", function () {
                //get data-id of trash-icon-add
                const menuId = $(this).parent().parent().data("id");
                $('.trash-icon[data-id = '+ menuId +']').css("display", "none");
                $('.border-order[data-id = '+ menuId +']').removeClass('active');
                $('.plus-icon[data-id = '+ menuId +']').css("display", "block");

                // update cost
                const nowPrice = Number($('.now-price[data-id = '+ menuId +']').html());
                const  moneyTotal = Number($(".money-total").html());
                const total = moneyTotal - nowPrice;
                // $(".money-total").val(total);
                $(".money-total").text(total);

                // delete row
                $(this).parent().parent().remove();
            });
        },
        decreaseOneNumber(){
            $form.on("click", ".fa-minus-circle", function () {
                const quantity = Number($(this).parents().siblings('td.num').find('input').val());
                if (quantity === 1)
                    alert("Your quantity of menu must be more than 0");
                    if (quantity > 1)
                    {
                    $(this).parents().siblings('td.num').find('input').val(quantity - 1);

                    // update cost
                    const menuId = $(this).parent().parent().data("id");
                    const originalPrice = Number($('.original-price[data-id = '+ menuId +']').html()); //get original price at menu
                    const singleProductPrice = $('.now-price[data-id = '+ menuId +']'); //select class have data-id = menuId at form
                    const nowPrice = Number(singleProductPrice.html()); //get now price of selected product before decrease one number
                    const  moneyTotal = Number($('.money-total').html());

                    const increasePrice = nowPrice - originalPrice; //update price of selected product after decrease one number
                    singleProductPrice.text(increasePrice);

                    const total = moneyTotal - originalPrice;
                    // $(".money-total").val(total);
                    $(".money-total").text(total);
                }
            });
        },
        increaseOneNumber(){
            $form.on("click", ".fa-plus-circle", function () {
                const quantity = Number($(this).parents().siblings('td.num').find('input').val());
                if (quantity === 98)
                    alert("Your quantity of menu must be less than 99");
                if (quantity < 98) {
                    $(this).parents().siblings('td.num').find('input').val(quantity + 1);

                    // update cost
                    const menuId = $(this).parent().parent().data("id");
                    const originalPrice = Number($('.original-price[data-id = ' + menuId + ']').html()); //get original price at menu
                    const singleProductPrice = $('.now-price[data-id = ' + menuId + ']'); //select class have data-id = menuId at form
                    const nowPrice = Number(singleProductPrice.html()); //get now price of selected product before increase one number
                    const moneyTotal = Number($('.money-total').html());

                    const increasePrice = nowPrice + originalPrice; //update price of selected product after increase one number
                    singleProductPrice.text(increasePrice);

                    const total = moneyTotal + originalPrice;
                    // $(".money-total").val(total);
                    $(".money-total").text(total);
                }
            });
        },
        checkValidate(){
            $form.validate({
                rules: {
                    quantity: {
                        min: 1,
                        max: 98,
                    }
                },
                messages: {
                    quantity: {
                        min: "Your quantity of menu must be more than 0",
                        max: "Your quantity of menu must be less than 99",
                    }
                },
            });
        },
        deleteTable(){
            $form.on("click", ".btn-reset", function() {
                $(".list-table").find("tr").remove();
                $(".trash-icon").css("display", "none");
                $(".plus-icon").css("display", "block");
                $('.border-order').removeClass('active');

                // update cost
                const total = 0;
                // $(".money-total").val(total);
                $(".money-total").text(total);
            });
        },
    };
    OrderCreate.init();
});

