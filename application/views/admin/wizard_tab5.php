<div class="wizard-tab">
    <div>
        <div class="text-center mb-4">
            <h5>Pricing</h5>
            <p class="card-title-desc">Fill all information below</p>
        </div>
        <div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="mb-3">
                        <label for="basicpill-namecard-input" class="form-label">Price Details</label>
                        <input type="text" class="form-control" name="expected_price" id="expected_price" placeholder="₹ Expected Price" />
                    </div>
                </div>
                <!-- end col -->
                <div class="col-lg-6">
                    <div class="mb-3">
                        <label class="form-label">Price in sq.ft</label>
                        <select class="form-select" id="price_per_area" name="price_per_area">
                            <?php foreach($property_diamention as $diamention){ ?> 
                                <option value="<?php echo $diamention['id']; ?>"><?php echo $diamention['name']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <!-- end col -->
                <div class="row">
                    <?php foreach($prices_conditions as $conditions) { ?> 
                        <div class="col-lg-2">
                            <div class="mb-3">
                                <div class="form-check">
                                    <input class="form-check-input prices_conditions" type="checkbox" value="<?php echo $conditions['value']; ?>" id="<?php echo $conditions['id']; ?>" />
                                    <label class="form-check-label" for="flexCheckDefault">
                                        <?php echo $conditions['value']; ?>
                                    </label>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                  
                </div>
                <!-- end row -->
            </div>
            <!-- end row -->
        </div>
        <!-- end form -->
    </div>
</div>