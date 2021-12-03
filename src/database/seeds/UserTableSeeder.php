<?php

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        return User::insert([
            [
                'username' => 'admin',
                'avatar' => 'u',
                'phone' => '0987654321',
                'address' => 'TP.HCM',
                'permission' => 1,
                'password' => Hash::make('123456')
            ],
            [
                'username' => 'david',
                'avatar' => '../images/avatar-staff-2.jpg',
                'phone' => '0987654321',
                'address' => 'TP.HCM',
                'permission' => 2,
                'password' => Hash::make('123456')
            ]
        ]);
    }
}
