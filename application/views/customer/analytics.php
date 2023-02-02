<?php $this->load->view('customer/layout/header')?>

<?php $this->load->view('customer/layout/topbar')?>

<?php $this->load->view('customer/layout/sidebar')?>
<!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0">Analytics</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <!-- <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboard</a></li>
                                            <li class="breadcrumb-item active">Analytics</li> -->
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-xxl-9 col-lg-8">
                                <div class="card">
                                    <div class="card-header bg-transparent">
                                        <div class="d-flex align-items-start">
                                            <div class="flex-grow-1">
                                                <h5 class="card-title mb-0">Daily Active Users</h5>
                                            </div>
                                            <div class="flex-shrink-0">
                                                <div class="dropdown">
                                                    <a class="dropdown-toggle text-reset" href="#"
                                                        data-bs-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        <span class="fw-semibold">Sort By:</span> <span class="text-muted">Yearly<i class="mdi mdi-chevron-down ms-1"></i></span>
                                                    </a>
            
                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a class="dropdown-item" href="#">Yearly</a>
                                                        <a class="dropdown-item" href="#">Monthly</a>
                                                        <a class="dropdown-item" href="#">Weekly</a>
                                                        <a class="dropdown-item" href="#">Today</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body border-bottom py-3">
                                        <div class="row gx-lg-5">
                                            <div class="col-md-auto">
                                                <div>
                                                    <p class="text-muted mb-2">Total Visitors</p>
                                                    <h4 class="mb-0">18.2 k <span class="text-muted font-size-12 fw-normal ms-2">1.4 % <i class="uil uil-arrow-up-right text-success ms-1"></i></span></h4>
                                                </div>
                                            </div>
                                            <div class="col-md align-self-end">
                                                <div class="text-md-end mt-4 mt-md-0">
                                                    <ul class="list-inline main-chart mb-0">
                                                        <li class="list-inline-item chart-border-left me-0 border-0">
                                                            <h4 class="text-primary my-1">3.85 k<span class="text-muted d-inline-block fw-normal font-size-13 ms-2">Sessions</span></h4>
                                                        </li>
                                                        <li class="list-inline-item chart-border-left me-0">
                                                            <h4 class="my-1">24.03 %<span class="text-muted d-inline-block fw-normal font-size-13 ms-2">Bounce Rate</span>
                                                            </h4>
                                                        </li>
                                                        <li class="list-inline-item chart-border-left me-0">
                                                            <h4 class="my-1">52 k<span class="text-muted d-inline-block fw-normal font-size-13 ms-2">Users</span></h4>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card body -->

                                    <div>
                                        <div id="chart-area" class="apex-charts" dir="ltr"></div>
                                    </div>
                                    <!-- end card-body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
            
                            <div class="col-xxl-3 col-lg-4">
                                <div class="card">
                                    <div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title rounded-circle font-size-12">
                                                                <i class="fas fa-user"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-1">Users</p>
                                                        <h5 class="font-size-16 mb-0">2.2 k</h5>
                                                    </div>
                                                    <div class="flex-shrink-0 align-self-end">
                                                        <div class="badge badge-soft-success ms-2">1.2 % <i class="uil uil-arrow-up-right text-success ms-1"></i></div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title rounded-circle font-size-12">
                                                                <i class="fas fa-hourglass-start"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-1">Sessions</p>
                                                        <h5 class="font-size-16 mb-0">3.85 k</h5>
                                                    </div>
                                                    <div class="flex-shrink-0 align-self-end">
                                                        <div class="badge badge-soft-danger ms-2">1.2 % <i class="uil uil-arrow-down-left text-danger ms-1"></i></div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title rounded-circle font-size-12">
                                                                <i class="fas fa-stopwatch"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-1">Session Duration</p>
                                                        <h5 class="font-size-16 mb-0">1 min</h5>
                                                    </div>
                                                    <div class="flex-shrink-0 align-self-end">
                                                        <div class="badge badge-soft-danger ms-2">1.1 % <i class="uil uil-arrow-down-left text-danger ms-1"></i></div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title rounded-circle font-size-12">
                                                                <i class="fas fa-chart-area"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-1">Bounce Rate</p>
                                                        <h5 class="font-size-16 mb-0">24.03 %</h5>
                                                    </div>
                                                    <div class="flex-shrink-0 align-self-end">
                                                        <div class="badge badge-soft-success ms-2">1.2 % <i class="uil uil-arrow-up-right text-success ms-1"></i></div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- end card -->

                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-start">
                                            <div class="flex-grow-1 overflow-hidden">
                                                <h5 class="card-title text-truncate mb-4">User Activity</h5>
                                            </div>
    
                                            <div class="flex-shrink-0">
                                                <div class="dropdown">
                                                    <a class="font-size-16 text-muted dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="mdi mdi-dots-horizontal"></i>
                                                    </a>
                                                
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div>
                                            <div id="chart-column" class="apex-charts" dir="ltr"></div>
                                        </div>
                                        
                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card card-h-100">
                                    <div class="card-body">
                                        <div>
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item py-3">
                                                    <div class="row">
                                                        <div class="col-7">
                                                            <div>
                                                                <p class="text-muted mb-2 text-truncate">New Visitors</p>
                                                                <h5 class="font-size-16 mb-0 text-truncate">1.2 k <span class="text-muted font-size-12 fw-normal ms-2">0.2 % <i class="uil uil-arrow-up-right text-success ms-1"></i></span></h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-5">
                                                            <div id="chart-sparkarea-1"></div>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li class="list-group-item py-3">
                                                    <div class="row">
                                                        <div class="col-7">
                                                            <div>
                                                                <p class="text-muted mb-2 text-truncate">Users</p>
                                                                <h5 class="font-size-16 mb-0 text-truncate">2.2 k</h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-5">
                                                            <div id="chart-sparkarea-2"></div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-group-item py-3">
                                                    <div class="row">
                                                        <div class="col-7">
                                                            <div>
                                                                <p class="text-muted mb-2 text-truncate">Sessions</p>
                                                                <h5 class="font-size-16 mb-0 text-truncate">3.85 k <span class="text-muted font-size-12 fw-normal ms-2">1.2 % <i class="uil uil-arrow-up-right text-success ms-1"></i></span></h5>
                                                            </div>
                                                        </div>
                                                        <div class="col-5">
                                                            <div id="chart-sparkarea-3"></div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                            <div class="col-xl-3 col-md-6">
                                <div class="card card-h-100">
                                    <div class="card-header border-bottom-0">
                                        <div class="d-flex align-items-start">
                                            <div class="flex-grow-1">
                                                <h5 class="card-title">Visitors by Browser</h5>
                                            </div>
    
                                            <div class="flex-shrink-0">
                                                <div class="dropdown">
                                                    <a class="font-size-16 text-muted dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="mdi mdi-dots-horizontal"></i>
                                                    </a>
                                                
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div data-simplebar style="max-height: 230px;">
                                        <ul class="list-unstyled unstyled mb-0">
                                            <li class="px-4 py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title bg-light text-primary rounded-circle font-size-18">
                                                                <i class="fab fa-chrome"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-2">Chrome <span class="float-end fw-medium">82 %</span></p>
                                                        <div class="progress animated-progess custom-progress">
                                                            <div class="progress-bar" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <li class="px-4 py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title bg-light text-primary rounded-circle font-size-18">
                                                                <i class="fab fa-firefox-browser"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-2">Firefox <span class="float-end fw-medium">70 %</span></p>
                                                        <div class="progress animated-progess custom-progress">
                                                            <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <li class="px-4 py-3">
                                                <div class="d-flex">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title bg-light text-primary rounded-circle font-size-18">
                                                                <i class="fab fa-safari"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-2">Safari <span class="float-end fw-medium">76 %</span></p>
                                                        <div class="progress animated-progess custom-progress">
                                                            <div class="progress-bar" role="progressbar" style="width: 76%" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                            <li class="px-4 py-3">
                                                <div class="d-flex">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title bg-light text-primary rounded-circle font-size-18">
                                                                <i class="fab fa-edge"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1">
                                                        <p class="text-muted mb-2">Edge <span class="float-end fw-medium">67 %</span></p>
                                                        <div class="progress animated-progess custom-progress">
                                                            <div class="progress-bar" role="progressbar" style="width: 67%" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                            <div class="col-xl-3 col-md-6">
                                <div class="card card-h-100">
                                    <div class="card-body">
                                        <div class="d-flex align-items-start">
                                            <div class="flex-grow-1">
                                                <h5 class="card-title mb-4">Visitors Source</h5>
                                            </div>
    
                                            <div class="flex-shrink-0">
                                                <div class="dropdown">
                                                    <a class="font-size-16 text-muted dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="mdi mdi-dots-horizontal"></i>
                                                    </a>
                                                
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="chart-donut" class="apex-charts" dir="ltr"></div>
                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                            <div class="col-xl-3 col-md-6">
                                <div class="card card-h-100">
                                    <div class="card-header border-bottom-0">
                                        <div class="d-flex align-items-start">
                                            <div class="flex-grow-1">
                                                <h5 class="card-title">Traffic Source</h5>
                                            </div>
    
                                            <div class="flex-shrink-0">
                                                <div class="dropdown">
                                                    <a class="font-size-16 text-muted dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="mdi mdi-dots-horizontal"></i>
                                                    </a>
                                                
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div data-simplebar style="max-height: 230px;">
                                        <ul class="list-unstyled mb-0">
                                            <li class="px-4 py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title bg-light text-primary rounded-circle">
                                                                #1
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <p class="text-muted mb-1 text-truncate">www.abc.com</p>
                                                        <h5 class="font-size-16 mb-0 text-truncate">3.82 k</h5>
                                                    </div>
                                                    <div class="flex-shrink-0 align-self-start">
                                                        <div class="badge badge-soft-success ms-2">1.2 % <i class="uil uil-arrow-up-right text-success ms-1"></i></div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="px-4 py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title bg-light text-primary rounded-circle">
                                                                #2
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <p class="text-muted mb-1 text-truncate">www.xyz.com</p>
                                                        <h5 class="font-size-16 mb-0 text-truncate">3.04 k</h5>
                                                    </div>
                                                    <div class="flex-shrink-0 align-self-start">
                                                        <div class="badge badge-soft-success ms-2">1.1 % <i class="uil uil-arrow-up-right text-success ms-1"></i></div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="px-4 py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title bg-light text-primary rounded-circle">
                                                                #3
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <p class="text-muted mb-1 text-truncate">www.abc123.com</p>
                                                        <h5 class="font-size-16 mb-0 text-truncate">2.64 k</h5>
                                                    </div>
                                                    <div class="flex-shrink-0 align-self-start">
                                                        <div class="badge badge-soft-success ms-2">0.8 % <i class="uil uil-arrow-up-right text-success ms-1"></i></div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="px-4 py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0 me-3">
                                                        <div class="avatar-sm">
                                                            <div class="avatar-title bg-light text-primary rounded-circle">
                                                                #4
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <p class="text-muted mb-1 text-truncate">www.xyz.com</p>
                                                        <h5 class="font-size-16 mb-0 text-truncate">2.06 k</h5>
                                                    </div>
                                                    <div class="flex-shrink-0 align-self-start">
                                                        <div class="badge badge-soft-success ms-2">0.5 % <i class="uil uil-arrow-up-right text-success ms-1"></i></div>
                                                    </div>
                                                </div>
                                            </li>                                                
                                        </ul>
                                    </div>
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
                        
                       
                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->
            
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                <script>document.write(new Date().getFullYear())</script> &copy; Winlaxy.                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->
            

        </div>
        <!-- END layout-wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div data-simplebar class="h-100">
                <div class="rightbar-title d-flex align-items-center bg-dark p-3">

                    <h5 class="m-0 me-2 text-white">Theme Customizer</h5>

                    <a href="javascript:void(0);" class="right-bar-toggle-close ms-auto">
                        <i class="mdi mdi-close noti-icon"></i>
                    </a>
                </div>

                <!-- Settings -->
                <hr class="m-0" />

                <div class="p-4">
                    <h6 class="mb-3">Layout</h6>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout"
                            id="layout-vertical" value="vertical">
                        <label class="form-check-label" for="layout-vertical">Vertical</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout"
                            id="layout-horizontal" value="horizontal">
                        <label class="form-check-label" for="layout-horizontal">Horizontal</label>
                    </div>

                    <h6 class="mt-4 mb-3">Layout Mode</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-mode"
                            id="layout-mode-light" value="light">
                        <label class="form-check-label" for="layout-mode-light">Light</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-mode"
                            id="layout-mode-dark" value="dark">
                        <label class="form-check-label" for="layout-mode-dark">Dark</label>
                    </div>

                    <h6 class="mt-4 mb-3">Layout Width</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-width"
                            id="layout-width-fluid" value="fluid" onchange="document.body.setAttribute('data-layout-size', 'fluid')">
                        <label class="form-check-label" for="layout-width-fluid">Fluid</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-width"
                            id="layout-width-boxed" value="boxed" onchange="document.body.setAttribute('data-layout-size', 'boxed')">
                        <label class="form-check-label" for="layout-width-boxed">Boxed</label>
                    </div>

                    <h6 class="mt-4 mb-3">Layout Position</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-position"
                            id="layout-position-fixed" value="fixed" onchange="document.body.setAttribute('data-layout-scrollable', 'false')">
                        <label class="form-check-label" for="layout-position-fixed">Fixed</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-position"
                            id="layout-position-scrollable" value="scrollable" onchange="document.body.setAttribute('data-layout-scrollable', 'true')">
                        <label class="form-check-label" for="layout-position-scrollable">Scrollable</label>
                    </div>

                    <h6 class="mt-4 mb-3">Topbar Color</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="topbar-color"
                            id="topbar-color-light" value="light" onchange="document.body.setAttribute('data-topbar', 'light')">
                        <label class="form-check-label" for="topbar-color-light">Light</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="topbar-color"
                            id="topbar-color-dark" value="dark" onchange="document.body.setAttribute('data-topbar', 'dark')">
                        <label class="form-check-label" for="topbar-color-dark">Dark</label>
                    </div>

                    <div id="sidebar-setting">
                    <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Size</h6>

                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-size"
                            id="sidebar-size-default" value="default" onchange="document.body.setAttribute('data-sidebar-size', 'lg')">
                        <label class="form-check-label" for="sidebar-size-default">Default</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-size"
                            id="sidebar-size-compact" value="compact" onchange="document.body.setAttribute('data-sidebar-size', 'md')">
                        <label class="form-check-label" for="sidebar-size-compact">Compact</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-size"
                            id="sidebar-size-small" value="small" onchange="document.body.setAttribute('data-sidebar-size', 'sm')">
                        <label class="form-check-label" for="sidebar-size-small">Small (Icon View)</label>
                    </div>

                    <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Color</h6>

                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-color"
                            id="sidebar-color-light" value="light" onchange="document.body.setAttribute('data-sidebar', 'light')">
                        <label class="form-check-label" for="sidebar-color-light">Light</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-color"
                            id="sidebar-color-dark" value="dark" onchange="document.body.setAttribute('data-sidebar', 'dark')">
                        <label class="form-check-label" for="sidebar-color-dark">Dark</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-color"
                            id="sidebar-color-brand" value="brand" onchange="document.body.setAttribute('data-sidebar', 'brand')">
                        <label class="form-check-label" for="sidebar-color-brand">Brand</label>
                    </div>
                </div>

                    <h6 class="mt-4 mb-3">Direction</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-direction"
                            id="layout-direction-ltr" value="ltr">
                        <label class="form-check-label" for="layout-direction-ltr">LTR</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-direction"
                            id="layout-direction-rtl" value="rtl">
                        <label class="form-check-label" for="layout-direction-rtl">RTL</label>
                    </div>

                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- JAVASCRIPT -->
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenujs/metismenujs.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/feather-icons/feather.min.js"></script>

        <!-- apexcharts -->
        <script src="assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- Vector map-->
        <script src="assets/libs/jsvectormap/js/jsvectormap.min.js"></script>
        <script src="assets/libs/jsvectormap/maps/world-merc.js"></script>
        <!-- analytics dashboard init -->
        <script src="assets/js/pages/dashboard-analytics.init.js"></script>

        <script src="assets/js/app.js"></script>

    </body>
</html>