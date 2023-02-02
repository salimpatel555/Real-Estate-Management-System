
<?php 
$this->load->view('customer/layout/header');
$this->load->view('customer/layout/topbar');
$this->load->view('customer/layout/sidebar');
?>


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0">Settings</h4>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-xxl-3 col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="profile-bg position-relative overflow-hidden rounded-top" style="height: 150px;">
                                            <!-- <div class="bg-overlay bg-dark bg-gradient"></div>

                                            <div class="position-relative p-3 text-end">
                                                <button type="button" class="btn btn-primary btn-sm"><i class="mdi mdi-pencil me-1"></i>Edit</button>
                                            </div> -->
                                        </div>
                                        <div class="text-center">
                                            <div class="position-relative d-inline-block mx-auto mt-n5 mb-4">
                                                <div class="avatar-lg">
                                                    <img src="<?php echo base_url()?>assets/images/users/avatar-1.jpg" alt="" class="rounded-circle img-thumbnail">
                                                </div>
                                                <!-- <a href="#" class="d-block position-absolute bottom-0 end-0">
                                                    <div class="avatar-sm">
                                                        <div class="avatar-title rounded-circle bg-light text-primary">
                                                            <i class="mdi mdi-pencil"></i>
                                                        </div>
                                                    </div>
                                                </a> -->
                                            </div>

                                            <h5 class="font-size-16 mb-1"><?php echo $user->name?></h5>
                                            <p class="text-muted mb-0">Owner</p>
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

                                        <!-- <hr class="my-4">                                       -->
                                            <div class="card border shadow-none mb-5">
                                                <div class="card-header d-flex align-items-center">
                                                <div class="card-body">
                                                    <div>                                                       
                                                    <form action="<?php echo base_url('property/update/'.$user->id)?>" method="post">                                                        
                                                    <div class="row">
                                                                                                           
                                                        <div class="form-group col-lg-6">
                                                            <label>Name <span class="text-danger">*</span></label>
                                                             <input type="text" value="<?php echo $user->name?>" class="form-control" name="name" placeholder="Name">
                                                             <?php echo form_error('name','<div class ="text-danger">','</div>')?>
                                                        </div>
                                    
                                                            <div class="form-group col-lg-6">
                                                                <label>Email<span class="text-danger">*</span></label>
                                                                <input type="text" value="<?php echo $user->email?>" class="form-control" name="email" placeholder="Email">
                                                                <?php echo form_error('email','<div class ="text-danger">','</div>') ?>
                                                            </div> 
                                                        <div>
                                                            <button type="submit"  class="btn btn-success submit my-3">Update</button>
                                                        </div> 
                                                        </form>
                                                         <br>
                                                        <form action="<?php echo base_url('property/upd_pass/'.$user->id)?>" method="post">
                                                        <div class="form-check mb-3" data-bs-toggle="collapse" data-bs-target="#collapseChangePassword" aria-expanded="false" aria-controls="collapseChangePassword">
                                                            <input type="checkbox" class="form-check-input" id="gen-info-change-password">
                                                            <label class="form-check-label" for="gen-info-change-password">Change passowrd?</label>
                                                        </div>

                                                        <div class="collapse" id="collapseChangePassword">
                                                            <div class="card border shadow-none card-body">
                                                                <div class="row">
                                                                    <div class="col-lg-4">
                                                                        <div class="mb-lg-0">
                                                                            <label for="current-password-input" class="form-label">Current password</label>
                                                                            <input type="password" value="<?php echo $user->password?>" class="form-control " placeholder="Enter Current password" id="current-password-input">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-4">
                                                                        <div class="mb-lg-0">
                                                                            <label for="new-password-input" class="form-label">New password</label>
                                                                            <input type="password" name="password" class="form-control" placeholder="Enter New password" id="new-password-input">
                                                                            <?php echo form_error('password','<div class ="text-danger">','</div>')?>

                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-4">
                                                                        <div class="mb-lg-0">
                                                                            <label for="confirm-password-input" class="form-label">Confirm password</label>
                                                                            <input type="password" name="cpassword" class="form-control" placeholder="Enter Confirm password" id="confirm-password-input">
                                                                            <?php echo form_error('cpassword','<div class ="text-danger">','</div>')?>
                                                                        </div><br>
                                                                        <div class="text-end">
                                                                            <button type="submit" name="submit" class="btn btn-success w-sm">Change</button>
                                                                        </div>
                                                                    </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                           
                                            <!-- <div class="mt-4">
                                                <p class="text-muted mb-1">Location :</p>
                                                <h5 class="font-size-14 text-truncate">California, United States</h5>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                                <!-- end card -->

                            </div>
                            <!-- end col -->

                        </div>
                        <!-- end row -->
                        
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
                                <script>document.write(new Date().getFullYear())</script> &copy; Winlaxy.                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

         <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- JAVASCRIPT -->
        <script src="<?php echo base_url()?>assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="<?php echo base_url()?>assets/libs/metismenujs/metismenujs.min.js"></script>
        <script src="<?php echo base_url()?>assets/libs/simplebar/simplebar.min.js"></script>
        <script src="<?php echo base_url()?>assets/libs/feather-icons/feather.min.js"></script>

        <!-- plugins -->
        <script src="<?php echo base_url()?>assets/libs/choices.js/public/assets/scripts/choices.min.js"></script>
        <script src="<?php echo base_url()?>assets/libs/flatpickr/flatpickr.min.js"></script>
        <!-- init js -->
        <script src="<?php echo base_url()?>assets/js/pages/user-settings.init.js"></script>

        <script src="<?php echo base_url()?>assets/js/app.js"></script>

        
        
    </body>
</html>
