<?php


namespace App\Repositories\User;


use App\Models\User;

class UserRepositoryImpl implements UserRepository
{
    public function getAllUserList()
    {
        $result = User::all();
        return $result;
    }

    public function getUserById($userId)
    {
        $result = User::find($userId);
        return $result;
    }

    public function deleteUserById($userId)
    {
        User::where('userId', '=', $userId)->delete();
    }
    public function updateUserById($userId,$userData)
    {
        User::where('userId', '=', $userId)->update($userData);
    }
    public function insertUser($userData)
    {
        User::insert(
            [
                'username' => $userData['username'],
                'permission' => $userData['permission'],
                'password' => $userData['password'],
                'address' => $userData['address'],
                'phone' => $userData['phone'],
                'avatar' => $userData['avatar'],
            ]
        );
    }
}
