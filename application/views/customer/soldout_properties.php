<?php 
// echo '<pre>'; print_r($this->session->userdata('user_sess')); exit;
$this->load->view('customer/layout/header');

$this->load->view('customer/layout/topbar');

$this->load->view('customer/layout/sidebar'); 

?>

 <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0">Sold Out Properties</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <!-- <li class="breadcrumb-item"><a href="javascript: void(0);">Projects</a></li>
                                            <li class="breadcrumb-item active">Projects List</li> -->
                                        </ol>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- end page title -->
                        <?php foreach($projects_list as $projects) { ?> 
                            <div class="row">
                                <div class="col-lg-12">                                    
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="overview" role="tabpanel">
                                            <div class="card">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-xl-3 col-sm-6">
                                                            <div class="card border shadow-none bg-primary text-white">
                                                                <div class="card-body">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="flex-shrink-0 me-3">
                                                                            <div class="avatar-sm">
                                                                                <div class="avatar-title bg-light text-primary rounded-circle font-size-18">
                                                                                    <i class="uil uil-list-ul"></i>
                                                                                </div>
                                                                            </div>
                                                                        </div>                                                                    
                                                                        <div class="flex-grow-1 overflow-hidden bg-primary text-white"">
                                                                            <p class="mb-1 text-truncate  text-white">Property Value</p>
                                                                            <h5 class="font-size-16 mb-0 text-white">$2,50,000</h5>
                                                                        </div>
                                                                    </div>
                                                                </div><!-- end card body -->
                                                            </div><!-- end card -->
                                                        </div><!-- end col -->
                                                        <div class="col-xl-3 col-sm-6">
                                                            <div class="card border shadow-none bg-success text-white">
                                                                <div class="card-body">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="flex-shrink-0 me-3">
                                                                            <div class="avatar-sm">
                                                                                <div class="avatar-title bg-light text-primary rounded-circle font-size-18">
                                                                                    <i class="uil uil-check-circle"></i>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        
                                                                        <div class="flex-grow-1 overflow-hidden">
                                                                            <p class="mb-1 text-truncate text-white">Total Tokens</p>
                                                                            <h5 class="font-size-16 mb-0 text-white">1,00,00,000</h5>
                                                                        </div>
                                                                    </div>
                                                                </div><!-- end card body -->
                                                            </div><!-- end card -->
                                                        </div><!-- end col -->
                                                        <div class="col-xl-3 col-sm-6">
                                                            <div class="card border shadow-none bg-warning text-white">
                                                                <div class="card-body">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="flex-shrink-0 me-3">
                                                                            <div class="avatar-sm">
                                                                                <div class="avatar-title bg-light text-primary rounded-circle font-size-18">
                                                                                    <i class="uil uil-users-alt"></i>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        
                                                                        <div class="flex-grow-1 overflow-hidden">
                                                                            <p class="mb-1 text-truncate text-white">Total Sales</p>
                                                                            <h5 class="font-size-16 mb-0 text-white">50,000 Laxy</h5>
                                                                        </div>
                                                                    </div>
                                                                </div><!-- end card body -->
                                                            </div><!-- end card -->
                                                        </div><!-- end col -->
                                                        <div class="col-xl-3 col-sm-6">
                                                            <div class="card border shadow-none bg-purple text-white">
                                                                <div class="card-body">
                                                                    <div class="d-flex align-items-center">
                                                                        <div class="flex-shrink-0 me-3">
                                                                            <div class="avatar-sm">
                                                                                <div class="avatar-title bg-light text-primary rounded-circle font-size-18">
                                                                                    <i class="uil uil-clock-eight"></i>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        
                                                                        <div class="flex-grow-1 overflow-hidden">
                                                                            <p class="mb-1 text-truncate text-white">Balance Token</p>
                                                                            <h5 class="font-size-16 mb-0 text-white">50,000 Laxy</h5>
                                                                        </div>
                                                                    </div>
                                                                </div><!-- end card body-->
                                                            </div><!-- end card -->
                                                        </div> <!-- end col -->
                                                    </div><!-- end row -->

                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                        <div class="border shadow-none">
                                                            <div class="card-header border justify-content-between align-items-center">
                                                                <h4 class="card-title">Property images</h4>                                                                
                                                            </div><!-- end card header -->
                                                            <div class="card-body">
                                                                <div class="row">
                                                                <?php 

                                                                // exit;

                                                                $images = json_decode($projects->property_photos,true);
                                                                for($i = 0; $i < count($images['totalFiles']); $i++){ 

                                                                        // echo '<pre>'; print_r($images['totalFiles'][$i]); exit;
                                                                ?>
                                                                <div class="col-md-4" style="margin-bottom:20px">
                                                                <div class="">
                                                                    <a href="<?php echo base_url()?>uploads/<?php echo $images['totalFiles'][$i]; ?>" class="thumb preview-thumb image-popup">
                                                                        <img src="<?php echo base_url()?>uploads/<?php echo $images['totalFiles'][$i]; ?>" class="img-fluid" alt="work-thumbnail">
                                                                    </a>
                                                                </div>
                                                                </div>
                                                                <?php } ?>
                                                                                                                            
                                                                </div>
                                                            </div><!-- end card body -->
                                                        </div><!-- end card -->
                                                        </div><!-- end col -->
                                                        <div class="col-lg-6">
                                                            <div class="card border shadow-none h-100 mb-lg-0">
                                                            <div class="">
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
                                                                        <!-- <dt class="col-sm-4 text-uppercase">Listed by :</dt>
                                                                        <dd class="col-sm-8"><?php echo $projects->email; ?></dd> -->
                                                                        <dt class="col-sm-4 text-uppercase"></dt>
                                                                        <dt class="col-sm-4 text-uppercase"></dt>
                                                                        <dd class="col-sm-8"></dd>

                                                                        <!-- <?php if($projects->property_status == 3 && $this->session->userdata('user_sess')['id'] != $projects->user_id){ ?>
                                                                            <dd class="col-sm-8"><button class="btn btn-primary" disabled>THIS PROPERTY IS SOLD OUT</button></dd>
                                                                        <?php } ?>

                                                                        <?php if($projects->property_status == 2 && $this->session->userdata('user_sess')['id'] != $projects->user_id){ ?>
                                                                            <dd class="col-sm-8"><button class="btn btn-primary" disabled>THIS PROPERTY IS UNDER PROCESSING</button></dd>
                                                                        <?php } ?>

                                                                        <?php if($projects->property_status == 1 && $this->session->userdata('user_sess')['id'] != $projects->user_id){ ?>
                                                                            <dd class="col-sm-8"><button class="btn btn-primary buy_this_property" id="<?php echo $projects->id; ?>">BUY THIS PROPERTY</button></dd>
                                                                        <?php } ?>

                                                                        <?php if($this->session->userdata('user_sess')['id'] == $projects->user_id){ ?>
                                                                            <dd class="col-sm-8"><button class="btn btn-primary buy_this_property" id="<?php echo $projects->id; ?>" disabled>Your Listed Property</button></dd>
                                                                        <?php } ?> -->

                                                                    </dl>
                                                                </div><!-- end card -->
                                                            </div><!-- end card -->
                                                            
                                                        </div><!-- end col -->
                                                    </div><!-- end row -->
                                                </div><!-- end card body -->
                                            </div><!-- end card -->
                                        </div><!-- end tab pane -->               
                                        
                                </div><!-- end col -->

                                <div class="col-12">
                                    <div class="page-title-box d-flex align-items-center justify-content-between">
                                        <h4 class="mb-0"></h4>

                                        <div class="page-title-right">
                                            <ol class="breadcrumb m-0">
                                                <!-- <li class="breadcrumb-item"><a href="javascript: void(0);">Projects</a></li>
                                                <li class="breadcrumb-item active">Projects List</li> -->
                                            </ol>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        <?php } ?>
                        <!-- end page title -->
           
                    </div> <!-- container-fluid -->
                </div><!-- End Page-content -->
                </div>
            </div>


<?php $this->load->view('customer/layout/footer')?>