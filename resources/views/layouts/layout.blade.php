<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mangkud Map</title>

    <!-- Custom fonts for this template-->
    <link href="{{ asset('mangkudmap_assets/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{ asset('mangkudmap_assets/css/sb-admin-2.min.css') }}" rel="stylesheet">
    <script src="{{ asset('mangkudmap_assets/vendor/jquery/jquery.min.js') }}"></script>

    <script src="https://code.highcharts.com/7.1/highcharts.js"></script>
    <script src="{{ asset('mangkudmap_assets/vendor/highchart/map.js')}}"></script>
    <script src="{{ asset('mangkudmap_assets/vendor/highchart/exporting.js')}}"></script>
    <script src="{{ asset('mangkudmap_assets/vendor/highchart/th-all.js')}}"></script>



</head>

<body>
    <!-- Page Wrapper -->
    <div id="wrapper">

    @include('layouts.include.sidebar')

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Begin Page Content -->
            <div class="container-fluid mt-4">

                @yield('content')

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        @include('layouts.include.footer')

    </div>
    <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
    </a>


    <!-- Bootstrap core JavaScript-->
    
    <script src="{{ asset('mangkudmap_assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <!-- Core plugin JavaScript-->
    <script src="{{ asset('mangkudmap_assets/vendor/jquery-easing/jquery.easing.min.js') }}"></script>

    <!-- Custom scripts for all pages-->
    <script src="{{ asset('mangkudmap_assets/js/sb-admin-2.js') }}"></script>
    <script src="{{ asset('mangkudmap_assets/js/gmap3.min.js') }}"></script>
    <script src="{{ asset('mangkudmap_assets/js/mangkud.js') }}"></script>

</body>

</html>