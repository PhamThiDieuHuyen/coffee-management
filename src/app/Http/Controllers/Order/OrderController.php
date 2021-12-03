<?php

namespace App\Http\Controllers\Order;

use App\Services\Order\OrderService;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;

class OrderController extends BaseController
{
    private $orderService;

    public function __construct(OrderService $orderService)
    {
        $this->orderService = $orderService;
    }

    public function showOrderList()
    {
        $result = $this->orderService->showOrderList();
        return view('order.order_list')->with('result', $result);
    }

    public function showOrderCreateForm()
    {
        $result = $this->orderService->showOrderCreate();
        return view('order.order_create')->with('result', $result);
    }

    public function createOrder(Request $request)
    {
        $result = $this->orderService->createOrder($request);
//        return view('order.order_create')->with('result', $result);
        return redirect()->back();
    }

    public function deleteOrder($orderId)
    {
        echo $this->orderService->deleteOrder($orderId);
        exit;
    }
}
