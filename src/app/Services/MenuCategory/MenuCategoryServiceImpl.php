<?php

namespace App\Services\MenuCategory;

use App\Models\MenuCategory;
use App\Repositories\MenuCategory\MenuCategoryRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class MenuCategoryServiceImpl implements MenuCategoryService
{
    private $menuCategoryRepository;

    public function __construct(MenuCategoryRepository $menuCategoryRepository)
    {
        $this->menuCategoryRepository = $menuCategoryRepository;
    }

    public function createMenuCategory($request){
        $menuCategoryData = [];
        $id = MenuCategory::max('menuCategoryId');
        $menuCategoryData["id"] = $id + 1;
        $menuCategoryData["name"] = $request->input("menuCategoryName");
        $menuCategoryData["describe"] = $request->input("menuCategoryDescribe");
        return $this->menuCategoryRepository->insertMenuCategory($menuCategoryData);
    }

    public function showMenuCategoryList(){
        return $this->menuCategoryRepository->getMenuCategoryList();
    }

    public function showMenuCategoryDetail($menuCategoryId){
        return $this->menuCategoryRepository->getMenuCategoryDetail($menuCategoryId);
    }

    public function updateMenuCategoryDetail(Request $request){
        $menuCategoryData = [];
        $id = $request->input("menuCategoryId");
        $menuCategoryData["name"] = $request->input("menuCategoryName");
        $menuCategoryData["describe"] = $request->input("menuCategoryDescribe");
        return $this->menuCategoryRepository->updateMenuCategoryDetailById($menuCategoryData, $id);
    }

    public function deleteMenuCategoryList($id){
        $this->menuCategoryRepository->deleteMenuCategoryListById($id);
    }
}
