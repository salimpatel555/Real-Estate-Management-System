<?php 
// echo '<pre>'; print_r($this->session->userdata('user_sess')); exit;
$this->load->view('customer/layout/header');

$this->load->view('customer/layout/topbar');

$this->load->view('customer/layout/sidebar'); 

?>

<div class="main-content">
<div class="page-content">
    <div class="container-fluid">

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header justify-content-between d-flex align-items-center">
                <h4 class="card-title">Maps</h4>
                    <!-- <a href="#" target="_blank" class="btn btn-sm btn-soft-secondary">Docs <i class="mdi mdi-arrow-right align-middle"></i></a> -->
                </div><!-- end card header -->
            <div class="card-body">        
                <div id="gmaps-markers" class="gmaps"></div>
            </div>
        </div><!-- end card -->
    </div><!-- end col -->                                    
</div> <!-- end row -->
<div class="row">
    <div class="col-lg-6">
        <div class="card">
            <div class="card-header justify-content-between d-flex align-items-center">
                <h4 class="card-title">World Markers</h4>
                    <!-- <a href="https://themustafaomar.com/open-source/jsvectormap/examples/markers" target="_blank" class="btn btn-sm btn-soft-secondary">Docs <i class="mdi mdi-arrow-right align-middle"></i></a> -->
            </div><!-- end card header -->

            <div class="card-body">
                <div id="world-map-markers" style="height: 350px"></div>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->

    <div class="col-lg-6">
        <div class="card">
            <div class="card-header justify-content-between d-flex align-items-center">
                <h4 class="card-title">World Image Markers</h4>
                    <!-- <a href="https://themustafaomar.com/open-source/jsvectormap/examples/markers" target="_blank" class="btn btn-sm btn-soft-secondary">Docs <i class="mdi mdi-arrow-right align-middle"></i></a> -->
            </div><!-- end card header -->
            <div class="card-body">
                <div id="world-map-markers-image"  style="height: 350px"></div>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->

    </div>
        </div>        
        </div>        

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

        <!-- google maps api -->
        <script src="https://maps.google.com/maps/api/js?key=AIzaSyCtSAR45TFgZjOs4nBFFZnII-6mMHLfSYI"></script>

        <!-- Gmaps file -->
        <script src="<?php echo base_url()?>assets/libs/gmaps/gmaps.min.js"></script>
        
        <!-- gmaps init -->
        <script src="<?php echo base_url()?>assets/js/pages/gmaps.init.js"></script>   

        <script src="<?php echo base_url()?>assets/js/app.js"></script>

         <!-- Vector map-->
         <script src="<?php echo base_url()?>assets/libs/jsvectormap/js/jsvectormap.min.js"></script>
        <script src="<?php echo base_url()?>assets/libs/jsvectormap/maps/world-merc.js"></script>
        <script src="<?php echo base_url()?>assets/libs/jsvectormap/maps/us-merc-en.js"></script>
        <script src="<?php echo base_url()?>assets/libs/jsvectormap/maps/canada.js"></script>
         <!-- vector-maps init -->
        <script src="<?php echo base_url()?>assets/js/pages/vector-maps.init.js"></script>
        <!-- <script src="<?php echo base_url()?>assets/js/app.js"></script> -->

    </body>
</html>