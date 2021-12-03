<?php


namespace App\Repositories\Order;


use App\Models\Order;
use App\Models\Order_detail;

class OrderRepositoryImpl implements OrderRepository
{
    public function getAllOrderList()
    {

        return $result = Order::select("order_trs.*", "user.username as username")
            ->join("user", "user.userId", "=", "order_trs.userId")
            ->get();
    }

    public function createNewOrder($order, $order_detail)
    {
        $resultOrder = Order::insert([
            'orderId' => $order['orderId'],
            'userId' => $order['userId'],
        ]);

        $resultDetail = [];
        foreach ($order_detail as $detail){
            $resultDetail[] = Order_detail::insert([
                'orderId' => $detail["orderId"],
                'menuId' => $detail["menuId"],
                'quantity' => $detail["quantity"],
            ]);
        }
        $result = $resultOrder.json_encode($resultDetail);
        return $result;
    }

    public function deleteOrderId($orderId)
    {
        $result = Order::where('orderId', '=', $orderId)->delete();
        return $result;
    }
}
