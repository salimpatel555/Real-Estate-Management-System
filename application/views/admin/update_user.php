<?php $this->load->view('admin/layout/header')?>
<?php $this->load->view('admin/layout/topbar')?>
<?php $this->load->view('admin/layout/sidebar')?>


<div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0">UPDATE USER</h4>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-xxl-3 col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="profile-bg position-relative overflow-hidden rounded-top" style="height: 150px;">
                                          
                                        </div>
                                        <div class="text-center">
                                            <div class="position-relative d-inline-block mx-auto mt-n5 mb-4">
                                                <div class="avatar-lg">
                                                    <img src="<?php echo base_url()?>assets/images/users/avatar-1.jpg" alt="" class="rounded-circle img-thumbnail">
                                                </div>
                                               
                                            </div>

                                            <h5 class="font-size-16 mb-1"><?php echo $users->name?></h5>
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
                                                    <form action="<?php echo base_url('admin/edit_user/'.$users->id)?>" method="post">                                                        
                                                    <div class="row">
                                                                                                           
                                                        <div class="form-group col-lg-6">
                                                            <label>Name <span class="text-danger">*</span></label>
                                                             <input type="text" value="<?php echo $users->name?>" class="form-control" name="name" placeholder="Name">
                                                             <?php echo form_error('name','<div class ="text-danger">','</div>')?>
                                                        </div>
                                    
                                                            <div class="form-group col-lg-6">
                                                                <label>Email<span class="text-danger">*</span></label>
                                                                <input type="text" value="<?php echo $users->email?>" class="form-control" name="email" placeholder="Email">
                                                                <?php echo form_error('email','<div class ="text-danger">','</div>') ?>
                                                            </div> 
                                                        <div>
                                                            <button type="submit"  class="btn btn-success submit my-3">Update</button>
                                                        </div> 
                                                        </form>
                                                         <br>
                                                        <form action="<?php echo base_url('admin/edit_pass/'.$users->id)?>" method="post">
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
                                                                            <input type="password" value="<?php echo $users->password?>" class="form-control " placeholder="Enter Current password" id="current-password-input">
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


<?php $this->load->view('admin/layout/footer')?>