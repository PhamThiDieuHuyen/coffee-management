@extends('layout.main')

@section('title')
    <h2>Menu Category detail</h2>
    <div class="clearfix"></div>
@endsection

@section('content')
    <form action="{{ route('menuCategory.updateMenuCategory') }}"
          method="POST"
          id="menu-category-form"
          class="form-horizontal form-label-left"
          enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="col-md-10 col-sm-12 profile_details col-md-push-1 ">
            <div class="well profile_view w-100">
                <div class=" user-detail-profile col-sm-12">
                    {{--                    Id--}}
                    <div class="information-profile left col-md-9 ">
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                MENU CATEGORY ID
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" name="menuCategoryId"
                                       class="form-control col-md-7 col-xs-12" id="menu-category-id"
                                       value="{{$menuCategoryDetail['menuCategoryId']}}" readonly>
                            </div>
                        </div>
                    </div>
                    {{--                Information--}}
                    <div class="information-profile left col-md-9 ">
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                MENU CATEGORY NAME
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" name="menuCategoryName"
                                       class="menu-category-name-input form-control col-md-7 col-xs-12"
                                       placeholder="menu category name"
                                       value="{{$menuCategoryDetail['name']}}" readonly>
                            </div>
                        </div>
                    </div>
                    {{--                    Describe--}}
                    <div class="information-profile left col-md-9 ">
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                DESCRIBE
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <textarea id="textarea" name="menuCategoryDescribe" rows="4" style="width: 100%" readonly disabled>{{$menuCategoryDetail['describe']}}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                {{--                Buttons--}}
                <div class="col-md-12 bottom ">
                    <div class="col-md-offset-3 col-edit">
                        <button type="button" class="menuCategory-edit btn cursor-pointer">
                            <i class="fa fa-edit"> </i> Edit
                        </button>
                        <button type="reset" class="menuCategory-cancel btn cursor-pointer"
                                style='display:none'>
                            <i class="fa fa-close"> </i> Cancel
                        </button>
                        <button type="submit" name="up"
                                class="menuCategory-submit btn cursor-pointer"
                                style='display:none'
                                disabled>
                            <i class="fa fa-check-circle"> </i> Submit
                        </button>
                        <button type="button" class="btn menuCategory-reset" style='display:none'>
                            <i class="fa fa-backward"> </i> Reset
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>

@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('js/MenuCategory/menu-category-detail.js') }}"></script>
@endpush
@push('styles')
    <link href="{{ asset('css/MenuCategory/menu-category-detail.css') }}" rel="stylesheet">
    {{--    validate--}}
    <link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
@endpush
