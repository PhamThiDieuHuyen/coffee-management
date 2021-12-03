@extends('layout.main')

@section('title')
    <div class="col-md-10 col-sm-12" style="padding: 0;">
        <h2>Menu Category list</h2>
    </div>
    <div class="col-md-2 col-sm-12" style="padding: 4px 0 0 43px;">
        <a href="{{route('menuCategory.showMenuCategoryCreateForm')}}">
            <button type="button" class="create-user btn cursor-pointer">
                <i class="fa fa-plus-square"></i> Create New
            </button>
        </a>
    </div>
    <div class="clearfix"></div>
@endsection

@section('content')
    <table id="menu-category-table" class="table table-striped">
        <thead>
        <tr>
            <th class="col-md-2">Menu Category Id</th>
            <th class="col-md-2">Name</th>
            <th class="col-md-7">Describe</th>
            <th class="col-md-1">Delete</th>
        </tr>
        </thead>

        <tbody>
        @isset($menuCategoryList)
            @foreach($menuCategoryList as $menuCategory)
                <tr>
                    <td>{{$menuCategory['menuCategoryId']}}</td>
                    <td><a href="{{route('menuCategory.showMenuCategoryDetail',$menuCategory['menuCategoryId'])}}">{{$menuCategory['name']}}</a></td>
                    <td>{{$menuCategory['describe']}}</td>
                    <td>
                        <button type="button" class="btn cursor-pointer delete-menu-category-list"
                                data-toggle="modal" data-target="#menuCategoryModal" data-id="{{$menuCategory['menuCategoryId']}}">
                            <i class="fa fa-trash"></i></button>
                    </td>
                </tr>
            @endforeach
        @endisset
        </tbody>
    </table>

    <!-- Modal -->
    <div class="modal fade" id="menuCategoryModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">x</button>
                    <h4 class="modal-title" id="exampleModalLabel">CONFIRM DELETE</h4>
                </div>
                <div class="modal-body">
                    <h3>WARNING!</h3>
                    <p>Are you sure you want to delete this menu category?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary delete-yes">Yes</button>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('js/menuCategory/menu-category-list.js') }}"></script>
@endpush
