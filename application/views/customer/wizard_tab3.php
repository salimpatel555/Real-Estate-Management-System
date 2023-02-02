<div class="wizard-tab">
    <div>
        <div class="text-center mb-4">
            <h5>Tell us about your property</h5>
        </div>
        <div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="mb-3">
                        <label class="form-label">Select Area Deatails</label>
                        <select class="form-select" name="area_details_selectbox" id="area_details_selectbox">
                            <!-- <option selected>Plot Area</option> -->
                            <?php foreach($property_diamention as $diamention){ ?> 
                                <option value="<?php echo $diamention['id']; ?>" selected><?php echo $diamention['name']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-lg-6">
                    <div class="mb-3">
                        <label for="basicpill-namecard-input" class="form-label" id="property_diamention">Enter Property Dimension ex. (500*500)</label>
                        <input type="text" class="form-control" name="property_diamention_val" id="property_diamention_val" placeholder="Enter Property Dimension In Square Feet" />
                    </div>
                </div>
                <!-- end col -->
                <!-- <div class="col-lg-3">
                    <div class="mb-3">
                        <label for="basicpill-cardno-input" class="form-label">Credit Card Number</label>
                        <input type="text" class="form-control" id="basicpill-cardno-input" placeholder="Breadth of plot (in Ft.)" />
                    </div>
                </div> -->
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end form -->
    </div>
</div>