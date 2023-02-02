<div class="wizard-tab">
    <div>
        <div class="text-center mb-4">
            <h5>Where is your property located?</h5>
            <p class="card-title-desc">Accurate location lelps you connect with the right buyers</p>
        </div>
        <div>
            <!-- end row -->
            <!-- end row -->
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="mb-3">
                        <select class="form-select" name="select_state" aria-label="Default select example" id="select_state">
                            <option value="">State</option>
                            <?php foreach($states as $row_states) { ?>
                                <option value="<?php echo $row_states['id']; ?>"><?php echo $row_states['name']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-lg-6">
                    <div class="mb-3">
                        <select class="form-select" name="select_city" aria-label="Default select example" id="select_city">
                            <option value="">City</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="mb-3">
                        <textarea class="form-control" name="address" id="address" rows="2" placeholder="Enter Address"></textarea>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row-->
        </div>
        <!-- end form -->
    </div>
</div>