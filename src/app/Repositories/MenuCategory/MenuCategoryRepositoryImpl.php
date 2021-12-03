<?php


namespace App\Repositories\MenuCategory;


use App\Models\MenuCategory;

class MenuCategoryRepositoryImpl implements MenuCategoryRepository
{
    public function insertMenuCategory($menuCategoryData){
        MenuCategory::insert([
            "menuCategoryId"=>$menuCategoryData["id"],
            "name"=>$menuCategoryData["name"],
            "describe"=>$menuCategoryData["describe"],
        ]);
    }

    public function getMenuCategoryList(){
        return MenuCategory::get();
    }

    public function getMenuCategoryDetail($menuCategoryId){
        return MenuCategory::find($menuCategoryId);
    }

    public function updateMenuCategoryDetailById($menuCategoryData, $id){
        return MenuCategory::where("menuCategoryId" ,"=", $id)->update($menuCategoryData);
    }

    public function deleteMenuCategoryListById($id){
        return MenuCategory::where("menuCategoryId" ,"=", $id)->delete();
    }
}
