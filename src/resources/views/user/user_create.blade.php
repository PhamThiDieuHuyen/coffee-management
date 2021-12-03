@extends('layout.main')

@section('title')
    <h2>User create</h2>
    <div class="clearfix"></div>
@endsection

@section('content')
    <form action="{{ route('user.createUser') }}"
          method="POST"
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
                                USERNAME
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" name="username"
                                       class="user-name-input form-control col-md-7 col-xs-12"
                                       placeholder="username"
                                       value="">
                            </div>
                        </div>
                        <div class="form-group user-password">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                PASSWORD
                                <i class="fa fa-check"></i>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="password" name="userPassword"
                                       class="user-password-input form-control col-md-7 col-xs-12"
                                       placeholder="password"
                                       pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                                       title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                                       required
                                       value="">
                            </div>
                            <div id="message" hidden>
                                <h5>Password must contain the following:</h5>
                                <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                                <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                                <p id="number" class="invalid">A <b>number</b></p>
                                <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                            </div>
                        </div>
                        <div class="form-group user-confirm-password" data-user-confirm-password="0">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                CONFIRM PASSWORD
                                <i class="fa fa-check"></i>
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="password"
                                       class="user-confirm-password-input form-control col-md-7 col-xs-12"
                                       placeholder="confirm password"
                                       value="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                PERMISSION
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="number" name="userPermission"
                                       class="user-permission-input form-control col-md-7 col-xs-12"
                                       placeholder="1: admin, 2: staff, 3: intern"
                                       value="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12" style="text-align: left;">
                                ADDRESS
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="text" name="userAddress"
                                       class="user-address-input form-control col-md-7 col-xs-12"
                                       placeholder="12/30 Paris, District 1, HCM"
                                       value="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-4 col-xs-12"
                                   style="text-align: left;">
                                PHONE
                            </label>
                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <input type="number" name="userPhone"
                                       class="user-phone-input form-control col-md-7 col-xs-12"
                                       placeholder="phone number"
                                       value="">
                            </div>
                        </div>
                    </div>
                    {{--                Image--}}
                    <div class="right col-md-3 text-center user-avatar"
                         data-user-avatar = "0"
                         data-user-avatar-none = "{{asset("images/no-image.png")}}">
                        <div class="frame-avatar">
                            <img src="{{asset("images/no-image.png")}}" alt=""
                                 class="img-center user-avatar-img">
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
                        <button type="submit" name="up"
                                class="user-submit btn cursor-pointer"
                                disabled>
                            <i class="fa fa-check-circle"> </i> Submit
                        </button>
                        <button type="button" class="btn user-reset">
                            <i class="fa fa-backward"> </i> Reset
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>

@endsection

@push('scripts')
    <script type="text/javascript" src="{{ asset('js/user/user-create.js') }}"></script>
@endpush
@push('styles')
    <link href="{{ asset('css/user/user-create.css') }}" rel="stylesheet">
@endpush