<?php


namespace App\Repositories\Menu;


interface MenuRepository
{
    public function getAllMenuList();
    public function getMenuDetail($menuCategoryId);
    public function updateMenuDetailById($menuCategoryData, $id);
    public function deleteMenuId($menuId);
//    public function insertMenu($menuData);
}
