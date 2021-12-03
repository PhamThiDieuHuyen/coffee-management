@extends('layout.main')

@section('title')
    <h2>Order create</h2>
    <div class="clearfix"></div>
@endsection

@section('content')
    <div class="col-md-12 col-sm-12">

{{--        model 1--}}
{{--        <div class="col-md-7 order-menu">--}}
{{--            @foreach($menuCategoryData as $menu)--}}
{{--                <div class="left col-md-3" id="menuCategory_bar">--}}
{{--                    <ul>--}}
{{--                        <li class="menu-category-bar">{{$menu[0]->menuCategoryName}}</li>--}}
{{--                    </ul>--}}
{{--                </div>--}}
{{--                <div class="col-md-9 text-center image-cus">--}}
{{--                    @foreach($menu as $menu1)--}}
{{--                            <div class="col-md-4 col-sm-6 col-order" data-order-id="{{$menu1->menuId}}">--}}
{{--                                <div class="border-order">--}}
{{--                                    <div class="img-order">--}}
{{--                                        <img src="{{asset($menu1->image)}}" alt="" class="img-order-center">--}}
{{--                                        <div style="color: white">{{$menu1->name}}</div>--}}
{{--                                        <div class="order-price">--}}
{{--                                            <i class="fa fa-plus-circle plus-icon"></i>--}}
{{--                                            <i class="fa fa-trash trash-icon"></i>--}}
{{--                                            {{$menu1->price}}VND--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                    @endforeach--}}
{{--                </div>--}}
{{--            @endforeach--}}
{{--        </div>--}}

{{--        model 2--}}
        <div class="col-md-7 col-sm-12 col-xs-12 menu-1">
            <div class="col-md-3 col-sm-3 col-xs-3" id="menuCategory_bar">
                <ul>
                    @foreach($result["menuCategory"] as $menuCategory)
                        <a class="nav-link" data-toggle="pill" href="#{{$menuCategory->menuCategoryId}}" role="tab"
                               aria-controls="{{$menuCategory->menuCategoryId}}" aria-selected="true">
                            <li>{{$menuCategory->name}}</li>
                        </a>
                    @endforeach
                </ul>
            </div>
            <div class="col-md-9 col-sm-9 col-xs-9 text-center">
                <div class="tab-content" id="tabContent">
                    @foreach($result["menuCategory"] as $menuCategory)
                        <div class="tab-pane fade" id="{{$menuCategory->menuCategoryId}}" role="tabpanel" aria-labelledby="{{$menuCategory->menuCategoryId}}-tab">
                            @foreach($result["menu"] as $menu)
                                @if($menu->menuCategoryId == $menuCategory->menuCategoryId)
                                    <div class="menu-2 col-md-4 col-sm-4 col-xs-6">
                                        <div class="border-order" data-id="{{$menu->menuId}}">
                                            <div class="img-order">
                                                <img src="{{asset($menu->image)}}" alt="" class="img-order-center">
                                                <div style="color: white">{{$menu->name}}</div>
                                                <div class="order-price">
                                                    <i class="fa fa-plus-circle plus-icon" data-id="{{$menu->menuId}}"
                                                       data-name="{{$menu->name}}" data-price="{{$menu->price}}"></i>
                                                    <i class="fa fa-trash trash-icon" data-id="{{$menu->menuId}}"></i>
                                                    <div><span class="original-price" data-id="{{$menu->menuId}}">{{$menu->price}}</span>VND</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col-md-5 col-sm-12 col-xs-12 text-center">
            <form action="{{ route('order.createOrder') }}"
                  method="POST"
                  id="order-form"
                  class="form-horizontal form-label-left"
                  enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="col-md-12 col-xs-12 order-total">
                    <div class="flex-col col-md-5 col-xs-5">
                        <span><b>MONEY TOTAL</b></span>
                        <b><span class="money-total">0</span>VND</b>
                    </div>
                    <div class="col-md-7 col-xs-7">
                        <button class="btn btn-dark btn-payment" type="submit">PAYMENT</button>
                        <button class="btn btn-dark btn-reset" type="reset">RESET</button>
                    </div>
                </div>
                <div class="col-md-12 col-xs-12 total-list">
                    <table class="list-table">

                    </table>
                </div>
            </form>
        </div>
    </div>
@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('js/order/order-create.js') }}"></script>
@endpush
@push('styles')
    <link href="{{ asset('css/order/order-create.css') }}" rel="stylesheet">
    {{--    validate--}}
    <link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
@endpush
