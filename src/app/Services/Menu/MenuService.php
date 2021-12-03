<?php


namespace App\Services\Menu;


use Illuminate\Http\Request;

interface MenuService
{
    public function showMenuList();
    public function showMenuDetail($menuId);
    public function updateMenuDetail(Request $request);
    public function deleteMenu($menuId);
}
