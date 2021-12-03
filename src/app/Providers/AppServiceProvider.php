<?php

namespace App\Providers;

use App\Repositories\Dashboard\DashboardRepository;
use App\Repositories\Dashboard\DashboardRepositoryImpl;
use App\Repositories\Menu\MenuRepository;
use App\Repositories\Menu\MenuRepositoryImpl;
use App\Repositories\MenuCategory\MenuCategoryRepository;
use App\Repositories\MenuCategory\MenuCategoryRepositoryImpl;
use App\Repositories\Order\OrderRepository;
use App\Repositories\Order\OrderRepositoryImpl;
use App\Repositories\OrderDetail\OrderDetailRepository;
use App\Repositories\OrderDetail\OrderDetailRepositoryImpl;
use App\Repositories\User\UserRepository;
use App\Repositories\User\UserRepositoryImpl;

use App\Services\Dashboard\DashboardService;
use App\Services\Dashboard\DashboardServiceImpl;
use App\Services\Menu\MenuService;
use App\Services\Menu\MenuServiceImpl;
use App\Services\MenuCategory\MenuCategoryService;
use App\Services\MenuCategory\MenuCategoryServiceImpl;
use App\Services\Order\OrderService;
use App\Services\Order\OrderServiceImpl;
use App\Services\User\UserService;
use App\Services\User\UserServiceImpl;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        // service
        $this->app->singleton(DashboardService::class, DashboardServiceImpl::class);
        $this->app->singleton(MenuService::class, MenuServiceImpl::class);
        $this->app->singleton(MenuCategoryService::class, MenuCategoryServiceImpl::class);
        $this->app->singleton(UserService::class, UserServiceImpl::class);
        $this->app->singleton(OrderService::class, OrderServiceImpl::class);

        // repository
        $this->app->singleton(DashboardRepository::class, DashboardRepositoryImpl::class);
        $this->app->singleton(MenuRepository::class, MenuRepositoryImpl::class);
        $this->app->singleton(MenuCategoryRepository::class, MenuCategoryRepositoryImpl::class);
        $this->app->singleton(UserRepository::class, UserRepositoryImpl::class);
        $this->app->singleton(OrderRepository::class, OrderRepositoryImpl::class);
        $this->app->singleton(OrderDetailRepository::class, OrderDetailRepositoryImpl::class);

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
