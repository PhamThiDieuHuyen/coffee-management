const OrderList = {
    init: function () {
        this.initOrderTable();
        this.deleteOrder();
    },

    initOrderTable: function () {
        $('#order-table').DataTable();
    },

    deleteOrder: function () {
        $('#order-table').on('click', '.delete-order', function () {
            const orderId = $(this).data('order-id');
            $('.delete-yes').data('order-id',orderId);
        });

        $('.delete-yes').click(function () {
            const orderId = $(this).data('order-id');
            $.ajax({url: 'delete/'+ orderId, success: function(){
                    window.location.reload();
                }});
        });
    },
};
OrderList.init();

