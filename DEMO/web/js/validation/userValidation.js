$(function() {
	$("#form1").validate({
                    errorElement: "div",
                    //place all errors in a <div id="errors"> element
                    
		rules : {
			company_name : {
				required : true,				
				charecter_validation : true
			},
                        hrname:{
                                required : true,				
				charecter_validation : true
                        },                                                     
                        address:{
				required : true								
			},
                        city:{
				required : true,				
				charecter_validation : true
			},
                        state:{
				required : true,				
				charecter_validation : true
			},
                        coursecode:{
				required : true,				
				charecter_dash_validation : true
			},
                        coursename:{
				required : true,				
				charecter_validation : true
			},
                        compdesc:{
				required : true,				
				charecter_validation : true
			},
                        coursesp:{
				required : true,				
				charecter_validation : true
			},
                        coursetype:{
				required : true,								
			},
                        year:{
				required : true,
                                integer_validation : true
			},
                        semester_name:{
                                required : true,
                                minlength : 1,
				maxlength : 2,
                                semester_validation : true
                        },
                        min_credit:{
                                required : true,
                                minlength : 1,
				maxlength : 3,
                                integer_validation : true
                        },
                        max_credit:{
                                required : true,
                                minlength : 1,
				maxlength : 3,
                                integer_validation : true
                        },
                        Semester:{ valueNotEquals: "default" },
                        course:{ valueNotEquals: "default" },
                        branch:{ valueNotEquals: "default" },
                        effective_year:{ valueNotEquals: "default" },
                        collegecode: { valueNotEquals: "default" },
                        aca_year:{ valueNotEquals: "default" },
                        batch:{ valueNotEquals: "default" },
                        
                        
		},
		messages : {
			company_name : {
				
			},
                        hrname : {
				
			},
                        address:{
				
			},
                        city:{
				
			},
                        state:{
				
			},
                        semester_name:{
                                required : "Please enter a total number of semester",
                                minlength : $.format("Minimum {0} digit number required!"),
				maxlength : $.format("Maximum {0} digit number allowed")
                        },
                        min_credit:{
                                required : "Please enter a minimum credit of course",
                                minlength : $.format("Minimum {0} digit number required!"),
				maxlength : $.format("Maximum {0} digit number allowed")
                        },
                        max_credit:{
                                required : "Please enter a maximum credit of course",
                                minlength : $.format("Minimum {0} digit number required!"),
				maxlength : $.format("Maximum {0} digit number allowed")
                        },
                        Semester:{ valueNotEquals: "*" },
                        course:{ valueNotEquals: "*" },
                        branch:{ valueNotEquals: "*" },
                        effective_year:{ valueNotEquals: "*" },
                        collegecode: { valueNotEquals: "*" },
                        aca_year:{ valueNotEquals: "*" },
                        batch:{ valueNotEquals: "*" },
                        
		}
	});
        $.validator.addMethod("charecter_dash_validation", function(value, element) {
		return /^[A-Za-z0-9]+$/.test(value);
	}, "Pease Enter Characters, Integer and - Only.");
	$.validator.addMethod("charecter_validation", function(value, element) {
		return /^[A-Za-z ]+$/.test(value);
	}, "Pease Enter Characters Only.");
        $.validator.addMethod("integer_validation", function(value, element) {
		return /^[0-9]+$/.test(value);
	}, "Pease Enter Number Only.");        
        $.validator.addMethod("semester_validation", function(value, element) {
		return /^([2468]|10)+$/.test(value);
	}, "Pease enter only 2,4,6,8 and 10 number Only.");
        
        $.validator.addMethod("valueNotEquals", function(value, element, arg){ 
            return arg != jQuery(element).find('option:selected').val(); 
        }, "*");
        $.validator.addMethod("charecter_dot_validation", function(value, element) {
		return /^[A-Za-z . -]+$/.test(value);
	}, "Pease Enter charecter Only.");
       
      
});
