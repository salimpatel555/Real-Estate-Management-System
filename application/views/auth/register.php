<?php $this->load->view('auth/header'); ?>
<body>
    <!-- <body data-layout="horizontal"> -->

        <div class="authentication-bg min-vh-100">
            <div class="bg-overlay bg-white"></div>
            <div class="container">
                <div class="d-flex flex-column min-vh-100 px-3 ">
                    <div class="row justify-content-center my-auto">
                        <div class="col-md-8 col-lg-6 col-xl-4">
                            <div class="text-center py-5">
                                <div class="mb-4 ">
                                    <a href="<?= base_url(); ?>" class="d-block auth-logo">
                                        <img src="<?php echo base_url()?>assets/images/logo-dark.png" alt="" height="35" class="auth-logo-dark">
                                        <img src="<?php echo base_url()?>assets/images/logo-light.png" alt="" height="35" class="auth-logo-light">
                                    </a>
                                </div>
                                <div class="mb-4">
                                    <h5 class="">Register Account</h5>                                   
                                </div>
                                <form action="<?php echo base_url('register')?>" method="post">
                                    <div class="form-floating form-floating-custom mb-3">
                                        <input type="email" name="email" class="form-control" id="input-email" placeholder="Enter Email" value="<?php echo set_value('email')?>">
                                        <label for="input-email">Email</label>
                                        <div class="form-floating-icon">
                                            <i class="uil uil-envelope-alt"></i>
                                        </div>
										<?php echo form_error('email','<div class ="text-danger">','</div>')?>
                                    </div>

                                    <div class="form-floating form-floating-custom mb-3">
                                        <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Enter Password">
                                        <label for="floatingPassword">Password</label>
                                        <div class="form-floating-icon">
                                            <i class="uil uil-padlock"></i>
                                        </div>
										<?php echo form_error('password','<div class ="text-danger">','</div>')?>
                                    </div>
									<div class="form-floating form-floating-custom mb-3">
                                        <input type="password" name="cpassword" class="form-control" id="floatingPassword" placeholder="Enter Password">
                                        <label for="floatingPassword">Conform Password</label>
                                        <div class="form-floating-icon">
                                            <i class="uil uil-padlock"></i>
                                        </div>
										<?php echo form_error('cpassword','<div class ="text-danger">','</div>')?>
                                    </div>

                                    <div class="mt-3">
                                        <button class="btn btn-primary w-100" type="submit">Register</button>
                                    </div>
                                </form><!-- end form -->

                                <div class="mt-4 text-center">
                                    <p>Already have an account ? <a href="<?php echo base_url('login')?>" class="fw-medium text-decoration-underline"> Signin </a></p>
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

		<?php $this->load->view('auth/footer'); ?>

