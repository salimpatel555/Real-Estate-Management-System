
<div class="wizard-tab">
    <div>
        <div class="text-center mb-4">
            <h5>
                Welcome Back
                <!-- <?php echo $this->session->userdata('user_sess')['email']; ?> -->
            </h5>
            <!-- <p class="card-title-desc">I am listing property as a</p> -->
        </div>
        <div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="mb-3">
                        <label class="form-label">I am listing property as a</label>
                        <select class="form-select" name="owner_type" id="owner_type">
                            <?php foreach($owner_types as $owners) { ?> 
                                <option value="<?php echo $owners['id']; ?>"><?php echo $owners['name']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="mb-3">
                        <label class="form-label">What kind of property do you have?</label>
                        <select class="form-select" name="property_type" id="property_type">
                            <?php foreach($property_types as $property_type){ ?> 
                                <option value="<?php echo $property_type['id']; ?>" selected><?php echo $property_type['property_type']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>