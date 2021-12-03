<?php


namespace App\Services\Order;


use Illuminate\Http\Request;

interface OrderService
{
    public function showOrderList();
    public function showOrderCreate();
    public function createOrder(Request $request);
    public function deleteOrder($orderId);
}
