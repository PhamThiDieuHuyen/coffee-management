<?php


namespace App\Repositories\MenuCategory;


interface MenuCategoryRepository
{
    public function insertMenuCategory($menuCategoryData);
    public function getMenuCategoryList();
    public function getMenuCategoryDetail($menuCategoryId);
    public function updateMenuCategoryDetailById($menuCategoryData, $id);
    public function deleteMenuCategoryListById($id);
}
