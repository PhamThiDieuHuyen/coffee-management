const $form = $( "#menu-category-form" );
$(document).ready(function() {
    $form.validate({
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
            menuCategoryName: "Please specify your name",
            menuCategoryDescribe: {
                maxlength: "your describe must be less than 100 characters long",
            }
        }
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

    // reset validate form
    var validator = $form.validate();

    $("#menu-category-reset").click(function() {
        validator.resetForm();
        return $('#menu-category-submit').attr('disabled', true);
    });
});
