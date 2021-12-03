@extends('layout.main')

@section('title')
    <h2>User detail</h2>
    <div class="clearfix"></div>
@endsection

@section('content')
    <form action="{{ route('user.updateUser') }}"
          method="POST"
          class="form-horizontal form-label-left"
          enctype="multipart/form-data">
        {{ csrf_field() }}
        <div class="col-md-10 col-sm-12 profile_details col-md-push-1 ">
            <div class="well profile_view w-100">
                <div class="user-detail-profile col-sm-12">
                    {{--                Information--}}
                    <div class="information-profile left col-md-9 ">
                        <div class="form-group user-id" data-user-id="{{$userDetail['userId']}}">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                ID
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text"
                                       name="userId"
                                       class="user-id-input form-control col-md-7 col-xs-12"
                                       placeholder="id"
                                       readonly
                                       value="{{$userDetail['userId']}}">
                            </div>
                        </div>
                        <div class="form-group user-name" data-user-name="{{$userDetail['username']}}">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                USERNAME
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" name="username"
                                       class="user-name-input form-control col-md-7 col-xs-12"
                                       readonly
                                       placeholder="username"
                                       value="{{$userDetail['username']}}">
                            </div>
                        </div>
                        <div class="form-group user-permission" data-user-permission="{{$userDetail['permission']}}">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                PERMISSION
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="number" name="userPermission"
                                       class="user-permission-input form-control col-md-7 col-xs-12"
                                       placeholder="1: admin, 2: staff, 3: intern"
                                       readonly
                                       value="{{$userDetail['permission']}}">
                            </div>
                        </div>
                        <div class="form-group user-address" data-user-address="{{$userDetail['address']}}">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12" style="text-align: left;">
                                ADDRESS
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" name="userAddress"
                                       class="user-address-input form-control col-md-7 col-xs-12"
                                       placeholder="12/30 Paris, District 1, HCM"
                                       readonly
                                       value="{{$userDetail['address']}}">
                            </div>
                        </div>
                        <div class="form-group user-phone" data-user-phone="{{$userDetail['phone']}}">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                PHONE
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="number" name="userPhone"
                                       class="user-phone-input form-control col-md-7 col-xs-12"
                                       placeholder="phone number"
                                       readonly
                                       value="{{$userDetail['phone']}}">
                            </div>
                        </div>
                    </div>
                    {{--                Image--}}
                    <div class="right col-md-3 text-center user-avatar"
                         data-user-avatar="{{asset($userDetail['avatar'])}}"
                         data-user-avatar-none="{{asset("images/no-image.png")}}">
                        <div class="frame-avatar">
                            @if($userDetail['avatar'])
                                <img src="{{asset($userDetail['avatar'])}}" alt=""
                                     class="img-center user-avatar-img">
                            @else
                                <img src="{{asset("images/no-image.png")}}" alt=""
                                     class="img-center user-avatar-img">
                            @endif
                        </div>
                        <label for="file-upload" class="custom-file-upload">
                            Choose
                        </label>
                        <span class="file-upload-info col-md-12"></span>
                        <input id="file-upload"
                               class="choose-file"
                               type="file"
                               name="fileUpload">
                    </div>
                </div>
                {{--                Buttons--}}
                <div class="col-md-12 bottom ">
                    <div class="col-md-offset-3 col-edit">
                        <button type="button" class="user-edit btn cursor-pointer">
                            <i class="fa fa-edit"> </i> Edit
                        </button>
                        <button type="button" class="user-cancel btn cursor-pointer"
                                style='display:none'>
                            <i class="fa fa-close"> </i> Cancel
                        </button>
                        <button type="submit" name="up"
                                class="user-submit btn cursor-pointer"
                                style='display:none'
                                disabled>
                            <i class="fa fa-check-circle"> </i> Submit
                        </button>
                        <button type="button" class="btn user-reset" style='display:none'>
                            <i class="fa fa-backward"> </i> Reset
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>

@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('js/user/user-detail.js') }}"></script>
@endpush
@push('styles')
    <link href="{{ asset('css/user/user-detail.css') }}" rel="stylesheet">
@endpush
