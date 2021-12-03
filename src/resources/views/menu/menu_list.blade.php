@extends('layout.main')

@section('title')
    <div class="col-md-10 col-sm-12" style="padding: 0;">
        <h2>Menu list</h2>
    </div>
    <div class="col-md-2 col-sm-12" style="padding: 4px 0 0 43px;">
                <a href="{{route('menu.showMenuCreateForm')}}">
        <button type="button" class="create-menu btn cursor-pointer">
            <i class="fa fa-plus-square"></i> Create New
        </button>
                </a>
    </div>
    <div class="clearfix"></div>
@endsection

@section('content')
    <table id="menu-table" class="table table-striped">
        <thead>
        <tr>
            <th class="col-md-2">Menu Id</th>
            <th class="col-md-3">Menu Category</th>
            <th class="col-md-3">Name</th>
            <th class="col-md-3">Price</th>
            <th class="col-md-1">Delete</th>
        </tr>
        </thead>
        <tbody>
        @foreach($result as $menu)
            <tr class="menu-row cursor-pointer">
                <td>{{$menu["menuId"]}}</td>
                <td><a href="{{route('menuCategory.showMenuCategoryDetail',$menu['menuCategoryId'])}}">{{$menu["menuCategoryName"]}}</a></td>
                <td><a href="{{route('menu.showMenuDetail',$menu["menuId"])}}">{{$menu["name"]}}</a></td>
                <td>{{$menu["price"]}}</td>
                <td>
                    <button type="button" class="delete-menu btn cursor-pointer"
                            data-toggle="modal" data-target="#menuModal"
                            data-menu-id="{{$menu["menuId"]}}">
                        <i class="fa fa-trash"></i></button>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    <!-- Large modal -->
    <div class="modal fade confirm-delete-modal" id="menuModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">CONFIRM DELETE</h4>
                </div>
                <div class="modal-body">
                    <h4>WARNING!</h4>
                    <p>Are you sure you want to delete this menu?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn delete-cancel cursor-pointer" data-dismiss="modal">Cancel
                    </button>
                    <button type="button" class="btn delete-yes cursor-pointer">Yes</button>
                </div>

            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('js/menu/menu-list.js') }}"></script>
@endpush
