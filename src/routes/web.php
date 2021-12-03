<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


Auth::routes();

Route::prefix('')->namespace('User')
    ->middleware('auth')
    ->middleware('can:isAdmin')
    ->group(function () {
        Route::name('user.showUserList')->get('list', 'UserController@showUserList');
    });

Route::prefix('order')->namespace('Order')
    ->middleware('auth')
    ->group(function () {
        Route::name('order.showOrderList')->get('list', 'OrderController@showOrderList');
        Route::name('order.createOrder')->post('create', 'OrderController@createOrder');
        Route::name('order.showOrderCreateForm')->get('create-form', 'OrderController@showOrderCreateForm');
        Route::name('order.showOrderDetail')->get('detail/{orderId}', 'OrderController@showOrderDetail');
        Route::name('order.updateOrder')->post('update', 'OrderController@updateOrder');
        Route::name('order.deleteOrder')->get('delete/{orderId}', 'OrderController@deleteOrder');
    });

Route::prefix('menu')->namespace('Menu')
    ->middleware('auth')
    ->group(function () {
        Route::name('menu.showMenuList')->get('list', 'MenuController@showMenuList');
        Route::name('menu.createMenu')->post('create', 'MenuController@createMenu');
        Route::name('menu.showMenuCreateForm')->get('create-form', 'MenuController@showMenuCreateForm');
        Route::name('menu.showMenuDetail')->get('detail/{menuId}', 'MenuController@showMenuDetail');
        Route::name('menu.updateMenu')->post('update', 'MenuController@updateMenu');
        Route::name('menu.deleteMenu')->get('delete/{menuId}', 'MenuController@deleteMenu');
    });

Route::prefix('menuCategory')->namespace('MenuCategory')
    ->middleware('auth')
    ->group(function () {
        Route::name('menuCategory.showMenuCategoryList')->get('list', 'MenuCategoryController@showMenuCategoryList');
        Route::name('menuCategory.showMenuCategoryDetail')->get('detail/{menuCategoryId}', 'MenuCategoryController@showMenuCategoryDetail');
        Route::name('menuCategory.deleteMenuCategory')->get('delete/{menuCategoryId}', 'MenuCategoryController@deleteMenuCategory');
        Route::name('menuCategory.updateMenuCategory')->post('update', 'MenuCategoryController@updateMenuCategory');
        Route::name('menuCategory.createMenuCategory')->post('create', 'MenuCategoryController@createMenuCategory');
        Route::name('menuCategory.showMenuCategoryCreateForm')->get('create-form', 'MenuCategoryController@showMenuCategoryCreateForm');
        Route::name('menuCategory.showMenuCategoryUpdateForm')->get('update-form', 'MenuCategoryController@showMenuCategoryUpdateForm');
    });

Route::prefix('user')->namespace('User')
    ->middleware('auth')
    ->middleware('can:isAdmin')
    ->group(function () {
        Route::name('user.showUserList')->get('list', 'UserController@showUserList');
        Route::name('user.showUserDetail')->get('detail/{userId}', 'UserController@showUserDetail');
        Route::name('user.showUserCreateForm')->get('create-form', 'UserController@showUserCreateForm');
        Route::name('user.showUserUpdateForm')->get('update-form', 'UserController@showUserUpdateForm');
        Route::name('user.updateUser')->post('update', 'UserController@updateUser');
        Route::name('user.deleteUser')->get('delete/{userId}', 'UserController@deleteUser');
        Route::name('user.createUser')->post('create', 'UserController@createUser');
    });
