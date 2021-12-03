<?php


namespace App\Services\MenuCategory;


use Illuminate\Http\Request;

interface MenuCategoryService
{
    public function createMenuCategory($request);
    public function showMenuCategoryList();
    public function showMenuCategoryDetail($menuCategoryId);
    public function updateMenuCategoryDetail(Request $request);
    public function deleteMenuCategoryList($id);
}
