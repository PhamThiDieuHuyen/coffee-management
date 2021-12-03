<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
    <div class="menu_section">
        <h3>General</h3>
        <ul class="nav side-menu">

            @can('isAdmin')
                <li><a href="{{ route('order.showOrderCreateForm') }}"><i class="fa fa-plus-square"></i> Create Order</a></li>
                <li><a href="{{ route('order.showOrderList') }}"><i class="fa fa-shopping-cart"></i> Order</a></li>
                <li><a href="{{ route('menu.showMenuList') }}"><i class="fa fa-list-ol"></i> Menu</a></li>
                <li><a href="{{ route('menuCategory.showMenuCategoryList') }}"><i class="fa fa-coffee"></i> Menu
                        Category</a></li>
            @elsecan('isStaff')
                <li><a href="{{ route('order.showOrderCreateForm') }}"><i class="fa fa-plus-square"></i> Create Order</a></li>
                <li><a href="{{ route('order.showOrderList') }}"><i class="fa  fa-shopping-cart"></i> Order</a></li>
                <li><a href="{{ route('menu.showMenuList') }}"><i class="fa fa-list-ol"></i> Menu</a></li>
                <li><a href="{{ route('menuCategory.showMenuCategoryList') }}"><i class="fa fa-coffee"></i> Menu
                        Category</a></li>
            @endcan
            @can('isAdmin')
                <li><a href="{{ route('user.showUserList') }}"><i class="fa fa-users"></i> User</a></li>
            @endcan

        </ul>
    </div>
</div>
