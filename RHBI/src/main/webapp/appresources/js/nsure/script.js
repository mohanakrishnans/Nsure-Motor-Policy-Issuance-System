jQuery(document).ready(function($) {
 
		$("#submit").click(function(){
			var employeeData = {};
			employeeData["id"] = $("#id").val();
			employeeData["firstName"] = $("#firstName").val();
			employeeData["lastName"] = $("#lastName").val();
			employeeData["age"] = $("#age").val();
			employeeData["salary"] = $("#salary").val();
			
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "postEmployee",
				data : JSON.stringify(employeeData),
				dataType : 'json',				
				success : function(data) {
					$('#processedData').html(JSON.stringify(data));
					$('#displayDiv').show();
				}
			});
		});
 
	});