<?php $this->load->view('customer/layout/header')?> 

<?php $this->load->view('customer/layout/topbar')?>

<?php $this->load->view('customer/layout/sidebar')?>

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <div class="mx-n4 mt-n4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card mb-0">
                                        <div class="card-body p-0">
                                            <div class="profile-bg position-relative overflow-hidden">
                                                <div class="bg-overlay bg-dark bg-gradient"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card -->
                                </div>
                            </div>
                            <!-- end row -->
                        </div>

                        <div class="row">
                            <div class="col-xl-3">
                                <div class="card mt-n5">
                                    <div class="card-body text-center">
                                        <!-- <div class="text-end">
                                            <div class="dropdown">
                                                <a class="btn btn-link text-dark font-size-16 p-1 dropdown-toggle shadow-none" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <i class="uil uil-ellipsis-h"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown-menu-end">
                                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                                </ul>
                                            </div>
                                        </div> -->
                                        <div class="avatar-xl mx-auto mb-4">
                                            <img src="assets/images/users/avatar-1.jpg" alt="" class="rounded-circle img-thumbnail">
                                        </div>
                                        <h5 class="mb-1"><?php $user = $this->session->userdata('user_sess'); echo $user['name'] ?></h5>
                                        <h6 class="mb-1"><?php $user = $this->session->userdata('user_sess'); echo $user['email'] ?></h6>

                                        <p class="text-muted">Owner</p>

                                        <div><i class="mdi mdi-wallet text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Balance : <b class="fw-semibold font-size-16">1000.Laxy</b></span></div>
                                    </div>
                                    <div class="d-flex border-top p-2">
                                        <div class="flex-grow-1">
                                            <!-- <div class="p-2 ps-3">₹40/-hr</div> -->
                                        </div>
                                        
                                    </div>
                                </div>
                                <!-- end card -->
  
                            </div>
                            <!-- end col -->

                            <div class="col-xl-9">
                                <div class="mt-4">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title mb-4">About</h5>

                                                    <p>Hi I'm <?php $user = $this->session->userdata('user_sess'); echo $user['name'] ?>, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>
                                                    <p class="mb-0">It is a long established fact that a reader will be distracted by the readable content of a page when looking at it has a more-or-less normal distribution of letters</p>
                                                </div>
                                                <!-- end card body -->
                                            </div>
                                            <!-- end card -->

                                          
                                            <!-- end card -->

                                            
                                        </div>

                                       
                                    </div><!-- end row -->
                                </div>
                            </div><!-- end col -->
                        </div><!-- end row -->
                        
                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                <script>document.write(new Date().getFullYear())</script> &copy; Winlaxy.
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

        <!-- Right Sidebar -->
        
        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- JAVASCRIPT -->
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenujs/metismenujs.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/feather-icons/feather.min.js"></script>

        <!-- swiper js -->
        <script src="assets/libs/swiper/swiper-bundle.min.js"></script>
        <!-- profile init -->
        <script src="assets/js/pages/profile.init.js"></script>
        <!-- app js -->
        <script src="assets/js/app.js"></script>

    </body>
</html>
