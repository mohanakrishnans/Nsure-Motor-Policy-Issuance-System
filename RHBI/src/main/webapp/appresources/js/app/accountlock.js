/**
 * @author Manikandan.G Creation Date=21/08/2015
 * 
 */
var securityAnswer1=null;
function onModelClick(){	 
	$("#myModal").modal('show');
	 $('#myModal').one('shown.bs.modal', function (e) {
		fnRestForm();
		var loginName=$("#userNameId").val();
		if(loginName!=''){
			var json=JSON.parse(getUserDetails(loginName,'L'));
			if(json[0].accountStatusInd=='N'){
				swal('Entered login name is not valid, please verify.');
				$("#TXT_LOCK_USERNAME").attr('readonly', false);
				$("#TXT_LOCK_USERNAME").prop("value",'');
				$('#TXT_LOCK_USERNAME').focus();
			}else{	
				$("#TXT_LOCK_USERNAME").prop("value",loginName);
				$("#TXT_LOCK_USERNAME").attr('readonly', true);
			}
		}else{
			$("#TXT_LOCK_USERNAME").attr('readonly', false);
			$('#TXT_LOCK_USERNAME').focus();
		}
		
			
	});
}
function fnRestForm(){
	$('#RDO_ACCOUNT_LOCK').attr('checked', false);
	$('#RDO_FORGET_PASSWORD').attr('checked', false);
	$('#RDO_GEN_PASSWORD').attr('checked', false);
	
}
function fnCloseModel() {
	$("#TXT_LOCK_USERNAME").prop("value","");
	$('#DIV_ACCOUNTLOCK').show();
	$('#DIV_SECURITYQSTN').hide();
	$('#TXT_SECURITY_ANS_HINT').hide();
	$('#TXT_SECURITY_ANSWER').prop("value","");
	$('#SUBMIT_BTN').prop("disabled",false);
	fnRestForm();
	}

function onRadioSelect(releaseInd) {
	var loginName = $('#TXT_LOCK_USERNAME').val();
		if(releaseInd == "G"){
			if (loginName == "") {
				swal("Please enter your login name");
				fnRestForm();
				$('#TXT_LOCK_USERNAME').focus();
			} else {
				var resultJson=JSON.parse(getUserDetails(loginName,"R"));
				var accountStatus=resultJson[0].accountStatusInd;
				var alertMsg= resultJson[0].alertMsg;
				if(accountStatus !=null && accountStatus=="Y"){
					if(resultJson[0].genPwdInd == "Y"){
						resetTrigger(loginName);
						$('#BTN_MODEL_CLOSE').click();
					}else{
						swal("Password is already assigned for given user. you cannot regenerate the password again!");
						$('#BTN_MODEL_CLOSE').click();
					}
				}else{
					swal(alertMsg);					
					$('#BTN_MODEL_CLOSE').click();
				}
			}
	
	}else
		if (loginName == "") {
			swal("Please enter your login name");
			fnRestForm();
			$('#TXT_LOCK_USERNAME').focus();
		} else {
			var json=JSON.parse(getUserDetails(loginName,releaseInd));
			var lockedStatus=json[0].lockStatusInd;
			var accountStatus=json[0].accountStatusInd;
			var alertMsg= json[0].alertMsg;
			var question=json[0].securityQuestion1;
			securityAnswer1=json[0].securityAnswer1;
			var answer=encryptedAnswer(securityAnswer1);
			$('#TXT_SECURITY_QSTN').text(question);
			$('#TXT_SECURITY_ANS_HINT').text(answer);
			$('#HDN_REL_OR_RESET_IND').prop("value",releaseInd);		
			if(accountStatus !=null && accountStatus=="Y"){
				if(lockedStatus!=null && lockedStatus=="Y"){
					$('#TXT_LOCK_USERNAME1').prop("value",loginName);
					$('#DIV_SECURITYQSTN').show();
					$('#DIV_ACCOUNTLOCK').hide();
				}else{
					swal(alertMsg);					
					$('#BTN_MODEL_CLOSE').click();
				}
			}else{
				swal(alertMsg);
				fnRestForm();
				$('#TXT_LOCK_USERNAME').prop("value","");
				$('#TXT_LOCK_USERNAME').focus();
			}	
		}
}
function viewPasswordHint(){
	$('#TXT_SECURITY_ANS_HINT').show();
}
function getUserDetails(loginName,releaseInd){
	var url=CONTEXT_PATH+"getLockdetails";
	var data="loginName="+loginName+"&releaseInd="+releaseInd+"&checkValidateInd=Y";
	var result = ajaxCallMethod(url,data);
	return result;
}
function ajaxCallMethod(url,data){	
	var result = null;
	$.ajax({
		url : url,
		type : "POST",	
		data : data,
		async : false,
		success : function(response) {
			result= response;
		},
		error : function(xhr, status, error) {
			swal("Error : "+error);
		}
	});
	return result;
}
function encryptedAnswer(answer){
	var myArray = new Array();
	ansArray = answer.split("");
	for (var i=0; i < ansArray.length; i++){
	  if(i==0 || i==(ansArray.length-1))
		myArray.push(ansArray[i]);
	  else
		  myArray.push('*'); 
	}
	myArray=myArray.join("");
	return myArray;
}
function submitForm(){
	$('#SUBMIT_BTN').prop("disabled",true);
	userAnswer=$('#TXT_SECURITY_ANSWER').val();
	userName=$('#TXT_LOCK_USERNAME1').val();
	if(userAnswer==''){
		swal("Please enter your answer");
		$('#TXT_SECURITY_ANSWER').focus();
		$('#SUBMIT_BTN').prop("disabled",false);
		return false;
	}
	else{
	//if(securityAnswer1==userAnswer.toUpperCase()){
		var releaseInd=$('#HDN_REL_OR_RESET_IND').val();
		var data="userName="+userName+"&securityAnswer1="+userAnswer.toUpperCase()+"&releaseInd="+releaseInd+"&checkValidateInd=N";
		var url=CONTEXT_PATH+"accountlock";
		var result=ajaxCallMethod(url,data);		
		swal(result);
		$('#BTN_MODEL_CLOSE').click();
	/*}
	else{
		swal("Sorry, the information provided didn't match the information in your profile ");
		$('#TXT_SECURITY_ANSWER').prop("value","");	
		$('#TXT_SECURITY_ANSWER').focus();
		$('#SUBMIT_BTN').prop("disabled",false);
		return false;
	}*/
	}
}

function resetTrigger(userName){
		var releaseInd="R";
		var basedata="userName="+userName+"&releaseInd="+releaseInd+"&checkValidateInd=N";
		var baseurl=CONTEXT_PATH+"accountlock";
		var result=ajaxCallMethod(baseurl,basedata);		
		swal(result);
}
