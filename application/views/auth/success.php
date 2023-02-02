
<?php $this->load->view('auth/header')?>    


    <!-- <body data-layout="horizontal"> -->

        <div class="authentication-bg min-vh-100">
            <div class="bg-overlay bg-white"></div>
            <div class="container">
                <div class="d-flex flex-column min-vh-100 px-3 ">
                    <div class="row justify-content-center my-auto">
                        <div class="col-md-8 col-lg-6 col-xl-4">
                            
                            <div class="text-center py-5">
                                <div class="mb-4 mb-md-5">
                                    <a href="<?= base_url(); ?>" class="d-block auth-logo">
                                        <img src="<?php echo base_url()?>/assets/images/logo-dark.png" alt="" height="35" class="auth-logo-dark">
                                        <img src="<?php echo base_url()?>/assets/images/logo-light.png" alt="" height="35" class="auth-logo-light">
                                    </a>
                                </div>
                                <div class="mb-4 mb-md-5">
                                    <div class="avatar-lg mx-auto">
                                        <div class="avatar-title bg-light text-success display-5 rounded-circle">
                                        <i class="fas fa-check"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-muted">
                                    <h1 class="text-success">Successfull</h1>
                                    <p>Please check your mailbox and click Reset Password Link</p>
                                    <!-- <div class="mt-4">
                                        <a href="index.html" class="btn btn-primary w-100">Back to Dashboard</a>
                                    </div> -->
                                </div> 
                            </div>
                        </div><!-- end col -->
                    </div><!-- end row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center text-muted p-4">
                                <p class="mb-0">&copy; <script>document.write(new Date().getFullYear())</script> Winlaxy</p>
                            </div>
                        </div><!-- end col -->
                    </div><!-- end row -->

                </div>
            </div><!-- end container -->
        </div>
        <!-- end authentication section -->

    <?php $this->load->view('auth/footer')?>    
