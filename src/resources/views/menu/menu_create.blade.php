@extends('layout.main')

@section('title')
    <h2>Menu create</h2>
    <div class="clearfix"></div>
@endsection

@section('content')
    <form
{{--        action="{{ route('menu.createMenuCategory') }}"--}}
{{--          method="POST"--}}
          class="form-horizontal form-label-left">
{{--        {{ csrf_field() }}--}}
        <div class="col-md-10 col-sm-12 profile_details col-md-push-1 ">
            <div class="well profile_view w-100">
                <div class="menu-detail-profile col-md-8 col-sm-8">
                    {{--                Information--}}
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4 col-xs-12"
                               for="first-name">
                            MENU CATEGORY NAME
                        </label>
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <input type="text"
                                   name="menuCategoryName"
                                   class="menu-category-name form-control col-md-7 col-xs-12"
                                   value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4 col-xs-12"
                               for="first-name">
                            MENU NAME
                        </label>
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <input type="text"
                                   name="menuName"
                                   class="menu-name form-control col-md-7 col-xs-12"
                                   value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4 col-xs-12"
                               for="first-name">
                            PRICE
                        </label>
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <input type="text"
                                   name="menuPrice"
                                   class="menu-price form-control col-md-7 col-xs-12"
                                   value="">
                        </div>
                    </div>
                </div>
                <div class="menu-detail-picture col-md-4 col-sm-4">
                    <picture>
                        <img src="no-image.png" alt="No Image" style="width:auto;">
                    </picture>

                </div>
                {{--                Buttons--}}
                <div class="col-md-12 bottom ">
                    <div class="col-md-offset-4 col-edit">
                        <button type="submit" class="menu-submit btn "
                                disabled>
                            <i class="fa fa-check-circle"> </i> Submit
                        </button>
                        <button type="button" class="btn menu-reset" >
                            <i class="fa fa-backward"> </i> Reset
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
@endsection

{{--@push('scripts')--}}

{{--    <script type="text/javascript" src="{{ asset('js/menu/menu-create.js') }}"></script>--}}
{{--@endpush--}}

{{--@push('styles')--}}
{{--    <link href="{{ asset('css/menu/menu-create.css') }}" rel="stylesheet">--}}
{{--@endpush--}}
