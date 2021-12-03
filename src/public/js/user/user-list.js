const UserList = {

    init: function () {
        this.initUserTable();
        this.userRowClick();
        this.showDeleteModal();
        this.deleteUser();
    },

    initUserTable: function () {
        $('#user-table').DataTable();
    },
    userRowClick: function () {
        $('.user-row').click(function () {
            const userId = $(this).data('user-id');
            const detailUserUrl = 'detail/' + userId;
            window.location.replace(detailUserUrl);
        });
    },
    showDeleteModal: function () {
        $('.delete-user').click(function (event) {
            event.stopPropagation();
            const userId= $(this).data('user-id');
            $('.delete-yes').data('user-id',userId);
            $('.confirm-delete-modal').modal('show');
        })
    },
    deleteUser: function () {
        $('.delete-yes').click(function () {
            const userId=$(this).data('user-id');
            window.location.replace('delete/'+ userId);
        });

    }
};
UserList.init();