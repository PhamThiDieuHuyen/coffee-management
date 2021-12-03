const MenuList = {
    init: function () {
        this.initMenuTable();
        // this.menuRowClick();
        this.showDeleteModal();
        this.deleteMenu();
    },

    initMenuTable: function () {
        $('#menu-table').DataTable();
    },
    showDeleteModal: function () {
        $('#menu-table').on('click', '.delete-menu', function (event) {
            // event.stopPropagation();
            const menuId = $(this).data('menu-id');
            $('.delete-yes').data('menu-id',menuId);
            // $('.confirm-delete-modal').modal('show');
        });
    },
    deleteMenu: function () {
        $('.delete-yes').click(function () {
            const menuId = $(this).data('menu-id');
            $.ajax({url: 'delete/'+ menuId, success: function(result){
                    window.location.reload();
                }});
        });
    },
};
MenuList.init();
// function clickMenuCategoryName(element) {
//     window.location.replace($(element).data('url'));
// }
// function clickMenuName(element) {
//     window.location.replace($(element).data('url'));
// }
