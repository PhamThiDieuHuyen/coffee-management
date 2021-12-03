<?php


namespace App\Repositories\Menu;


use App\Models\Menu;

class MenuRepositoryImpl implements MenuRepository
{
    public function getAllMenuList()
    {
        return $result = Menu::select("menu.*", "menu_category.name as menuCategoryName")
            ->join("menu_category", "menu_category.menuCategoryId", "=", "menu.menuCategoryId")
            ->get();
    }

//    public function getMenuById($menuId)
//    {
//        $result = Menu::find($menuId);
//        return $result;
//    }

//    public function insertMenu($menuData)
//    {
//        Menu::insert(
//            [
//                'nameMenuCategory'=>$menuData['nameMenuCategory'],
//                'name' => $menuData['name'],
//                'describe' => $menuData['describe']
//            ]
//        );
//    }

    public function getMenuDetail($menuId){
        return Menu::find($menuId);
    }

    public function updateMenuDetailById($menuData, $id){
        return Menu::where("menuId" ,"=", $id)->update($menuData);
    }

    public function deleteMenuId($menuId)
    {
        $result = Menu::where('menuId', '=', $menuId)->delete();
        return $result;
    }
}
