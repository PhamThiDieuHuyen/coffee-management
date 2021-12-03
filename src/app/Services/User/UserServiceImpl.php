<?php

namespace App\Services\User;

use App\Repositories\User\UserRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class UserServiceImpl implements UserService
{
    private $userRepository;

    public function __construct(UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function showUserList()
    {
        return $this->userRepository->getAllUserList();
    }

    public function showUserDetail($userId)
    {
        $userDetail = $this->userRepository->getUserById($userId);
        return $userDetail;

    }
    public function deleteUser($userId)
    {
        $this->userRepository->deleteUserById($userId);
    }
    public function updateUser(Request $request)
    {
        $userData = array();
        // get data request
        $userId= $request->post('userId');
        $userData["username"]= $request->post('username');
        $userData["permission"]= $request->post('userPermission');
        $userData["address"]= $request->post('userAddress');
        $userData["phone"]= $request->post('userPhone');

        // get image fileUpload
        if (isset($_POST['up']) && isset($_FILES['fileUpload'])) {
            if ($_FILES['fileUpload']['error'] > 0)
                echo "Upload error!";
            else {
                move_uploaded_file(
                    $_FILES['fileUpload']['tmp_name'],
                    'images/' . $_FILES['fileUpload']['name']
                );
                $path = $_FILES['fileUpload']['name'];
                $userData["avatar"] = "images/".$path;
            }
        }
        $this->userRepository->updateUserById($userId,$userData);
    }
    public function createUser(Request $request)
    {
        $userData = array();
        // get data request
        $userData["username"]= $request->post('username');
        $userData["permission"]= $request->post('userPermission');
        $userData["password"]= Hash::make($request->post('userPassword'));
        $userData["address"]= $request->post('userAddress');
        $userData["phone"]= $request->post('userPhone');

        // get image fileUpload
        if (isset($_POST['up']) && isset($_FILES['fileUpload'])) {
            if ($_FILES['fileUpload']['error'] > 0)
                echo "Upload error!";
            else {
                move_uploaded_file(
                    $_FILES['fileUpload']['tmp_name'],
                    'images/' . $_FILES['fileUpload']['name']
                );
                $path = $_FILES['fileUpload']['name'];
                $userData["avatar"] = "images/".$path;
            }
        }
        $this->userRepository->insertUser($userData);
    }
}
