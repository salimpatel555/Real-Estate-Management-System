<?php $this->load->view('admin/layout/header');?>
<?php $this->load->view('admin/layout/topbar')?>
    
<?php $this->load->view('admin/layout/sidebar')?>

 <!-- Start right Content here -->
            <!-- ============================================================== -->
<div class="main-content">

    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-flex align-items-center justify-content-between">
                        <h4 class="mb-0">Projects List</h4>

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

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="mb-3">
                                                <a href="<?php echo base_url('admin/add_property')?>" class="btn btn-light">
                                                    <i class="uil uil-plus me-1"></i> Add New
                                                </a>

                                            </div>
                                        </div>
                                        <!-- end col -->
                                        <div class="col-md-9">
                                            <div class="d-flex flex-wrap align-items-start justify-content-md-end gap-2 mb-3">
                                                <div class="search-box ">
                                                    <div class="position-relative">
                                                        <input type="text" class="form-control bg-light border-light rounded" placeholder="Search...">
                                                        <i class="uil uil-search search-icon"></i>
                                                    </div>
                                                </div>
                                                
                                                <div>
                                                    <ul class="nav nav-pills">
                                                        <li class="nav-item">
                                                            <a class="nav-link active" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="List"><i class="uil uil-list-ul"></i></a>
                                                        </li>
                                                        <!-- <li class="nav-item">
                                                            <a class="nav-link" href="projects-grid.html" data-bs-toggle="tooltip" data-bs-placement="top" title="Grid"><i class="uil uil-apps"></i></a>
                                                        </li> -->
                                                    </ul>
                                                </div>
                                                <div class="dropdown">
                                                    <a class="btn btn-link text-dark dropdown-toggle shadow-none" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <i class="uil uil-ellipsis-h"></i>
                                                    </a>
                                                    <ul class="dropdown-menu dropdown-menu-end">
                                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div><!-- end col -->
                                    </div><!-- end row -->

                                    <div class="mt-2">
                                        <ul class="nav nav-tabs nav-tabs-custom mb-4" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-bs-toggle="tab" href="#list-all" role="tab">All</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-bs-toggle="tab" href="#process-list">Process List</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-bs-toggle="tab" href="#list-active">Active</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-bs-toggle="tab" href="#list-complete">Completed</a>
                                            </li>
                                        </ul><!-- end ul -->
                                    </div>

                                    <!-- Tab content -->
                                    <div class="tab-content">
                                        <div class="tab-pane" id="process-list" role="tabpanel">
                                            <?php foreach($propertys_list as $property) { if($property->property_status == 2) {   ?>
                                                <div class="card border shadow-none">
                                                    <div class="card-body">
                                                        <div class="d-flex">
                                                            <div class="flex-grow-1 me-2 flex-wrap">
                                                                <!-- <h5 class="font-size-15 mb-1"><a href="projects-overview.html" class="text-dark">Brand Logo Design</a></h5>
                                                                <p class="text-muted mb-0">Sed ut perspiciatis unde iste</p> -->
                                                            </div>
                                                            <div class="flex-shrink-0">
                                                                <div class="d-flex gap-2">
                                                                    <div>
                                                                        <a href="#" class="btn btn-light btn-sm"><i class="uil uil-pen"></i></a>
                                                                    </div>
                                                                    <div class="dropdown">
                                                                        <a class="btn btn-light btn-sm dropdown-toggle" href="#" role="button"
                                                                            data-bs-toggle="dropdown" aria-haspopup="true">
                                                                            <i class="icon-xs" data-feather="more-horizontal"></i>
                                                                        </a>
                                                                        <ul class="dropdown-menu dropdown-menu-end">
                                                                            <li><a class="dropdown-item" href="#">Action</a></li>
                                                                            <li><a class="dropdown-item" href="#">Another action</a></li>
                                                                            <li><hr class="dropdown-divider"></li>
                                                                            <li><a class="dropdown-item" href="#">Separated link</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end card body -->
                                                    <div class="">
                                                        <div class="row g-0">
                                                            <div class="col-xl-3 col-sm-6">
                                                                <div class="border p-3 h-100">
                                                                    <div>
                                                                        <p class="text-muted font-size-13 mb-2">User</p>
                                                                        <div class="badge badge-soft-primary font-size-12"><?php echo $property->owner_type; ?></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-3 col-sm-6">
                                                                <div class="border p-3 h-100">
                                                                    <div>
                                                                        <p class="text-muted font-size-13 mb-2">Date</p>
                                                                        <h5 class="font-size-14 mb-0"><?php echo $property->created_on; ?></h5>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-3 col-sm-6">
                                                                <div class="border p-3 h-100">
                                                                    <div>
                                                                        <p class="text-muted font-size-13 mb-2">Process This Property</p>
                                                                        <button class="btn btn-success process_property" id="<?php echo $property->id; ?>">Process</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-3 col-sm-6">
                                                            
                                                                <div class="border p-3 h-100">
                                                                
                                                                    <div>                                                                               
                                                                        <div class="avatar-group align-items-center">
                                                                        <?php 
                                                                        $images = json_decode($property->property_photos,true);
                                                                        for($i=0; $i<count($images['totalFiles']); $i++){                           
                                                                        ?>
                                                                            <div class="avatar-group-item">
                                                                                <a href="<?php echo base_url()?>uploads/<?php echo $images['totalFiles'][$i];?>" class="d-block" data-bs-toggle="tooltip" data-bs-placement="top" title="Property Images">
                                                                                    <img src="<?php echo base_url()?>uploads/<?php echo $images['totalFiles'][$i];?>" alt="" class="rounded-circle avatar-sm">
                                                                                </a>
                                                                            </div>
                                                                            <?php } ?>
                                                                        </div>
                                                                    </div>
                                                                    

                                                                </div>
                                                            </div><!-- end col -->
                                                        </div><!-- end row -->
                                                    </div>
                                                </div><!-- end card -->
                                                <div class="col-lg-12">
                                                    <div class="card border shadow-none h-100 mb-lg-0">
                                                    <div class="">
                                                    <div class="card-header justify-content-between d-flex align-items-center">
                                                        <h4 class="card-title">Overview</h4>                                                            
                                                    </div><!-- end card header -->
                                                        <div class="card-body">
                                                            <dl class="row mb-0">
                                                                <dt class="col-sm-4 text-uppercase">User :</dt>
                                                                <dd class="col-sm-8"><?php echo $property->owner_type; ?></dd>
                                                                <dt class="col-sm-4 text-uppercase">Property Type :</dt>
                                                                <dd class="col-sm-8"><?php echo $property->property_type; ?></dd>

                                                                <dt class="col-sm-4 text-uppercase">Location :</dt>
                                                                <dd class="col-sm-8"> <?php echo $property->location; ?></dd>                                           

                                                                <dt class="col-sm-4 text-uppercase">State :</dt>
                                                                <dd class="col-sm-8"><?php echo $property->state; ?></dd>

                                                                <dt class="col-sm-4 text-uppercase">City :</dt>
                                                                <dd class="col-sm-8"><?php echo $property->city; ?></dd>

                                                                <dt class="col-sm-4 text-uppercase">Diamention Sq Ft :</dt>
                                                                <dd class="col-sm-8"><?php echo $property->property_diamention; ?></dd>
                                                                    
                                                                <dt class="col-sm-4 text-uppercase">Price Per Sq Ft :</dt>
                                                                <dd class="col-sm-8"><?php echo $property->per_sqft_price; ?></dd>
                                                                <dt class="col-sm-4 text-uppercase">Total Price :</dt>
                                                                <dd class="col-sm-8"><?php echo $property->expected_price; ?></dd>
                                                                <dt class="col-sm-4 text-uppercase">Listed by :</dt>
                                                                <dd class="col-sm-8"><?php echo $property->email; ?></dd>
                                                                <dt class="col-sm-4 text-uppercase"></dt>
                                                                <dt class="col-sm-4 text-uppercase"></dt>
                                                                <dd class="col-sm-8"></dd>
                                                                <!-- <?php if($property->property_status == 3){ ?>
                                                                    <dd class="col-sm-8"><button class="btn btn-primary" disabled>THIS PROPERTY IS SOLD OUT</button></dd>
                                                                <?php }else if($property->property_status == 2){ ?>
                                                                    <dd class="col-sm-8"><button class="btn btn-primary" disabled>THIS PROPERTY IS UNDER PROCESSING</button></dd>
                                                                <?php }else{ ?>
                                                                    <dd class="col-sm-8"><button class="btn btn-primary buy_this_property" id="<?php echo $property->id; ?>">BUY THIS PROPERTY</button></dd>
                                                                <?php } ?> -->
                                                            </dl>
                                                        </div><!-- end card -->
                                                    </div><!-- end card -->
                                                </div><!-- end col -->
                                            <?php } } ?>
                                            <div class="row g-0">
                                                <div class="col-sm-6">
                                                    <div>
                                                        <p class="mb-sm-0">Showing 1 to 8 of 24 entries</p>
                                                    </div>
                                                </div><!-- end col -->
                                                <div class="col-sm-6">
                                                    <div class="float-sm-end">
                                                        <ul class="pagination pagination-rounded mb-sm-0">
                                                            <li class="page-item disabled">
                                                                <a href="#" class="page-link"><i class="mdi mdi-chevron-left"></i></a>
                                                            </li>
                                                            <li class="page-item">
                                                                <a href="#" class="page-link">1</a>
                                                            </li>
                                                            <li class="page-item active">
                                                                <a href="#" class="page-link">2</a>
                                                            </li>
                                                            <li class="page-item">
                                                                <a href="#" class="page-link">3</a>
                                                            </li>
                                                            <li class="page-item">
                                                                <a href="#" class="page-link">4</a>
                                                            </li>
                                                            <li class="page-item">
                                                                <a href="#" class="page-link">5</a>
                                                            </li>
                                                            <li class="page-item">
                                                                <a href="#" class="page-link"><i class="mdi mdi-chevron-right"></i></a>
                                                            </li>
                                                        </ul><!-- end ul -->
                                                    </div>
                                                </div><!-- end col -->
                                            </div><!-- end row -->
                                            <!-- end tab pane -->
                                        </div>
                                    </div>
                                <!-- end tab pane -->
                                </div>
                            </div>
                            <!-- end tab content -->
                        </div><!-- end card body -->
                    </div><!-- end card -->
                </div><!-- end col -->
            </div><!-- end row -->
            
        </div> <!-- container-fluid -->
    </div><!-- End Page-content -->

<?php $this->load->view('admin/layout/footer')?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
    $(document).ready(() => {

        $(".process_property").click(function(){
            
            Swal.fire({
                title: 'Are you sure?',
                text: "Do you want to process this propery?!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes'
            }).then((result) => {
                if (result.isConfirmed) {
                    var propertyId = this.id;
                    process_property(propertyId);
                }
            })


        })

    })
    function process_property(propertyId = ''){
        $.ajax({
            url : '<?= base_url(); ?>/admin/process_property',
            method : "POST",
            data : {property_id:propertyId},
            dataType : "JSON",
            success(response){

                if(response.status){

                    Swal.fire(
                        'Yes!',
                        response.message,
                        'success'
                    )

                    window.location.reload()

                }else{
                    Swal.fire(
                        'Info!',
                        response.message,
                        'info'
                    )
                }
            }
        })
    }

</script>
