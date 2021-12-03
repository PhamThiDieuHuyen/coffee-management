const $form = $( "#menu-category-form" );
$(document).ready(function() {
    // press edit
    $(".menuCategory-edit").click(function () {
        $(".menuCategory-edit").css("display", "none");
        $(".menuCategory-submit").css("display", "inline-block");
        $(".menuCategory-cancel").css("display", "inline-block");
        $(".menuCategory-reset").css("display", "inline-block");
        $(".menu-category-name-input").attr("readonly", false);
        $("#textarea").attr("readonly", false);
        $("#textarea").attr("disabled", false);
    });

    // validate
    $form.validate({
        focusInvalid: true,
        rules: {
            menuCategoryName: {
                required: true,
                maxlength: 50,
            },
            menuCategoryDescribe:{
                maxlength: 100,
            }
        },
        messages: {
            menuCategoryName: {
                required: "Please specify your name",
                maxlength: "Your name must be less than 50 characters long",
            },
            menuCategoryDescribe: {
                maxlength: "Your describe must be less than 100 characters long",
            }
        }
    });

    const validator = $form.validate();

    // press cancel
    $(".menuCategory-cancel").click(function () {
        $(".menuCategory-edit").css("display", "block");
        $(".menuCategory-submit").css("display", "none");
        $(".menuCategory-cancel").css("display", "none");
        $(".menuCategory-reset").css("display", "none");
        $(".menu-category-name-input").attr("readonly", true);
        $("#textarea").attr("readonly", true);
        $("#textarea").attr("disabled", true);
        $(".menuCategory-submit").attr("disabled", true);
        validator.resetForm();
    });

    $form.find('input, textarea').keyup(function () {
        var $a = $(".menu-category-name-input").val();
        var $b = $("#textarea").val();
        if ($(this).val() !== "") {
            $('button:submit').attr('disabled', false);
        } else if ($a !== "" && $b === ""){
            $('button:submit').attr('disabled', false);
        }
        else $('button:submit').attr('disabled', true);
    });

    // press reset
    $(".menuCategory-reset").click(function() {
        $(".menu-category-name-input").val(null);
        $("#textarea").val(null);
        validator.resetForm();
    });
});
