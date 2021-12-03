@extends('layout.main')

@section('title')
    <h2>Menu Category create</h2>
    <div class="clearfix"></div>
@endsection

@section('content')
    <form action="{{ route('menuCategory.createMenuCategory') }}"
          method="POST"
          id="menu-category-form"
          class="form-horizontal form-label-left"
          enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="col-md-10 col-sm-12 profile_details col-md-push-1 ">
            <div class="well profile_view w-100">
                <div class=" user-detail-profile col-sm-12">
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
                                       value="">
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
                                <textarea id="textarea" name="menuCategoryDescribe" rows="4" style="width: 100%"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                {{--                Buttons--}}
                <div class="col-md-12 bottom ">
                    <div class="col-md-offset-3 col-edit">
                        <button type="submit" name="up"
                                class="btn cursor-pointer"
                                id="menu-category-submit"
                                disabled
                                >
                            <i class="fa fa-check-circle"> </i> Submit
                        </button>
                        <button type="reset" class="btn" id="menu-category-reset">
                            <i class="fa fa-backward"> </i> Reset
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>

@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('js/MenuCategory/menu-category-create.js') }}"></script>
@endpush
@push('styles')
    <link href="{{ asset('css/MenuCategory/menu-category-create.css') }}" rel="stylesheet">
    {{--    validate--}}
    <link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
@endpush
