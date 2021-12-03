<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Coffee management</title>

    <!-- Bootstrap -->
    <link href="{{ asset('vendors/bootstrap/dist/css/bootstrap.css') }}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset('vendors/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{ asset('vendors/nprogress/nprogress.css') }}" rel="stylesheet">
    <!-- jQuery custom content scroller -->
    <link href="{{ asset('vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css') }}"
          rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="{{ asset('vendors/build/css/custom.css') }}" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="{{ asset('css/common.css') }}" rel="stylesheet">

    <!-- PNotify -->
    <link href="{{ asset('vendors/pnotify/dist/pnotify.css') }}" rel="stylesheet">
    <link href="{{ asset('vendors/pnotify/dist/pnotify.buttons.css') }}" rel="stylesheet">
    <link href="{{ asset('vendors/pnotify/dist/pnotify.nonblock.css') }}" rel="stylesheet">

    @stack('styles')
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col menu_fixed">
            <div class="left_col scroll-view left_coffee">
                <div class="navbar nav_title nav-title-coffee " style="border: 0;">
                    <a href="http://127.0.0.1:8000/" class="site_title">
                        <i class="fa fa-gears"></i>
                        <span><small>Coffee Management</small></span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
            @include('layout.menu.menu_profile')
            <!-- /menu profile quick info -->

                <br/>
                <!-- sidebar menu -->
            @include('layout.menu.menu_sidebar')
            <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
            @include('layout.menu.menu_footer')
            <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            @include('layout.top_nav.top_nav')
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                @yield('title')
                            </div>
                            <div class="x_content">
                                @yield('content')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            @include('layout.footer.footer')
        </footer>
        <!-- /footer content -->
    </div>
</div>
<!-- jQuery -->
<script src="{{ asset('vendors/jquery/dist/jquery.min.js') }}"></script>
<!-- Bootstrap -->
<script src="{{ asset('vendors/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<!-- FastClick -->
<script src="{{ asset('vendors/fastclick/lib/fastclick.js') }}"></script>
<!-- NProgress -->
<script src="{{ asset('vendors/nprogress/nprogress.js') }}"></script>
<!-- Datatables -->
<script type="text/javascript" src="{{ asset('vendors/datatables.net/js/jquery.dataTables.min.js') }}"></script>

<!-- Custom Theme Scripts -->
<script src="{{ asset('vendors/build/js/custom.js') }}"></script>

<!-- PNotify -->
<script type="text/javascript" src="{{ asset('vendors/pnotify/dist/pnotify.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendors/pnotify/dist/pnotify.buttons.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendors/pnotify/dist/pnotify.nonblock.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/jquery.validate.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/additional-methods.js') }}"></script>

@stack('scripts')
</body>
</html>
