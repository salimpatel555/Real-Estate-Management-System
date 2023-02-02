<?php $this->load->view('auth/header'); ?>

    <body>

    <!-- <body data-layout="horizontal"> -->

        <div class="authentication-bg min-vh-100">
            <div class="bg-overlay bg-white"></div>
            <div class="container">
                <div class="d-flex flex-column min-vh-100 px-3 ">
                    <div class="row justify-content-center my-auto">
                        <div class="col-md-8 col-lg-6 col-xl-4">
                            
                            <div class="text-center  py-5">
                                <div class="mb-4">
                                    <a href="<?= base_url(); ?>" class="d-block auth-logo">
                                        <img src="<?php echo base_url()?>assets/images/logo-dark.png" alt="" height="35" class="auth-logo-dark">
                                        <img src="<?php echo base_url()?>assets/images/logo-light.png" alt="" height="35" class="auth-logo-light">
                                    </a>
                                </div>
                                <div class="mb-4">
                                    <h5>User Sign In !</h5>                                    
                                </div>
                                
								<?php if($this->session->flashdata('message')) { ?>
									<div class="alert alert-success">
										<?php echo $this->session->flashdata('message')?>
										</div>
								<?php } ?>

                                <?php if($this->session->flashdata('error')) { ?>
                                    <div class="alert alert-danger">
                                        <?php echo $this->session->flashdata('error')?>
                                    </div>
								<?php } ?>

                                <form action="<?php echo base_url('login')?>" method="post">								
								<div class="form-floating form-floating-custom mb-3">								
                                        <input type="email" name="email" class="form-control" id="input-email" placeholder="Enter Email">
                                        <label for="input-email">Email</label>
                                        <div class="form-floating-icon">
                                            <i class="uil uil-envelope-alt"></i>
                                        </div>
										<?php echo form_error('email','<div class ="text-danger">','</div>')?>
                                    </div>
                                    <div class="form-floating form-floating-custom mb-3">
                                        <input type="password" name="password" class="form-control" id="input-password" placeholder="Enter Password">
                                        <label for="input-password">Password</label>
                                        <div class="form-floating-icon">
                                            <i class="uil uil-padlock"></i>
                                        </div>
										<?php echo form_error('password','<div class ="text-danger">','</div>')?>
                                    </div>

                                    <div class="form-check form-check-info font-size-16">
                                        <input class="form-check-input" name="checkbox" type="checkbox" id="remember-check">
                                        <label class="form-check-label font-size-14" for="remember-check">
                                            Remember me
                                        </label>
                                    </div>

                                    <div class="mt-3">
                                        <button class="btn btn-primary w-100" type="submit">Log In</button>
                                    </div>
                                        <!-- <div class="btn btn-dark mt-3 w-100">
                                        <img src="https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png" alt="">
                                        <span class="">Login With Google</span>
                                    </div>
                                    <style>.container .btn img {
                                        width: 20px;
                                        height: 20px;
                                        border-radius: 50%;
                                    }</style> -->

                                    <div class="mt-4">
                                        <a href="<?php echo base_url('forgotpass')?>" class="text-muted text-decoration-underline">Forgot your password?</a>
                                    </div>
                                </form><!-- end form -->

                                <div class="text-center text-muted">
                                    <p>Don't have an account ? <a href="<?php echo base_url('register')?>" class="fw-medium text-decoration-underline"> Signup </a></p>
                                </div>
                            </div>
                        </div><!-- end col -->
                    </div><!-- end row -->

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="text-center text-muted p-4">
                                <p class="mb-0">&copy; <script>document.write(new Date().getFullYear())</script> Winlaxy</p>
                            </div>
                        </div><!-- end col -->
                    </div><!-- end row -->

                </div>
            </div><!-- end container -->
        </div>
        <!-- end authentication section -->

		<?php $this->load->view('auth/footer'); ?>
