<?php

namespace App\Services\Menu;

use App\Models\Menu;
use App\Repositories\Menu\MenuRepository;
use App\Repositories\MenuCategory\MenuCategoryRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


class MenuServiceImpl implements MenuService
{
    private $menuRepository;
    private $menuCategoryRepository;

    public function __construct(MenuRepository $menuRepository, MenuCategoryRepository $menuCategoryRepository)
    {
        $this->menuRepository = $menuRepository;
        $this->menuCategoryRepository = $menuCategoryRepository;
    }

    public function showMenuList()
    {
        return $this->menuRepository->getAllMenuList();
    }

    public function showMenuDetail($menuId){
        $menuData = [];
        $menuData["menu"] = $this->menuRepository->getMenuDetail($menuId);
        $menuData["menuCategory"] = $this->menuCategoryRepository->getMenuCategoryList();
        return $menuData;
    }

    public function updateMenuDetail(Request $request){
        $menuData = [];
        $id = $request->input("menuId");
        $menuData["name"] = $request->input("menuName");
        $menuData["menuCategoryId"] = $request->input("menuCategoryName");
        $menuData["price"] = $request->input("menuPrice");

        //move path of image into folder and save
        if ($request->hasFile('fileUpload')) {

            // File này có thực, bắt đầu đổi tên và move
            $fileName =  $request->file('fileUpload');
            $name = time().'.'.$fileName->getClientOriginalExtension();

            // Thư mục upload
            $uploadPath = public_path('/images/');
            // Bắt đầu chuyển file vào thư mục
            $fileName->move($uploadPath, $name);

            //save
            $menuData["image"] = '../images/'.$name;
        }
        $this->menuRepository->updateMenuDetailById($menuData, $id);
        return $menuData;
    }

    public function deleteMenu($menuId)
    {
        return $this->menuRepository->deleteMenuId($menuId);
    }

}
