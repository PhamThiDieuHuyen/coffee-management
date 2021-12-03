const $form = $( "#menu-category-form" );

$(document).ready(function() {
    // press edit
    $(".menu-edit").click(function () {
        $(".menu-edit").css("display", "none");
        $(".menu-submit").css("display", "inline-block");
        $(".menu-cancel").css("display", "inline-block");
        $(".menu-reset").css("display", "inline-block");
        $(".custom-file-upload").css("display", "inline-block");
        $(".menu-name").attr("readonly", false);
        $(".menu-price").attr("readonly", false);
        $(".menu-category-name").attr("disabled", false);
    });

    // press cancel
    $(".menu-cancel").click(function () {
        $(".menu-edit").css("display", "block");
        $(".menu-submit").css("display", "none");
        $(".menu-cancel").css("display", "none");
        $(".menu-reset").css("display", "none");
        $(".custom-file-upload").css("display", "none");
        $(".menu-name").attr("readonly", true);
        $(".menu-price").attr("readonly", true);
        $(".menu-category-name").attr("disabled", true);
        $(".menu-submit").attr("disabled", true);
    });

    $form.validate({
        focusInvalid: true,
        rules: {
            menuName: {
                required: true,
                maxlength: 50,
            },
            menuPrice:{
                required: true,
                number: true,
                min: 1000,
            },
        },
        messages: {
            menuName: {
                required: "Please specify your name",
                maxlength: "Your name must be less than 50 characters long",
            },
            menuPrice: {
                required: "Please specify your price",
                number: "Please enter a valid number",
                min: "Your price must be entered with a value greater than or equal to 1000",
            },
        },
        submitHandler: function(form) {
            var checkimg = $('.frame-avatar').siblings('#file-upload-error').length;
            if(checkimg){
                return false;
            }
            else {
                form.submit();
            }
        },
    });

    const validator = $form.validate();
    const srcDemo = $(".img-center").attr('src');//image demo default

    // load image before saving
    //exec src image preview
    var allowType = ['image/jpeg','image/png','image/gif'];
    function readURL(input) {
        if (input.files && input.files[0]) {
            var fileUpload = input.files[0];
            if($.inArray(fileUpload.type, allowType) < 0) {
                $('#file-upload-error').remove(); //delete error
                let html = `<label id="file-upload-error" class="upload-error" for="file-upload">Please enter a value with a valid mimetype.</label>`
                $('.frame-avatar').parent().append(html); //add html if not image type
                $(".img-center").attr('src', srcDemo); //show image default if not image type
            }
            else {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $(".img-center").attr('src', e.target.result);
                };
                reader.readAsDataURL(fileUpload);
                $('#file-upload-error').remove(); //delete error
            }
        }
    }

    // after upload new img
    $("#file-upload").change(function(){
        readURL(this);
        //remove old name and add name for new img
        $('.file-upload-info').remove();
        let html = `<span class="file-upload-info col-md-12"></span>`
        $('.frame-avatar').parent().append(html); //add html
        const filename = $("#file-upload").val().replace(/.*(\/|\\)/, '');
        $('.file-upload-info').html(filename);
        $('.file-upload-info').attr('title',filename);
    });

    // check form is changed
    $form.on("change keyup", function () {
        $('button:submit').attr('disabled', false);
    });

    // press reset, cancel
    $(".menu-reset, .menu-cancel").click(function() {
        $(".img-center").attr("src", srcDemo); //return src img
        validator.resetForm();
        $('.file-upload-info').remove(); //delete name img
        $('#file-upload-error').remove(); //delete error
    });
});

