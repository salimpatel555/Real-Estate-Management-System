<?php $this->load->view('auth/header')?>    

    <!-- <body data-layout="horizontal"> -->

        <div class="authentication-bg min-vh-100">
            <div class="bg-overlay bg-white"></div>
            <div class="container">
                <div class="d-flex flex-column min-vh-100 px-3">
                    <div class="row justify-content-center my-auto">
                        <div class="col-md-8 col-lg-6 col-xl-4">
                        
                            <div class="text-center py-5">
                                <div class="mb-4 ">
                                    <a href="<?= base_url(); ?>" class="d-block auth-logo">
                                        <img src="<?php echo base_url()?>assets/images/logo-dark.png" alt="" height="35" class="auth-logo-dark">
                                        <img src="<?php echo base_url()?>assets/images/logo-light.png" alt="" height="35" class="auth-logo-light">
                                    </a>
                                </div>
                                <div class="text-muted mb-4">
                                    <h5 class="">Reset Password</h5>                                    
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
                                <div class="alert alert-primary text-center mb-4" role="alert">
                                    Enter your Email and instructions will be sent to you!
                                </div>
                                <form action="<?php echo base_url('auth_user/resetlink')?>" method="post">
                                    <div class="form-floating form-floating-custom mb-3">
                                        <input type="email" name="email" class="form-control" id="input-email" placeholder="Enter Email"<?php echo set_value('email')?> >
                                        <label for="input-email">Email</label>
                                        <div class="form-floating-icon">
                                            <i class="uil uil-envelope-alt"></i>
                                        </div>
										<?php echo form_error('email','<div class ="text-danger">','</div>')?>
                                    </div>

                                    <div class="mt-3">
									<button class="btn btn-primary w-100" type="submit">Send Request</button>
                                    </div>
                                </form><!-- end form -->
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

        <!-- JAVASCRIPT -->
    <?php $this->load->view('auth/footer')?>    

