<?php

namespace App\Http\Controllers\Menu;

use App\Services\Menu\MenuService;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;

class MenuController extends BaseController
{
    private $menuService;

    public function __construct(MenuService $menuService)
    {
        $this->menuService = $menuService;
    }

    public function showMenuList()
    {
        $result = $this->menuService->showMenuList();
        return view('menu.menu_list')->with('result', $result);
    }

    public function showMenuCreateForm()
    {
        return view('menu.menu_create');
    }

    public function createMenu(Request $request)
    {
        $this->menuService->createMenu($request);
        return redirect()->route('menu.showMenuList');
    }

     public function showMenuDetail($menuId)
     {
         return view('menu.menu_detail')->with('menuData',$this->menuService->showMenuDetail($menuId));
     }

    public function updateMenu(Request $request)
    {
        $this->menuService->updateMenuDetail($request);
        return redirect()->back();
    }

    public function deleteMenu($menuId)
    {
        echo $this->menuService->deleteMenu($menuId);
        exit;
//        return redirect()->route('menu.showMenuList');
    }
}
