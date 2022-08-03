$(function() {
	$("#form1").validate({
                    errorElement: "div",
                    //place all errors in a <div id="errors"> element
                    
		rules : {
			login : {
				required : true,				
				charecter_Integer_validation : true
			},
                        password:{
                                required : true,				
				
                        }                        
		}
	});
        
	
        $.validator.addMethod("charecter_Integer_validation", function(value, element) {
		return /^[A-Za-z0-9]+$/.test(value);
	}, "Please Enter Characters and Integer Only.");
});
