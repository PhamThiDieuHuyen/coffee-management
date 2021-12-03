<div class="profile clearfix">
    <div class="profile_pic">
        <img src="{{ asset(Auth::user()->avatar) }}" alt="..." class="img-circle profile_img">
    </div>
    <div class="profile_info" style="color: white">
        <h1>{{ Auth::user()->username }}</h1>
    </div>
</div>
