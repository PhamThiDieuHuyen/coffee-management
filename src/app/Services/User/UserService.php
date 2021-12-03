<?php


namespace App\Services\User;


use Illuminate\Http\Request;

interface UserService
{
    public function showUserList();

    public function showUserDetail($userId);

    public function deleteUser($userId);

    public function updateUser(Request $request);

    public function createUser(Request $request);

}