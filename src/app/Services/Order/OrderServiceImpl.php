<?php

namespace App\Services\Order;

use App\Models\Order;
use App\Models\Order_detail;
use App\Repositories\Menu\MenuRepository;
use App\Repositories\MenuCategory\MenuCategoryRepository;
use App\Repositories\Order\OrderRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use function Psy\debug;


class OrderServiceImpl implements OrderService
{
    private $orderRepository;
    private $menuRepository;
    private $menuCategoryRepository;

    public function __construct(OrderRepository $orderRepository, MenuRepository $menuRepository, MenuCategoryRepository $menuCategoryRepository)
    {
        $this->orderRepository = $orderRepository;
        $this->menuRepository = $menuRepository;
        $this->menuCategoryRepository = $menuCategoryRepository;
    }

    public function showOrderList()
    {
        return $this->orderRepository->getAllOrderList();
    }

//    model 1
//    public function showOrderCreate()
//    {
//        $menuData = $this->menuRepository->getAllMenuList();
//        $menuCategoryData = [];
//        foreach($menuData as $menu){
//            $menuCategoryData[$menu->menuCategoryName][] = $menu;
//        }
//        return $menuCategoryData;
//    }

//    model 2
    public function showOrderCreate()
    {
        $result["menu"] = $this->menuRepository->getAllMenuList();
        $result["menuCategory"] = $this->menuCategoryRepository->getMenuCategoryList();
        return $result;
    }

    public function createOrder(Request $request)
    {
        $order = [];
        $order["orderId"] = Order::max("orderId") + 1;
        $order["userId"] = $request->session()->get("login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d");

        //create order detail
        $menuId = $request->input("menuId");
        $quantity = $request->input("quantity");
        $order_detail = [];
        $i = 0;
        foreach ($menuId as $new_menuId){
            $detail = []; //1 array 3 detail
            $detail["menuId"] = $new_menuId;
            $detail["quantity"] = $quantity[$i];
            $detail["orderId"] = $order["orderId"];
            $order_detail[] = $detail; //1 array save arrays $detail after every loop
            $i++;
        }
        return $this->orderRepository->createNewOrder($order, $order_detail);
    }

    public function deleteOrder($orderId)
    {
        return $this->orderRepository->deleteOrderId($orderId);
    }

}
