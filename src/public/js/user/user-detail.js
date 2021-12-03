const UserDetail = {

    init: function () {
        this.userEditClick();
        this.userCancelClick();
        this.userResetClick();
        this.uploadFileClick();
        this.checkUsername();
        this.checkPermission();
        this.checkPhone();
        this.checkAddress();
        this.checkSubmit();
    },
    userEditClick: function () {
        $('.user-edit').click(function () {
            const $userSubmit = $('.user-submit');
            $('.user-name-input').attr("readonly", false);
            $('.user-permission-input').attr("readonly", false);
            $('.user-address-input').attr("readonly", false);
            $('.user-phone-input').attr("readonly", false);
            $userSubmit.show();
            $userSubmit.prop("disabled", true);
            $('.user-cancel').show();
            $('.user-reset').show();
            $('.custom-file-upload').show();
            $('.user-edit').hide();
        });
    },
    userCancelClick: function () {
        $('.user-cancel').click(function () {
            const $userNameInput = $('.user-name-input');
            const $userPermissionInput = $('.user-permission-input');
            const $userAddressInput = $('.user-address-input');
            const $userPhoneInput = $('.user-phone-input');
            const $userAvatarImg = $('.user-avatar-img');
            $userNameInput.attr("readonly", true);
            $userPermissionInput.attr("readonly", true);
            $userAddressInput.attr("readonly", true);
            $userPhoneInput.attr("readonly", true);
            $('.user-submit').hide();
            $('.user-cancel').hide();
            $('.user-reset').hide();
            $('.custom-file-upload').hide();
            $('.user-edit').show();
            $('.file-upload-info').text("");
            $userNameInput.val($('.user-name').data('user-name'));
            $userPermissionInput.val($('.user-permission').data('user-permission'));
            $userAddressInput.val($('.user-address').data('user-address'));
            $userPhoneInput.val($('.user-phone').data('user-phone'));
            $userAvatarImg.attr('src', $('.user-avatar').data('user-avatar'));
        });
    },
    userResetClick: function () {
        $('.user-reset').click(function () {
            const $message = $('#message');
            const $userSubmit = $('.user-submit');
            const $userNameInput = $('.user-name-input');
            const $userPermissionInput = $('.user-permission-input');
            const $userAddressInput = $('.user-address-input');
            const $userPhoneInput = $('.user-phone-input');
            const $userAvatarImg = $('.user-avatar-img');

            // reset value
            $userNameInput.val("");
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
            $('.file-upload-info').text(filename);
            // check all condition to enable Submit
            $this.checkSubmit();
        })
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
        const $userPermissionInput = $('.user-permission-input');
        const $userAddressInput = $('.user-address-input');
        const $userPhoneInput = $('.user-phone-input');
        if (
            $userNameInput.val() &&
            $userPermissionInput.val() &&
            $userAddressInput.val() &&
            $userPhoneInput.val()
        ) {
            $submit.prop("disabled", false);
        } else {
            $submit.prop("disabled", true);
        }
    },
};
UserDetail.init();