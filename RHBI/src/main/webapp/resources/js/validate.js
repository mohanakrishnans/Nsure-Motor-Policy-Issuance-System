/*function validateIndividual() {
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
 */

function newIcno() {
	var newicno = document.getElementById("newicno").value;

	/*
	 * var month = parseInt(newicno.slice(2, 4)); var day =
	 * parseInt(newicno.slice(0, 2)); var year = parseInt(newicno.slice(4, 8));
	 * var g = parseInt(newicno.slice(11,12));
	 */

	var month = (newicno.slice(2, 4));
	var day = (newicno.slice(0, 2));
	var year = (newicno.slice(4, 8));
	var g = (newicno.slice(11, 12));

	now = new Date();
	var y = now.getFullYear();
	var flag = 0;
	if ((newicno.length == 12)) {

		if (year >= 1950 && year <= 2018 && (g == 0 || g == 1)) {
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
		// document.getElementById("newicno").reset();
		document.getElementById('newicno').style.backgroundColor = "#f26f6f";
		document.getElementById("newicno").value = "";
	} else if (flag == 1) {
		// document.getElementById('newicno').style.backgroundColor = "#FFFFFF";
		if ((y - year >= 18)) {
			// alert(year);
			// alert("Valid IC Number");
			// var dob= year+"-"+month+"-"+day;
			// var date = new Date(dob).toDateString("dd-mm-yyyy");
			// alert(date.slice(4,15));
			document.getElementById('newicno').style.backgroundColor = "";
			// newicno.style.backgroundColor= "white";
			var date = year + "-" + month + "-" + day;
			// alert(date);
			// $("#dob").val( day+"-"+month+"-"+ year);
			document.getElementById('dob').value = date;
			document.getElementById("dob").disabled = true;
			// alert(document.getElementById("dob").value);
			if (g == 0) {
				document.getElementById('Gender').value = "MALE";
				document.getElementById("Gender").disabled = true;
			} else {
				document.getElementById('Gender').value = "FEMALE";
				document.getElementById("Gender").disabled = true;
			}
			var age = y - year;
			document.getElementById('Age').value = age;
			document.getElementById("Age").disabled = true;
			// color();
			newicno.style.backgroundColor = "#FFFFFF";
		} else
			alert("You are under 18!");
		// newicno.style.backgroundColor= "#FFFF6F";
		document.getElementById('newicno').style.backgroundColor = "#f26f6f";
		document.getElementById("newicno").value = "";
		// document.getElementById("newicno").value = "";
	}
}

function oldIcNo() {
	var oldicno = document.getElementById("oldicno").value;
	if ((oldicno.length != 20) && (oldicno.length != 0)) {
		alert("Invalid Old IC number!");
		document.getElementById('oldicno').style.backgroundColor = "#f26f6f";
		document.getElementById("oldicno").value = "";
	} else
		document.getElementById('oldicno').style.backgroundColor = "";
}

function dob(){
	//alert("Ddd");
	var dob = document.getElementById("dob").value;
	var year = (dob.slice(0, 4));
	//alert(year);
	now = new Date();
	var age=now.getFullYear()-year;
	if(age>=18){
		document.getElementById('dob').style.backgroundColor = ""
		document.getElementById('age').value = age;
		document.getElementById("Age").disabled = true;
	}else{
		alert("You are under 18!");		
		document.getElementById('dob').style.backgroundColor = "#f26f6f";
		document.getElementById("dob").value = "";
	}
}

function onlyAlphabets(e, t) {
	try {
		if (window.event) {
			var charCode = window.event.keyCode;
		} else if (e) {
			var charCode = e.which;
		} else {
			return true;
		}
		if ((charCode > 64 && charCode < 91)
				|| (charCode > 96 && charCode < 123))
			return true;
		else
			return false;
	} catch (err) {
		alert(err.Description);
	}
}

function businessRegno() {
	var bregno = document.getElementById("businessregno").value;
	if ((bregno.length != 20) && (bregno.length != 0)) {
		alert("Invalid business reg number!");
		document.getElementById('businessregno').style.backgroundColor = "#f26f6f";
		document.getElementById("businessregno").value = "";
	} else
		document.getElementById('businessregno').sstyle.backgroundColor = "";
}

function gsTregistered() {
	var gst = document.getElementById("gstregistered").value;
	if (gst.length != 0) {
		if (gst == "YES") {
			document.getElementById("Gstregistrationno").disabled = false;
			document.getElementById("gstregdate").disabled = false;
			document.getElementById("Gstexpirydate").disabled = false;
		}else{
			document.getElementById("Gstregistrationno").disabled = true;
			document.getElementById("gstregdate").disabled = true;
			document.getElementById("Gstexpirydate").disabled = true;
		}
	}
}

function gstRegistrationNo() {
	var gstregistrationno = document.getElementById("gstregistrationno").value;
	if ((gstregistrationno.length != 10) && (gstregistrationno.length != 0)) {
		alert("Invalid GST reg number!");
		document.getElementById('gstregistrationno').style.backgroundColor = "#f26f6f";
		document.getElementById("gstregistrationno").value = "";
	} else
		document.getElementById('gstregistrationno').style.backgroundColor = "";
}

function emailVal() {
	// alert("dsgg");
	var x = document.getElementById("Email").value;
	var atpos = x.indexOf("@");
	var dotpos = x.lastIndexOf(".");
	/*
	 * alert(atpos); alert(dotpos);
	 */
	if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
		alert("Invalid e-mail address");
		document.getElementById('Email').style.backgroundColor = "#f26f6f";
		document.getElementById("Email").value = "";
	} else
		document.getElementById('Email').style.backgroundColor = "";
}

