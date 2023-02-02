function wixard_validations_tab1(){
    if($("#owner_type").val() == ""){

        return {status:false,message:"Please Select Owner type!"}

    }else if($("#property_type").val() == ""){

        return {status:false,message:"Please Select Property type!"}

    }else{
        return {status:true,message:"validated!"}
    }
}
function wixard_validations_tab2(){

    if($("#select_state").val() == ""){

        return {status:false,message:"Please Select State!"}

    }else if($("#select_city").val() == ""){

        return {status:false,message:"Please Select City!"}

    }else if($("#address").val() == ""){

        return {status:false,message:"Please Enter Address!"}

    }else{
        return {status:true,message:"validated!"}
    }
}
function wixard_validations_tab3(){

    if($("#area_details_selectbox").val() == ""){

        return {status:false,message:"Please Select Area Deatails!"}

    }else if($("#property_diamention_val").val() == ""){

        return {status:false,message:"Please Enter Property Diamention!"}

    }else{
        return {status:true,message:"validated!"}
    }
}
function wixard_validations_tab4(){

    if(!$("#photos1").val()){

        return {status:false,message:"Please Select images!"}

    }else if(!$("#photos2").val()){

        return {status:false,message:"Please Select images!"}

    }else if(!$("#photos3").val()){

        return {status:false,message:"Please Select images!"}
        
    }else if(!$("#photos4").val()){

        return {status:false,message:"Please Select images!"}
        
    }else{
        return {status:true,message:"validated!"}
    }
}
function wixard_validations_tab5(){

    if($("#expected_price").val() == ""){

        return {status:false,message:"Please Enter Expected Price!"}

    }else if($("#price_per_area").val() == ""){

        return {status:false,message:"Please Select Price Per Area!"}

    }else{
        return {status:true,message:"validated!"}
    }
}



var currentTab = 0;

function showTab(e) {
    var t = document.getElementsByClassName("wizard-tab");
	t[e].style.display = "block", document.getElementById("prevBtn").style.display = 0 == e ? "none" : "inline", e == t.length - 1 ? document.getElementById("nextBtn").innerHTML = "Submit" : document.getElementById("nextBtn").innerHTML = "Next", fixStepIndicator(e)
}

function nextPrev(e) {
    // console.log(currentTab)
    var ntabcr = currentTab
    if(currentTab==0){
       
        if(wixard_validations_tab1().status){
            nextPrev_n(e)
            ntabcr =  currentTab -1
        }else{
            Swal.fire('Validation error',wixard_validations_tab1().message,'info')
        }
    }
    if(ntabcr==1){
        if(wixard_validations_tab2().status){
            nextPrev_n(e)
            ntabcr =  currentTab - 1
        }else{
            Swal.fire('Validation error',wixard_validations_tab2().message,'info')
        }
       
    }
    if(ntabcr==2){
        if(wixard_validations_tab3().status){
            nextPrev_n(e)
            ntabcr =  currentTab - 1
        }else{
            Swal.fire('Validation error',wixard_validations_tab3().message,'info')
        }
    }
    if(ntabcr==3){
        if(wixard_validations_tab4().status){
            nextPrev_n(e)
            ntabcr =  currentTab - 1
        }else{
            Swal.fire('Validation error',wixard_validations_tab4().message,'info')
        }
    }
    if(ntabcr==4){
        if(wixard_validations_tab5().status){
            nextPrev_n(e)
            ntabcr =  currentTab - 1
            $("#submit_form_mult").submit();
        }else{
            Swal.fire('Validation error',wixard_validations_tab5().message,'info')
        }
    }
    // console.log(ntabcr)
   
	
}


function fixStepIndicator(e) {
	for (var t = document.getElementsByClassName("list-item"), n = 0; n < t.length; n++) t[n].className = t[n].className.replace(" active", "");
	t[e].className += " active"
}

function nextPrev_n(e){
    var t = document.getElementsByClassName("wizard-tab");
	t[currentTab].style.display = "none", (currentTab += e) >= t.length && (t[currentTab -= e].style.display = "block"), showTab(currentTab)
}


showTab(currentTab);






