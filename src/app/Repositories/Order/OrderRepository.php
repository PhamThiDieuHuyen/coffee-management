<?php


namespace App\Repositories\Order;


interface OrderRepository
{
    public function getAllOrderList();
    public function createNewOrder($order, $order_detail);
    public function deleteOrderId($orderId);
}
