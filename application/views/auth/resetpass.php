<?php $this->load->view('auth/header')?>    
    <!-- <body data-layout="horizontal"> -->

        <div class="authentication-bg min-vh-100">
            <div class="bg-overlay bg-white"></div>
            <div class="container">
                <div class="d-flex flex-column min-vh-100 px-3 ">
                    <div class="row justify-content-center my-auto">
                        <div class="col-md-8 col-lg-6 col-xl-4">
                            
                            <div class="text-center py-5">
                                <div class="mb-4">
                                    <a href="<?= base_url(); ?>" class="d-block auth-logo">
                                        <img src="<?php echo base_url()?>assets/images/logo-dark.png" alt="" height="35" class="auth-logo-dark">
                                        <img src="<?php echo base_url()?>assets/images/logo-light.png" alt="" height="35" class="auth-logo-light">
                                    </a>
                                </div>
                                <div class="text-muted mb-4">
                                    <h5 class="">Forgot Password</h5>                                  
                                </div>
                                <?php if($this->session->flashdata('success')) { ?>
									<div class="alert alert-success">
										<?php echo $this->session->flashdata('success')?>
										</div>
								<?php } ?>
										<?php if($this->session->flashdata('error')) { ?>
									<div class="alert alert-danger">
										<?php echo $this->session->flashdata('error')?>
										</div>
								<?php } ?>
                                <form action="<?php echo base_url('auth_user/updatepass')?>" method="post">
                                <div class="form-floating form-floating-custom mb-3">
                                        <input type="password" name="password" class="form-control" id="input-confirmpassword" placeholder="Password">
                                        <label for="input-confirmpassword">Password</label>
                                        <div class="form-floating-icon">
                                            <i class="uil uil-check-circle"></i>
                                        </div>
                                    </div>
                                    <div class="form-floating form-floating-custom mb-3">
                                        <input type="password" name="cpassword" class="form-control" id="input-confirmpassword" placeholder="Password">
                                        <label for="input-confirmpassword">Confirm Password</label>
                                        <div class="form-floating-icon">
                                            <i class="uil uil-check-circle"></i>
                                        </div>
                                    </div>

                                    <div class="mt-3">
                                        <button class="btn btn-primary w-100" type="submit">Reset</button>
                                    </div>
                                </form><!-- end form -->

                                <div class="mt-4 text-center text-muted">
                                    <p>Remember It ? <a href="<?php echo base_url('auth_user/login')?>" class="fw-medium text-decoration-underline"> Sign In </a></p>
                                </div>
                            </div>
                        </div><!-- end col -->
                    </div><!-- end row -->

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center text-muted p-4">
                                <p class="mb-0">&copy; <script>document.write(new Date().getFullYear())</script> Winlaxy </p>
                            </div>
                        </div>
                    </div>

                </div>

            </div><!-- end container -->
        </div>
        <!-- end authentication section -->

 <?php $this->load->view('auth/footer')?>    

