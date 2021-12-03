<?php


namespace App\Http\Controllers\User;

use App\Services\User\UserService;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;


class UserController extends BaseController
{
    private $userService;

    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    public function showUserList()
    {
        return view('user.user_list')->with('userList', $this->userService->showUserList());
    }

    public function showUserDetail($userId)
    {
        return view('user.user_detail')->with('userDetail', $this->userService->showUserDetail($userId));
    }

    public function showUserCreateForm()
    {
        return view('user.user_create');
    }
    public function deleteUser($userId)
    {
        $this->userService->deleteUser($userId);
        return redirect()->route('user.showUserList');
    }
    public function updateUser(Request $request)
    {
        $this->userService->updateUser($request);
        return redirect()->route('user.showUserDetail',['userId' => $request->post('userId')]);
    }
    public function createUser(Request $request)
    {
        $this->userService->createUser($request);
        return redirect()->route('user.showUserList');
    }
}
