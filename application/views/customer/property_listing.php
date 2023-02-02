

<?php 
// echo '<pre>'; print_r($this->session->userdata('user_sess')); exit;
$this->load->view('customer/layout/header');
?>
    <!-- <body data-layout="horizontal"> -->

    <!-- Begin page -->
    <?php $this->load->view('customer/layout/topbar')?>
        <!-- ========== Left Sidebar Start ========== -->
      
    <?php $this->load->view('customer/layout/sidebar')?>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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
                    <h4 class="mb-0">Property Listing</h4>
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <!-- <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                            <li class="breadcrumb-item active">Form Wizard</li> -->
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- end page title -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Liste Your Property</h4>
                    </div>
                    <!-- end card header -->
                    <div class="card-body">
                        <form method='post' action='<?php echo base_url(); ?>submit_property_details' enctype='multipart/form-data' id="submit_form_mult">
                            <?php $this->load->view('customer/wizards'); ?>
                            <!-- wizard-nav -->
                            <?php $this->load->view('customer/wizard_tab1'); ?>
                            <!-- wizard-tab -->
                            <?php $this->load->view('customer/wizard_tab2'); ?>
                            <!-- wizard-tab -->
                            <?php $this->load->view('customer/wizard_tab3'); ?>
                            <!-- wizard-tab -->
                            <?php $this->load->view('customer/wizard_tab4'); ?>

                            <?php $this->load->view('customer/wizard_tab5'); ?>
                            
                            <div class="d-flex align-items-start gap-3 mt-4">
                                <button type="button" class="btn btn-primary w-sm" id="prevBtn" onClick="nextPrev(-1)">Previous</button>
                                <button type="button" class="btn btn-primary w-sm ms-auto submit_form" id="nextBtn" onClick="nextPrev(1)">Next</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- container-fluid -->
</div>

<!-- End Page-content -->

<?php $this->load->view('customer/layout/footer')?>




<script>
$(document).ready(function() {

    

    $("#area_details_selectbox").change(function(){
        // console.log($(this).val())
        $("#property_diamention").html("Enter Property Dimension in ("+$(this).val()+")");
    })


    var baseUrl = "<?php echo base_url(); ?>"
  
    $("#select_state").change(function(){
        console.log($(this).val())
        showCities($(this).val());
        
    })
    
    
    
    function showCities(stateId){
        $.ajax({
            url     : baseUrl+"/property/get_cities",
            type    : "GET",
            data    : {state_id:stateId},
            dataType: "json",
            success: async(data) => {
                if(data){
                    var cities = data.cities
                    var html = '<option value="">City</option>'
                    for(var i = 0; i < cities.length; i++){
                        html += '<option value="'+cities[i].id+'">'+cities[i].city+'</option>'
                    }
                    $("#select_city").html(html)
                }
            }
        })
    }
    

})
</script>
           