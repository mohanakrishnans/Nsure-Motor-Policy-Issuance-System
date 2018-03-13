function validateIndividual() {
	newIcNo();
	businessRegNo();
	oldIcNo();
	postCode();
	mobileNo();
}
function validateBusiness() {
	businessRegNo();
	postCode();
	mobileNo();
}
function validateOthers() {
	oldIcNo();
	postCode();
	mobileNo();
}

function newIcNo() {
	var newicno = document.getElementById("newicno").value;
	var month = parseInt(newicno.slice(2, 4));
	var day = parseInt(newicno.slice(0, 2));
	var year = parseInt(newicno.slice(4, 8));
	var g = parseInt(newicno.slice(11,12));
	
	
	now = new Date();
	var y = now.getFullYear();
	
	if ((newicno.length == 12) ) {
		var flag = 0;
		if (year >= 1950 && year <= 2018 && (g==0||g==1) ) {
			if (month >= 1 && month <= 12) {
				if ((month == 4 || month == 6 || month == 9 || month == 11)
						&& day < 31) {
					flag = 1;
				} else if (month == 2) {
					var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
					if (day <= 28 || (day == 29 && isleap)) {
						flag = 1;
					}
				} else {
					if (day >= 1 && day <= 31) {
						flag = 1;
					}
				}
			}			
		}		
	}
	 if (flag == 0) {
		alert("Invalid IC Number!");
	}else if(flag==1){
		/*if(g==0){
			document.getElementById('gender').value="Option 1";
			document.getElementById("gender").disabled = true;
		}
		else{
			document.getElementById('gender').value="Option 2";
			document.getElementById("gender").disabled = true;
		}*/
		if ((y - year >= 18) ) {
			// alert(year);
		//alert("Valid IC Number");
		var dob= year+"-"+month+"-"+day;
		var date = new Date(dob).toDateString("DD-MM-YYYY");
		alert(date.slice(4,15));
		// $("#dob").val( day+"-"+month+"-"+ year); 
		document.getElementById('dob').value = day+"-"+month+"-"+ year;
		document.getElementById("dob").disabled = true;
		//alert(document.getElementById("dob").value);
	}else
		alert("You are under 18!");
}
}
function oldIcNo() {
	var oldicno = document.getElementById("oldicno").value;
	if ((oldicno.length != 20) && (oldicno.length!=0) ) {
		alert("Invalid Old IC number!");
	}
}

function businessRegNo() {
	var bregno = document.getElementById("businessregno").value;
	if ((bregno.length != 20) && (bregno.length!=0) ) {
		alert("Invalid business reg number!");
	}
}

function postCode() {
	var postcode = document.getElementById("postcode").value;
	if ((postcode.length != 6) && (postcode.length!=0) ) {
		alert("Enter 6 digit post code!");
	}
}

function mobileNo() {
	var mobileno = document.getElementById("mobileno").value;
	var no=parseInt(mobileno.slice(0,1));
	var flag=0;
	//alert(no);
	if ((mobileno.length == 10) && (mobileno.length!=0) && (no==9 || no==8 ||no==7)) {		
			flag=1;
	}else if(mobileno.length!=0)
		alert("Enter Valid Mobile Number!");
}
