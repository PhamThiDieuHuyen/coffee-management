@extends('layout.main')

@section('title')
    <div class="col-md-10 col-sm-12" style="padding: 0;">
        <h2>Order list</h2>
    </div>
    <div class="col-md-2 col-sm-12" style="padding: 4px 0 0 43px;">
                <a href="{{route('order.showOrderCreateForm')}}">
        <button type="button" class="create-menu btn cursor-pointer">
            <i class="fa fa-plus-square"></i> Create New
        </button>
                </a>
    </div>
    <div class="clearfix"></div>
@endsection

@section('content')
    <table id="order-table" class="table table-striped">
        <thead>
        <tr>
            <th class="col-md-2">Order Id</th>
            <th class="col-md-3">User Name</th>
            <th class="col-md-3">Datetime</th>
            <th class="col-md-1">Delete</th>
        </tr>
        </thead>
        <tbody>
        @foreach($result as $order)
            <tr>
                <td><a href="{{route('order.showOrderDetail',$order["orderId"])}}">{{$order["orderId"]}}</a></td>
                <td><a href="{{route('user.showUserDetail',$order["userId"])}}">{{$order["username"]}}</a></td>
                <td>{{$order["datetime"]}}</td>
                <td>
                    <button type="button" class="delete-order btn cursor-pointer"
                            data-toggle="modal" data-target="#orderModal"
                            data-order-id="{{$order["orderId"]}}">
                        <i class="fa fa-trash"></i></button>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    <!-- Large modal -->
    <div class="modal fade confirm-delete-modal" id="orderModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">CONFIRM DELETE</h4>
                </div>
                <div class="modal-body">
                    <h4>WARNING!</h4>
                    <p>Are you sure you want to delete this order?</p>
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
    <script type="text/javascript" src="{{ asset('js/order/order-list.js') }}"></script>
@endpush
