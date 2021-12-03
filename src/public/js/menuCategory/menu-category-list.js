const MenuCategoryList = {
    init: function (){
        this.menuCategoryTable();
        this.deleteMenuCategory();
    },
    menuCategoryTable(){
        $('#menu-category-table').DataTable();
    },

    deleteMenuCategory: function () {
        $("#menu-category-table").on('click', '.delete-menu-category-list',function () {
            const menuCategoryId = $(this).data("id");
            $(".delete-yes").data('id',menuCategoryId);
        });

        $(".delete-yes").click(function () {
            var deleteId = $(this).data('id');
            window.location.replace('delete/'+ deleteId);
        });
    }
};
MenuCategoryList.init();
