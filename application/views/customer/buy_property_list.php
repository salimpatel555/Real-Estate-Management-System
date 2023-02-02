    
<?php $this->load->view('customer/layout/header')?> 

<?php $this->load->view('customer/layout/topbar')?>

<?php $this->load->view('customer/layout/sidebar')?>

    <!-- <body data-layout="horizontal" class data-topbar="dark"> -->
        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">
                    <!-- start page title -->                   
                    <div class="row">
                        <ul class="nav nav-tabs nav-tabs-custom mb-4" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-bs-toggle="tab" href="#all-property-list" role="tab">All</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"  href="<?php echo base_url('property/by_property_list')?>">Buy Property List</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#sold-property-list">Sold Property List</a>
                            </li>
                        </ul><!-- end ul -->
                    </div>
                    
                    <!-- end page title -->
                        <div class="row">
                            <div class="col-xl-3 col-sm-6 ">
                                <div class="card ">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center ">
                                            <div class="flex-shrink-0 me-3 ">
                                                <div class="avatar-sm">
                                                    <div class="avatar-title bg-soft-primary text-primary rounded-circle font-size-18 ">
                                                        <i class="uil uil-list-ul"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="flex-grow-1 overflow-hidden">
                                                <p class="mb-1 text-truncate text-muted">Total Owners</p>
                                                <h5 class="font-size-16 mb-0">21</h5>
                                            </div>
                                        </div>
                                    </div><!-- end card body -->
                                </div><!-- end card -->
                            </div><!-- end col -->
                            <div class="col-xl-3 col-sm-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar-sm">
                                                    <div class="avatar-title bg-soft-primary text-primary rounded-circle font-size-18">
                                                        <i class="uil uil-check-circle"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="flex-grow-1 overflow-hidden">
                                                <p class="mb-1 text-truncate text-muted">Completed Sales</p>
                                                <h5 class="font-size-16 mb-0">10</h5>
                                            </div>
                                        </div>
                                    </div><!-- end card body -->
                                </div><!-- end card -->
                            </div><!-- end col -->
                            <div class="col-xl-3 col-sm-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar-sm">
                                                    <div class="avatar-title bg-soft-primary text-primary rounded-circle font-size-18">
                                                        <i class="uil uil-users-alt"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="flex-grow-1 overflow-hidden">
                                                <p class="mb-1 text-truncate text-muted">Total Sales Value</p>
                                                <h5 class="font-size-16 mb-0">3224</h5>
                                            </div>
                                        </div>
                                    </div><!-- end card body -->
                                </div><!-- end card -->
                            </div><!-- end col -->
                            <div class="col-xl-3 col-sm-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar-sm">
                                                    <div class="avatar-title bg-soft-primary text-primary rounded-circle font-size-18">
                                                        <i class="uil uil-clock-eight"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="flex-grow-1 overflow-hidden">
                                                <p class="mb-1 text-truncate text-muted">Total Used Tokens</p>
                                                <h5 class="font-size-16 mb-0">3224</h5>
                                            </div>
                                        </div>
                                    </div><!-- end card body-->
                                </div><!-- end card -->
                            </div> <!-- end col -->
                        </div>
                    <div class="row">
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body bg-primary rounded">
                                    <div class="d-flex justify-content-between ">
                                        <div>
                                            <h6 class="font-size-xs text-white text-uppercase">Property Value</h6>
                                            <h6 class="mt-2 font-weight-bold mb-2 align-items-center text-white">
                                                $2,50,000
                                            </h6>
                                            <!-- <div class="text-muted">Earning this month</div> -->
                                        </div>
                                        <div>
                                            
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body bg-success rounded">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase text-white">Total Tokens</h6>
                                            <h6 class="mt-2 font-weight-bold mb-2 align-items-center text-white">
                                                1,00,00,000
                                            </h6>
                                            <!-- <div class="text-muted">Earning this month</div> -->
                                        </div>
                                        <div>
                                            
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body bg-warning rounded">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase text-white">Total Sales</h6>
                                            <h6 class="mt-2 font-weight-bold mb-2 align-items-center text-white">
                                                50,000 Laxy
                                            </h6>
                                            <!-- <div class="text-muted">Users this Week</div> -->
                                        </div>
                                        <div>
                                           
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body bg-purple rounded">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase text-white">Balance Token</h6>
                                            <h6 class="mt-2 font-weight-bold mb-2 d-flex align-items-center text-white">
                                                50,000 Laxy
                                            </h6>
                                            <!-- <div class="text-muted">Total Number of Orders</div> -->
                                        </div>
                                        <div>
                                            
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div> <!-- end row-->

                    <?php foreach($projects_list as $projects) {?> 
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-header justify-content-between align-items-center">
                                        <h4 class="card-title">Property images</h4>
                                        
                                    </div><!-- end card header -->
                                    <div class="card-body">
                                        <div class="row">
                                            <?php 
                                               
                                                $images = json_decode($projects->property_photos,true);
                                                for($i = 0; $i < count($images['totalFiles']); $i++){ 

                                                        // echo '<pre>'; print_r($images['totalFiles'][$i]); exit;
                                            ?> 
                                                <div class="col-md-3" style="margin-bottom:20px">
                                                    <div class="">
                                                        <a href="<?php echo base_url()?>uploads/<?php echo $images['totalFiles'][$i]; ?>" class="thumb preview-thumb image-popup">
                                                            <img src="<?php echo base_url()?>uploads/<?php echo $images['totalFiles'][$i]; ?>" class="img-fluid" alt="work-thumbnail">
                                                        </a>
                                                    </div>
                                                </div>
                                            <?php }  ?>
                                           
                                        </div>
                                    </div><!-- end card body -->
                                    <div class="card-header justify-content-between d-flex align-items-center">
                                        <h4 class="card-title">Overview</h4>
                                        </div><!-- end card header -->                                    
                                    <div class="card-body">
                                        

                                            <dl class="row mb-0">
                                            <dt class="col-sm-4 text-uppercase">User :</dt>
                                                <dd class="col-sm-8"><?php echo $projects->owner_type; ?></dd>
                                                <dt class="col-sm-4 text-uppercase">Property Type :</dt>
                                                <dd class="col-sm-8"><?php echo $projects->property_type; ?></dd>
            
                                                <dt class="col-sm-4 text-uppercase">Location :</dt>
                                                <dd class="col-sm-8"> <?php echo $projects->location; ?></dd>                                           
            
                                                <dt class="col-sm-4 text-uppercase">State :</dt>
                                                <dd class="col-sm-8"><?php echo $projects->state; ?></dd>
            
                                                <dt class="col-sm-4 text-uppercase">City :</dt>
                                                <dd class="col-sm-8"><?php echo $projects->city; ?></dd>
            
                                            <dt class="col-sm-4 text-uppercase">Diamention Sq Ft :</dt>
                                            <dd class="col-sm-8"><?php echo $projects->property_diamention; ?></dd>
                                                
                                                <dt class="col-sm-4 text-uppercase">Price Per Sq Ft :</dt>
                                            <dd class="col-sm-8"><?php echo $projects->per_sqft_price; ?></dd>
                                            <dt class="col-sm-4 text-uppercase">Total Price :</dt>
                                            <dd class="col-sm-8"><?php echo $projects->expected_price; ?></dd>
                                                <dt class="col-sm-4 text-uppercase">Listed by :</dt>
                                            <dd class="col-sm-8"><?php echo $this->session->userdata('user_sess')['email']; ?></dd>
                                            </dl>
                                        
                                    </div>
                                </div>                                   
                            </div><!-- end col -->                                                     
                            <!-- end col -->
                        </div><!-- end row -->          
                    <?php } ?>                 
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

    <script src="assets/js/pages/dashboard-sales.init.js"></script>

    <script src="assets/js/app.js"></script>
    <script src="<?php echo base_url()?>assets/libs/glightbox/js/glightbox.min.js"></script>

<script src="<?php echo base_url()?>assets/js/pages/lightbox.init.js"></script>

    </body>

</html>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $(document).ready(()=>{

    })
</script> -->