<?php


namespace App\Http\Controllers\MenuCategory;

use App\Services\MenuCategory\MenuCategoryService;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;


class MenuCategoryController extends BaseController
{
    private $menuCategoryService;

    public function __construct(MenuCategoryService $menuCategoryService)
    {
        $this->menuCategoryService = $menuCategoryService;
    }

    public function showMenuCategoryCreateForm()
    {
        return view('menuCategory.menu_category_create');
    }

    public function createMenuCategory(Request $request)
    {
        $this->menuCategoryService->createMenuCategory($request);
        return view('menuCategory.menu_category_create');
    }

    public function showMenuCategoryList()
    {
        return view('menuCategory.menu_category_list')
            ->with('menuCategoryList', $this->menuCategoryService->showMenuCategoryList());
    }

    public function showMenuCategoryDetail($menuCategoryId)
    {
        return view('menuCategory.menu_category_detail')
            ->with('menuCategoryDetail',$this->menuCategoryService->showMenuCategoryDetail($menuCategoryId));
    }

    public function updateMenuCategory(Request $request)
    {
        $this->menuCategoryService->updateMenuCategoryDetail($request);
        return redirect()->back();
    }

    public function deleteMenuCategory($id)
    {
        $this->menuCategoryService->deleteMenuCategoryList($id);
        return redirect('menu-category/list');
    }

}
