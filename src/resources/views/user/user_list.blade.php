@extends('layout.main')

@section('title')
    <div class="col-md-10 col-sm-12" style="padding: 0;">
        <h2>User list</h2>
    </div>
    <div class="col-md-2 col-sm-12" style="padding: 4px 0 0 43px;">
        <a href="{{route('user.showUserCreateForm')}}">
            <button type="button" class="create-user btn cursor-pointer">
                <i class="fa fa-plus-square"></i> Create New
            </button>
        </a>
    </div>
    <div class="clearfix"></div>
@endsection

@section('content')
    <table id="user-table" class="table table-striped">
        <thead>
        <tr>
            <th class="col-md-3">User Id</th>
            <th class="col-md-3">Name</th>
            <th class="col-md-5">Phone</th>
            <th class="col-md-1">Delete</th>
        </tr>
        </thead>

        <tbody>
        @isset($userList)
            @foreach($userList as $user)
                <tr class="user-row cursor-pointer" data-user-id="{{$user['userId']}}">
                    <td>{{$user['userId']}}</td>
                    <td>{{$user['username']}}</td>
                    <td>{{$user['phone']}}</td>
                    <td>
                        <button type="button" class="btn delete-user cursor-pointer"
                                data-toggle="modal"
                                data-user-id="{{$user['userId']}}">
                            <i class="fa fa-trash"></i></button>
                    </td>
                </tr>
            @endforeach
            <!-- Large modal -->
            <div class="modal fade confirm-delete-modal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel">CONFIRM DELETE</h4>
                        </div>
                        <div class="modal-body">
                            <h4>WARNING!</h4>
                            <p>Are you sure you want to delete this user?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn delete-cancel cursor-pointer" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn delete-yes cursor-pointer">Yes</button>
                        </div>

                    </div>
                </div>
            </div>
        @endisset
        </tbody>
    </table>
@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('js/user/user-list.js') }}"></script>
@endpush