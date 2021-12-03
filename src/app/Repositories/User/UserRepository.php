<?php


namespace App\Repositories\User;


interface UserRepository
{
    public function getAllUserList();

    public function getUserById($userId);

    public function deleteUserById($userId);

    public function updateUserById($userId, $userData);

    public function insertUser($userData);


}