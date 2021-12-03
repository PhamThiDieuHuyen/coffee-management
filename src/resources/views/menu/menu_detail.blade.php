@extends('layout.main')

@section('title')
    <h2>Menu detail</h2>
    <div class="clearfix"></div>
@endsection

@section('content')
    <form action="{{ route('menu.updateMenu') }}"
          method="POST"
          id="menu-category-form"
          class="form-horizontal form-label-left"
          enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="col-md-10 col-sm-12 profile_details col-md-push-1 ">
            <div class="well profile_view w-100">
                <div class=" user-detail-profile col-sm-12">
                    <div class="information-profile left col-md-9 ">
                        {{--                    Id--}}
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                MENU ID
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" name="menuId"
                                       class="form-control col-md-7 col-xs-12" id="menu-id"
                                       value="{{$menuData["menu"]->menuId}}" readonly>
                            </div>
                        </div>
                        {{--                Menu category name--}}
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                MENU CATEGORY NAME
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <select  name="menuCategoryName" class="form-control menu-category-name col-md-7 col-xs-12" disabled>
                                    @foreach ($menuData["menuCategory"] as $key => $menuData["menuCategory"])
                                        @if($menuData["menu"]->menuCategoryId == $key + 1)
                                            <option value={{$key+1}} selected>{{$menuData["menuCategory"]->name}}</option>
                                        @else
                                            <option value={{$key+1}}>{{$menuData["menuCategory"]->name}}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        {{--                    Menu name--}}
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                MENU NAME
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" name="menuName"
                                       class="menu-name form-control col-md-7 col-xs-12"
                                       value="{{$menuData["menu"]->name}}" readonly>
                            </div>
                        </div>
                        {{--                    Price--}}
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                PRICE
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="number" name="menuPrice"
                                       class="menu-price form-control col-md-7 col-xs-12"
                                       value="{{$menuData["menu"]->price}}" readonly>
                            </div>
                        </div>
                    </div>
                    {{--                    Picture--}}
                    <div class="right col-md-3 text-center ">
                        <div class="frame-avatar">
                            @if($menuData["menu"]->image)
                                <img src="{{asset($menuData["menu"]->image)}}" alt="" class="img-center" name="menuImg">
                            @else
                                <img src="{{asset("images/no-image.png")}}" alt="" class="img-center" name="menuImg">
                            @endif
                        </div>
                        <label for="file-upload" class="custom-file-upload" style="float: none">Choose</label>
                        <span class="file-upload-info col-md-12"></span>
                        <input id="file-upload" class="choose-file" type="file" name="fileUpload">
                    </div>
                    {{--                Buttons--}}
                    <div class="col-md-12 bottom ">
                        <div class="col-md-offset-3 col-edit">
                            <button type="button" class="menu-edit btn cursor-pointer">
                                <i class="fa fa-edit"> </i> Edit
                            </button>
                            <button type="reset" class="menu-cancel btn cursor-pointer"
                                    style='display:none'>
                                <i class="fa fa-close"> </i> Cancel
                            </button>
                            <button type="submit" name="up"
                                    class="menu-submit btn cursor-pointer"
                                    style='display:none'
                                    disabled>
                                <i class="fa fa-check-circle"> </i> Submit
                            </button>
                            <button type="reset" class="btn menu-reset" style='display:none'>
                                <i class="fa fa-backward"> </i> Reset
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('js/Menu/menu-detail.js') }}"></script>
@endpush
@push('styles')
    <link href="{{ asset('css/Menu/menu-detail.css') }}" rel="stylesheet">
    {{--    validate--}}
    <link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
@endpush