function posTcode() {
	var postcode = document.getElementById("postcode").value;
	if ((postcode.length != 6) && (postcode.length != 0)) {
		alert("Enter 6 digit post code!");
		document.getElementById('postcode').style.backgroundColor = "#f26f6f";
		document.getElementById("postcode").value = "";
	} else
		document.getElementById('postcode').style.backgroundColor = "";
}

function mobilEno() {
	var mobileno = document.getElementById("mobileno").value;
	var no = (mobileno.slice(0, 1));
	// var flag = 0;
	// alert(no);
	if ((mobileno.length == 10) && (mobileno.length != 0)
			&& (no == 9 || no == 8 || no == 7)) {
		document.getElementById('mobileno').style.backgroundColor = "";
	} else if (mobileno.length != 0) {
		alert("Invalid Mobile Number!");
		// setInterval(function(){ alert("Invalid Mobile Number!"); }, 60000);
		document.getElementById('mobileno').style.backgroundColor = "#f26f6f";
		document.getElementById("mobileno").value = "";
	}
}

function telNo() {
	var telno = document.getElementById("telno1").value;
	var no = (telno.slice(0, 1));
	if ((telno.length == 10 && telno.length != 0) && no == 0) {
		document.getElementById('telno1').style.backgroundColor = "";
	} else if (telno.length != 0) {
		alert("Invalid Telephone Number!");
		// setInterval(function(){ alert("Invalid Mobile Number!"); }, 60000);
		document.getElementById('telno1').style.backgroundColor = "#f26f6f";
		document.getElementById("telno1").value = "";
	}
}
function telNo1() {
	var telno = document.getElementById("telno2").value;
	var no = (telno.slice(0, 1));
	if ((telno.length == 10 && telno.length != 0) && no == 0) {
		document.getElementById('telno2').style.backgroundColor = "";
	} else if (telno.length != 0) {
		alert("Invalid Telephone Number!");
		// setInterval(function(){ alert("Invalid Mobile Number!"); }, 60000);
		document.getElementById('telno2').style.backgroundColor = "#f26f6f";
		document.getElementById("telno2").value = "";
	}
}

function faxNo() {
	var faxno = document.getElementById("faxno1").value;
	if (faxno.length == 10 && faxno.length != 0) {
		document.getElementById('faxno1').style.backgroundColor = "";
	} else if (faxno.length != 0) {
		alert("Invalid FAX Number!");
		// setInterval(function(){ alert("Invalid Mobile Number!"); }, 60000);
		document.getElementById('faxno1').style.backgroundColor = "#f26f6f";
		document.getElementById("faxno1").value = "";
	}
}

function faxNo1() {
	var faxno = document.getElementById("faxno2").value;
	if (faxno.length == 10 && faxno.length != 0) {
		document.getElementById('faxno2').style.backgroundColor = "";
	} else if (faxno.length != 0) {
		alert("Invalid FAX Number!");
		// setInterval(function(){ alert("Invalid Mobile Number!"); }, 60000);
		document.getElementById('faxno2').style.backgroundColor = "#f26f6f";
		document.getElementById("faxno2").value = "";
	}
}
