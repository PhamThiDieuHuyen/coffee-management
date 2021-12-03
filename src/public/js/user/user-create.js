const UserCreate = {

    init: function () {
        this.userResetClick();
        this.uploadFileClick();
        this.checkPassword();
        this.checkConfirmPassword();
        this.checkUsername();
        this.checkPermission();
        this.checkAddress();
        this.checkPhone();
        this.checkSubmit();
    },
    userResetClick: function () {
        $('.user-reset').click(function () {
            const $message = $('#message');
            const $userSubmit = $('.user-submit');
            const $userNameInput = $('.user-name-input');
            const $userPasswordInput = $('.user-password-input');
            const $userConfirmPasswordInput = $('.user-confirm-password-input');
            const $userPermissionInput = $('.user-permission-input');
            const $userAddressInput = $('.user-address-input');
            const $userPhoneInput = $('.user-phone-input');
            const $userAvatarImg = $('.user-avatar-img');

            // reset value
            $userNameInput.val("");
            $userPasswordInput.val("");
            $userConfirmPasswordInput.val("");
            $userPermissionInput.val("");
            $userAddressInput.val("");
            $userPhoneInput.val("");
            $userAvatarImg.attr('src', $('.user-avatar').data('user-avatar-none'));
            $('.file-upload-info').text("");

            // disabled submit
            $userSubmit.prop("disabled", true);

            // hide message
            $message.hide();
        });
    },
    uploadFileClick: function () {
        const $this = this;
        $('#file-upload').change(function () {
            if (this.files && this.files[0]) {
                const reader = new FileReader();
                reader.onload = function (event) {
                    $('.user-avatar-img').attr('src', event.target.result);
                };
                reader.readAsDataURL(this.files[0]);
            }
            const filename = $('input[type=file]').val().replace(/C:\\fakepath\\/i, '');

            // set name to file upload info
            $('.file-upload-info').text(filename);

            // set ready to submit
            $('.user-avatar').data('user-avatar', 1);

            // check all condition to enable Submit
            $this.checkSubmit();
        })
    },
    checkPassword: function () {
        const $this = this;
        $('.user-password-input').keyup(function () {
            $this.statusValidPassword();
            // get userPassword, userConfirmPassword, message
            const $userPassword = $('.user-password');
            const $userConfirmPassword = $('.user-confirm-password');
            const $message = $('#message');

            //check valid password and confirm
            if ($this.checkValidPassword()) {
                // correct valid password, hide message
                $message.hide();
                $userPassword.find("i").show();
                $userConfirmPassword.find("i").hide();
                if ($this.samePassword()) {
                    $userConfirmPassword.find("i").show();
                    // set value to ready submit
                    $userConfirmPassword.data("user-confirm-password", 1);
                }
            } else {
                // correct valid password, show message
                $('.user-submit').prop('disabled', true);
                $message.show();
                $userPassword.find("i").hide();
                $userConfirmPassword.find("i").hide();
            }
        })
    },
    checkConfirmPassword: function () {
        const $this = this;
        $('.user-confirm-password-input').keyup(function () {
            $this.statusValidPassword();

            // get userPassword, userConfirmPassword
            const $userConfirmPassword = $('.user-confirm-password');

            //check valid password and confirm
            if ($this.checkValidPassword() && $this.samePassword()) {
                // correct valid password, hide message
                $userConfirmPassword.find("i").show();

                // set value to ready submit
                $userConfirmPassword.data("user-confirm-password", 1);
            } else {
                // correct valid password, show message
                $userConfirmPassword.find("i").hide();
            }
        })
    },
    samePassword: function () {
        return $('.user-password-input').val() === $('.user-confirm-password-input').val();
    },
    statusValidPassword: function () {
        // get user password input value
        let userPassword = $('.user-password-input').val();

        // Validate lowercase letters
        let lowerCaseLetters = /[a-z]/g;
        const letter = $('#letter');
        if (userPassword.match(lowerCaseLetters)) {
            letter.removeClass("invalid");
            letter.addClass("valid");
        } else {
            letter.removeClass("valid");
            letter.addClass("invalid");
        }

        // Validate capital letters
        let upperCaseLetters = /[A-Z]/g;
        const capital = $('#capital');
        if (userPassword.match(upperCaseLetters)) {
            capital.removeClass("invalid");
            capital.addClass("valid");
        } else {
            capital.removeClass("valid");
            capital.addClass("invalid");
        }

        // Validate numbers
        let numbers = /[0-9]/g;
        const number = $('#number');
        if (userPassword.match(numbers)) {
            number.removeClass("invalid");
            number.addClass("valid");
        } else {
            number.removeClass("valid");
            number.addClass("invalid");
        }

        // Validate length
        const lengths = $('#length');
        if (userPassword.length >= 8) {
            lengths.removeClass("invalid");
            lengths.addClass("valid");
        } else {
            lengths.removeClass("valid");
            lengths.addClass("invalid");
        }
    },
    checkValidPassword: function () {
        return ($('.valid').size() === 4);
    },
    checkUsername: function () {
        const $this = this;
        $('.user-name-input').keyup(function () {
            // check all condition to enable Submit
            $this.checkSubmit();
        })
    },
    checkPermission: function () {
        const $this = this;
        const $userPermissionInput = $('.user-permission-input');
        $userPermissionInput.keyup(function (event) {
            if ($(this).val() > 0) {
                // check all condition to enable Submit
                $this.checkSubmit();
            } else if ($(this).val() === "") {
                // check all condition to enable Submit
                $this.checkSubmit();
                event.stopPropagation();
            } else if ($(this).val() < 1) {
                new PNotify({
                    title: 'Validation',
                    text: 'Permission only between 1 -> 3',
                    type: 'warning',
                    styling: 'bootstrap3',
                    stack: {
                        dir1: 'left', dir2: 'down', // Position from the top left corner.
                        firstpos1: 10, firstpos2: 500 // 90px from the top, 90px from the left.
                    }
                });
            }
        });
        $userPermissionInput.change(function (event) {
            if ($(this).val() > 0) {
                // check all condition to enable Submit
                $this.checkSubmit();
            } else if ($(this).val() === "") {
                // check all condition to enable Submit
                $this.checkSubmit();
                event.stopPropagation();
            } else if ($(this).val() < 1) {
                new PNotify({
                    title: 'Validation',
                    text: 'Permission only between 1 -> 3',
                    type: 'warning',
                    styling: 'bootstrap3',
                    stack: {
                        dir1: 'left', dir2: 'down', // Position from the top left corner.
                        firstpos1: 10, firstpos2: 500 // 90px from the top, 90px from the left.
                    }
                });
            }
        });
    },
    checkAddress: function () {
        const $this = this;
        $('.user-address-input').keyup(function () {
            // check all condition to enable Submit
            $this.checkSubmit();
        })
    },
    checkPhone: function () {
        const $this = this;
        const $userPhoneInput = $('.user-phone-input');
        $userPhoneInput.keyup(function () {
            if ($(this).val() >= 0) {
                // check all condition to enable Submit
                $this.checkSubmit();
            } else if ($(this).val() < 0) {
                new PNotify({
                    title: 'Validation',
                    text: 'Phone number cannot less than 0!',
                    type: 'warning',
                    styling: 'bootstrap3',
                    stack: {
                        dir1: 'left', dir2: 'down', // Position from the top left corner.
                        firstpos1: 10, firstpos2: 500 // 90px from the top, 90px from the left.
                    }
                });
            }
        });
        $userPhoneInput.change(function () {
            if ($(this).val() >= 0) {
                // check all condition to enable Submit
                $this.checkSubmit();
            } else if ($(this).val() < 0) {
                new PNotify({
                    title: 'Validation',
                    text: 'Phone number cannot less than 0!',
                    type: 'warning',
                    styling: 'bootstrap3',
                    stack: {
                        dir1: 'left', dir2: 'down', // Position from the top left corner.
                        firstpos1: 10, firstpos2: 500 // 90px from the top, 90px from the left.
                    }
                });
            }
        });
    },
    checkSubmit: function () {
        const $submit = $('.user-submit');
        const $userNameInput = $('.user-name-input');
        const $userConfirmPasswordInput = $('.user-confirm-password');
        const $userPermissionInput = $('.user-permission-input');
        const $userAddressInput = $('.user-address-input');
        const $userPhoneInput = $('.user-phone-input');
        if (
            $userNameInput.val() &&
            $userConfirmPasswordInput.data("user-confirm-password") === 1 &&
            $userPermissionInput.val() &&
            $userAddressInput.val() &&
            $userPhoneInput.val() &&
            $('.user-avatar').data('user-avatar') !== 0
        ) {
            $submit.prop("disabled", false);
        } else {
            $submit.prop("disabled", true);
        }
    },
};
UserCreate.init();