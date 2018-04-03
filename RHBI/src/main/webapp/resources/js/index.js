var app = angular.module('app', [ 'ngTouch', 'ui.grid', 'ui.grid.selection']);
/*Quotation Controller*/
/*------------------------------------------------------*/
app.controller('endorsement', [
	'$scope',
	'$http',
	'$log',
	'$timeout',
	'uiGridConstants','$window',
	function($scope, $http, $log, $timeout,$uiGridConstants,$window) {
		$scope.gridOptions = {  };
		$scope.mySelections = [];
		 
		
		
		
		$scope.gridOptions = {
			rowHeight : 30,
			multiSelect : false,
			showGridFooter : true,
			enableSelectAll : true,
			enableRowSelection : true,
			selectionRowHeaderWidth : 50,
			onRegisterApi: function(gridApi){
		          $scope.gridApi = gridApi;
		          gridApi.selection.on.rowSelectionChanged($scope,function(rows){
		            $scope.mySelections = gridApi.selection.getSelectedRows();
		            
		          });}
		};
		
		$scope.gridOptions.columnDefs = [ {
			  name: 'policyno',
		    	displayName:'Policy No'
		  }, {
		    name: 'cnno',
		    	displayName:'Cover Note No'
		  }, {
		    name: 'effectivedate',
		    displayName:'Effective Date'
		  }, {
		    name: 'IssueDate',
		    	displayName:'Issue Date '
		  }, {
		    name: 'expiredate',
		    displayName:'Expire date'
		  }];
		$scope.gridOptions.multiSelect = false;
		  
		  $scope.getSelectedRows = function(rowEntity) {
		    $scope.mySelectedRows = $scope.gridApi.selection.getSelectedRows();
		    //alert(JSON.stringify( $scope.mySelectedRows));
		    //alert($scope.mySelectedRows.item);
		    var str =JSON.stringify( $scope.mySelectedRows);
		    var objArr = angular.fromJson(str).filter(function(item) {
		    	
		    	var policyno = item.policyno;
		    	var covernoteno = item.cnno;
		    	var effectivedate = item.effectivedate;
		    	
		    	var issuedate = item.IssueDate;
		    	alert(item.IssueDate);
		    	
		    	var expirydate = item.expiredate;
		        
		        $('#policyno').val(policyno);
		        $('#covernoteno').val(covernoteno);
		        $('#effectivedate').val(effectivedate);
		        $('#issueddate').val(issuedate);
		        $('#expirydate').val(expirydate);
		        
		        $('#myModal').modal('hide');
		    	
		        
		    });
		  };
	

		$http.get('cnoptionGrid').success(					
				function(data) {
					$scope.gridOptions.data = data;
					$scope.mySelectedRows = $scope.gridApi.selection.getSelectedRows();
					$timeout(function() {
						if ($scope.gridApi.selection.selectRow) {
							$scope.gridApi.selection
									.selectRow($scope.gridOptions.data[0]);
						}
					});
				});
		 $scope.info = {};

		    $scope.toggleMultiSelect = function() {
		      $scope.gridApi.selection.setMultiSelect(!$scope.gridApi.grid.options.multiSelect);
		    };

		    $scope.toggleRow1 = function() {
		      $scope.gridApi.selection.toggleRowSelection($scope.gridOptions.data[0]);
		    };
		    
		    $scope.gridOptions.onRegisterApi = function(gridApi){
		      //set gridApi on scope
		      $scope.gridApi = gridApi;
		      
		      
		    };
		   
		}]);


app.controller('endorsementdetails', [
	'$scope',
	'$http',
	'$log',
	'$timeout',
	'uiGridConstants','$window',
	function($scope, $http, $log, $timeout,$uiGridConstants,$window) {
		$scope.gridOptions = {  };
		$scope.mySelections = [];
		
		$scope.endor = [];
		
		$scope.endor.previouspolicyno = $window.sessionStorage.getItem( 'previouspolicyno' );
		$scope.endor.covernoteno=$window.sessionStorage.getItem( 'covernoteno' );
		$scope.endor.pocdate=$window.sessionStorage.getItem( 'pocdate' );
		$scope.endor.effectivedate=$window.sessionStorage.getItem( 'effectivedate' );
		$scope.endor.endorsementtype=$window.sessionStorage.getItem( 'endorsementtype' );
		$scope.endor.expiredate=$window.sessionStorage.getItem( 'expiredate' );
		$scope.endor.issueddate=$window.sessionStorage.getItem( 'issueddate' );

		 
	
	$scope.endorsubmit = function() {		
		alert("mohannnn");
		$window.sessionStorage.setItem('previouspolicyno',$scope.endor.previouspolicyno);
		$window.sessionStorage.setItem('covernoteno',$scope.endor.covernoteno);				
		$window.sessionStorage.setItem('pocdate',$scope.endor.pocdate);				
		$window.sessionStorage.setItem('effectivedate',$scope.endor.effectivedate);				
		$window.sessionStorage.setItem('endorsementtype',$scope.endor.endorsementtype);				
		$window.sessionStorage.setItem('expirydate',$scope.endor.expiredate);				
		$window.sessionStorage.setItem('issueddate',$scope.endor.issueddate);
		
		
		
		var formData = {
				"previouspolicyno":$scope.endor.previouspolicyno,
				"covernoteno":$scope.endor.covernoteno,
				"pocdate" : $scope.endor.pocdate,
				"effectivedate" : $scope.endor.effectivedate,
				"endorsementtype" : $scope.endor.endorsementtype,
				"issueddate" : $scope.endor.issueddate,
				"expiredate" : $scope.endor.expiredate
				
				
		};
			var response = $http.post('saveEndorsementDetails', formData);
			response.success(function(data, status, headers, config) {
				$scope.endor.push(data);
			});
			response.error(function(data, status, headers, config) {
				alert( "Exception details: " + JSON.stringify({data: data}));
			});			
		$scope.endor = [];
			
		}; 
}]);










/*------------------------------------------------------*/
app.controller('cnoptionGrid', [
		'$scope',
		'$http',
		'$log',
		'$timeout',
		'uiGridConstants',
		function($scope, $http, $log, $timeout, uiGridConstants) {
			

			$scope.gridOptions = {
				rowHeight : 30,
				multiSelect : false,
				showGridFooter : true,
				enableSelectAll : true,
				enableRowSelection : true,
				selectionRowHeaderWidth : 50,
				onRegisterApi: function(gridApi){
			          $scope.gridApi = gridApi;
			          gridApi.selection.on.rowSelectionChanged($scope,function(rows){
			            $scope.mySelections = gridApi.selection.getSelectedRows();
			            
			          });}
			};
			
			$scope.gridOptions.multiSelect = false; 
			
			$scope.cancelCovertnote = function(rowEntity) {
			    $scope.mySelectedRows = $scope.gridApi.selection.getSelectedRows();
			    alert(JSON.stringify( $scope.mySelectedRows));
			    var str =JSON.stringify( $scope.mySelectedRows);
			    var objArr = angular.fromJson(str).filter(function(item) {			    	
			    	alert(item.covernoteid);
			    	
			    	
			    	
			    	$scope.convert=[];
			    	//var formData = JSON.stringify( $scope.mySelectedRows);
			    	var formData = {
							"covernoteid":item.covernoteid
							
					};
						var response = $http.post('cancelCovernote', formData);
						response.success(function(data, status, headers, config) {
							$scope.convert.push(data);
						});
						response.error(function(data, status, headers, config) {
							alert( "Exception details: " + JSON.stringify({data: data}));
						});	
			    	
			        
			    });
			  };
			  $scope.convertCovertnote = function(rowEntity) {
			    $scope.mySelectedRows = $scope.gridApi.selection.getSelectedRows();
			    alert(JSON.stringify( $scope.mySelectedRows));
			    //alert($scope.mySelectedRows.item);
			    var str =JSON.stringify( $scope.mySelectedRows);
			    var objArr = angular.fromJson(str).filter(function(item) {			    	
			    	alert(item.covernoteid);
			    	
			    	
			    	
			    	$scope.convert=[];
			    	//var formData = JSON.stringify( $scope.mySelectedRows);
			    	var formData = {
							"covernoteid":item.covernoteid
							
					};
						var response = $http.post('convertCovernote', formData);
						response.success(function(data, status, headers, config) {
							$scope.convert.push(data);
						});
						response.error(function(data, status, headers, config) {
							alert( "Exception details: " + JSON.stringify({data: data}));
						});	
			    	
			        
			    });
			  };
			$scope.gridOptions.columnDefs = [{
				name : 'quotationID',
				displayName : 'ID'
			},{
				name : 'name',
				displayName : 'Name'
			}, {
				name : 'address',
				displayName : 'Address'
			}, {
				name : 'branch',
				displayName : 'Branch'
			}, {
				name : 'nationality',
				displayName : 'Nationality'
			}, {
				name : 'mobileNo',
				displayName : 'Mobile'
			}];
			
			$http.get('covernoteGrid').success(
					function(data) {
						$scope.gridOptions.data = data;
						$timeout(function() {
							if ($scope.gridApi.selection.selectRow) {
								$scope.gridApi.selection
										.selectRow($scope.gridOptions.data[0]);
							}
						});
					});
		} ]);




app.controller('cncovernteGrid', [
	'$scope',
	'$http',
	'$log',
	'$timeout',
	'uiGridConstants',
	function($scope, $http, $log, $timeout, uiGridConstants) {
		
		$scope.gridOptions = {
				rowHeight : 30,
				multiSelect : false,
				showGridFooter : true,
				enableSelectAll : true,
				enableRowSelection : true,
				selectionRowHeaderWidth : 50,
				onRegisterApi: function(gridApi){
			          $scope.gridApi = gridApi;
			          gridApi.selection.on.rowSelectionChanged($scope,function(rows){
			            $scope.mySelections = gridApi.selection.getSelectedRows();
			            
			          });}
			};
			
			$scope.gridOptions.multiSelect = false; 
			
			$scope.cancelCovertnote = function(rowEntity) {
			    $scope.mySelectedRows = $scope.gridApi.selection.getSelectedRows();
			    alert(JSON.stringify( $scope.mySelectedRows));
			    var str =JSON.stringify( $scope.mySelectedRows);
			    var objArr = angular.fromJson(str).filter(function(item) {			    	
			    	alert(item.covernoteid);
			    	
			    	
			    	
			    	$scope.convert=[];
			    	//var formData = JSON.stringify( $scope.mySelectedRows);
			    	var formData = {
							"covernoteid":item.covernoteid
							
					};
						var response = $http.post('cancelCovernote', formData);
						response.success(function(data, status, headers, config) {
							$scope.convert.push(data);
						});
						response.error(function(data, status, headers, config) {
							alert( "Exception details: " + JSON.stringify({data: data}));
						});	
			    	
			        
			    });
			  };
		$scope.gridOptions.columnDefs = [ {
			name : 'covernoteid',
			displayName : 'Covernote Id'
		},{
			name : 'classId',
			displayName : 'Class Id'
		}, {
			name : 'IssueDate',
			displayName : 'Issue Date'
		}];

		$http.get('cncovernteGrid').success(
				function(data) {
					$scope.gridOptions.data = data;
					$timeout(function() {
						if ($scope.gridApi.selection.selectRow) {
							$scope.gridApi.selection
									.selectRow($scope.gridOptions.data[0]);
						}
					});
				});
	} ]);











app.controller('NamedPopup',[ '$scope', '$http','$window', function($scope, $http,$window) {
	
	$scope.user = [];
	
			$scope.user.namednewicno=$window.sessionStorage.getItem( 'namednewicno' );
			$scope.user.namedoldicno=$window.sessionStorage.getItem( 'namedoldicno' );
			$scope.user.namedage=$window.sessionStorage.getItem( 'namedage' );
			$scope.user.nameddriverexperience=$window.sessionStorage.getItem( 'nameddriverexperience' );
			$scope.user.namedgender=$window.sessionStorage.getItem( 'namedgender' );
			$scope.user.nameddrivername=$window.sessionStorage.getItem( 'nameddrivername' );
			$scope.user.nameddriverrelationship=$window.sessionStorage.getItem( 'nameddriverrelationship' );

		
		$scope.submit = function() {			
			$window.sessionStorage.setItem('namednewicno',$scope.user.namednewicno);
			$window.sessionStorage.setItem('namedoldicno',$scope.user.namedoldicno);				
			$window.sessionStorage.setItem('namedage',$scope.user.namedage);				
			$window.sessionStorage.setItem('nameddriverexperience',$scope.user.nameddriverexperience);				
			$window.sessionStorage.setItem('namedgender',$scope.user.namedgender);				
			$window.sessionStorage.setItem('nameddrivername',$scope.user.nameddrivername);				
			$window.sessionStorage.setItem('nameddriverrelationship',$scope.user.nameddriverrelationship);
			
		
			
			var formData = {
					"namednewicno" : $scope.user.namednewicno,
					"namedoldicno" : $scope.user.namedoldicno,
					"namedage" : $scope.user.namedage,
					"nameddriverexperience" : $scope.user.nameddriverexperience,
					"namedgender" : $scope.user.namedgender,
					"nameddrivername" : $scope.user.nameddrivername,
					"nameddriverrelationship" : $scope.user.nameddriverrelationship
			};
			var response = $http.post('saveNamedDrivers', formData);
			response.success(function(data, status, headers, config) {
				$scope.user.push(data);
				//alert("success");
			});
			response.error(function(data, status, headers, config) {
				alert( "Exception details: " + JSON.stringify({data: data}));
			});			
			//Empty list data after process
		$scope.user = [];
			
		};
		
	}]);



app.controller('MainCtrl', [
		'$scope',
		'$http',
		'$log',
		'$timeout',
		'uiGridConstants',
		function($scope, $http, $log, $timeout, uiGridConstants) {
			$scope.gridOptions = {
				rowHeight : 35,
				multiSelect : false,
				showGridFooter : true,
				enableSelectAll : true,
				enableFullRowSelection : true,
				selectionRowHeaderWidth : 35
			};

			$scope.gridOptions.columnDefs = [ {
				name : 'id'
			}, {
				name : 'name'
			}, {
				name : 'age',
				displayName : 'Age (not focusable)',
				allowCellFocus : false
			}, {
				name : 'address.city'
			} ];

			$http.get('resources/js/example.json').success(
					function(data) {
						$scope.gridOptions.data = data;
						$timeout(function() {
							if ($scope.gridApi.selection.selectRow) {
								$scope.gridApi.selection
										.selectRow($scope.gridOptions.data[0]);
							}
						});
					});
		} ]);

app.controller('extraCoverage', [
		'$scope',
		'$http',
		'$log',
		'$timeout',
		'uiGridConstants',
		function($scope, $http, $log, $timeout, uiGridConstants) {
			$scope.gridOptions = {
				rowHeight : 35,
				multiSelect : false,
				showGridFooter : true,
				enableSelectAll : true,
				enableFullRowSelection : true,
				selectionRowHeaderWidth : 35
			};

			$scope.gridOptions.columnDefs = [ {
				name : 'extracoverageid',
				displayName : 'ID',
			}, {
				name : 'extracoveragepremium',
				displayName : 'Extra Coverage Premium'
			}, {
				name : 'suminsured',
				displayName : 'Sum Insured'
			}, {
				name : 'extracoveragerate',
				displayName : 'Extra Coverage Rate'
			}, {
				name : 'cartdays',
				displayName : 'Cart Days'
			}, {
				name : 'cartamount',
				displayName : 'Cart Amount'
			} ];

			$http.get('extraCoverageGrid').success(
					function(data) {
						$scope.gridOptions.data = data;
						$timeout(function() {
							if ($scope.gridApi.selection.selectRow) {
								$scope.gridApi.selection
										.selectRow($scope.gridOptions.data[0]);
							}
						});
					});
		} ]);

app
		.controller(
				'NamedDrivers',
				[
						'$scope',
						'$http',
						'$log',
						'$timeout',
						'uiGridConstants',
						function($scope, $http, $log, $timeout, uiGridConstants) {
							$scope.gridOptions = {
								cellEditableCondition : true,
								enableCellEditOnFocus : true,
								expandableRowTemplate : '<div style="padding:5px;"><div ui-grid="row.entity.subGridOptions[0]" ui-grid-edit  ui-grid-row-edit ui-grid-selection style="height:340px;display:inline-block;"></div></div>',
								expandableRowScope : {
									subGridVariable : 'subGridScopeVariable'
								}

							/*
							 * rowHeight : 25, showGridFooter : true,
							 * enableSelectAll : true, selectionRowHeaderWidth :
							 * 35, enableCellSelection:true,
							 * enableCellEditOnFocus:true, editRow:true
							 */
							};
							$scope.gridOptions.editRow = true;
							$scope.gridOptions.excessRows = 5;
							$scope.gridOptions.columnDefs = [ {
								name : 'nameddriversno',
								displayName : 'S No',
								enableCellEdit : true
							}, {
								name : 'namednewicno',
								displayName : 'New IC No',
								enableCellEdit : true
							}, {
								name : 'nameddrivername',
								displayName : 'Name',
								allowCellFocus : false,
								enableCellEdit : true
							}, {
								name : 'namedoldicno',
								displayName : 'Old IC No',
								enableCellEdit : true,
								type : 'number'
							}, {
								name : 'nameddriverexperience',
								displayName : 'Experience',
								enableCellEdit : true
							}, {
								name : 'namedgender',
								displayName : 'Gender',
								enableCellEdit : true,
								editDropDownOptionsArray : [ {
									id : 'M',
									Gender : 'male'
								}, {
									id : 'F',
									Gender : 'Female'
								} ]
							}, {
								name : 'namedage',
								displayName : 'Age',
								enableCellEdit : true,
								type : 'number'
							} ];
							$scope.addNewRow = function() {
								alert("Dummy");
								var n = $scope.gridOptions.data.length + 1;
								$scope.gridOptions.data.push({
									nameddriversno : "" + n,
									namednewicno : "" + n,
									nameddrivername : '',
									namedoldicno : '',
									nameddriverexperience : '',
									namedgender : '',
									namedage : ''
								});
							};

							$http
									.get('namedDrivers')
									.success(
											function(data) {
												$scope.gridOptions.data = data;
												$timeout(function() {
													if ($scope.gridApi.selection.selectRow) {
														$scope.gridApi.selection
																.selectRow($scope.gridOptions.data[0]);
													}
												});
											});

						} ]);

app.controller('testselect', [
		'$scope',
		'$http',
		'$log',
		'$timeout',
		'uiGridConstants',
		function($scope, $http, $log, $timeout, uiGridConstants) {
			$scope.gridOptions = {
				rowHeight : 35,
				multiSelect : false,
				showGridFooter : true,
				enableSelectAll : true,
				enableFullRowSelection : true,
				selectionRowHeaderWidth : 35
			};

			$scope.gridOptions.columnDefs = [ {
				name : 'id'
			}, {
				name : 'name'
			}, {
				name : 'age',
				displayName : 'Age (not focusable)',
				allowCellFocus : false
			}, {
				name : 'address.city'
			} ];

			$http.get('resources/js/example.json').success(
					function(data) {
						$scope.gridOptions.data = data;
						$timeout(function() {
							if ($scope.gridApi.selection.selectRow) {
								$scope.gridApi.selection
										.selectRow($scope.gridOptions.data[0]);
							}
						});
					});
		} ]);

app.controller('covernoteGrid', [
		'$scope',
		'$http',
		'$log',
		'$timeout',
		'uiGridConstants',
		function($scope, $http, $log, $timeout, uiGridConstants) {
			$scope.gridOptions = {
				rowHeight : 25,
				multiSelect : false,
				showGridFooter : true,
				enableSelectAll : true,
				enableFullRowSelection : true,
				selectionRowHeaderWidth : 35
			};

			$scope.gridOptions.columnDefs = [ {
				name : 'quotationID',
				displayName : 'ID'
			}, {
				name : 'sourceType',
				displayName : 'Source Type'
			}, {
				name : 'contactType',
				displayName : 'Contact Type'
			}, {
				name : 'postCode',
				displayName : 'Post Code'
			}, {
				name : 'address',
				displayName : 'Address'
			}, {
				name : 'branch',
				displayName : 'Branch'
			}, {
				name : 'nationality',
				displayName : 'Nationality'
			}, {
				name : 'mobileNo',
				displayName : 'Mobile'
			} ];

			$http.get('covernoteGrid').success(
					function(data) {
						$scope.gridOptions.data = data;
						$timeout(function() {
							if ($scope.gridApi.selection.selectRow) {
								$scope.gridApi.selection
										.selectRow($scope.gridOptions.data[0]);
							}
						});
					});
		} ]);


app.controller('endorsementGrid', [
	'$scope',
	'$http',
	'$log',
	'$timeout',
	'uiGridConstants',
	function($scope, $http, $log, $timeout,$uiGridConstants) {
		 $scope.gridOptions = {  };
		    $scope.mySelections = [];
		    //alert("sdcfvbn");
		$scope.gridOptions = {
			rowHeight : 30,
			multiSelect : false,
			showGridFooter : true,
			enableSelectAll : true,
			enableRowSelection : true,
			selectionRowHeaderWidth : 50,
			onRegisterApi: function(gridApi){
		          $scope.gridApi = gridApi;
		          gridApi.selection.on.rowSelectionChanged($scope,function(rows){
		            $scope.mySelections = gridApi.selection.getSelectedRows();
		            
		          });}
		};

		$scope.gridOptions.columnDefs = [ {
			name : 'quotationID',
			displayName : 'quotationID'
		}, {
			name : 'sourceType',
			displayName : 'Source Type'
		}, {
			name : 'contactType',
			displayName : 'Contact Type'
		}, {
			name : 'postCode',
			displayName : 'Post Code'
		}, {
			name : 'address',
			displayName : 'Address'
		}, {
			name : 'branch',
			displayName : 'Branch'
		}, {
			name : 'nationality',
			displayName : 'Nationality'
		}, {
			name : 'mobileNo',
			displayName : 'Mobile'
		} ];
		$scope.gridOptions.multiSelect = false;
		  
		  $scope.getSelectedRows = function(rowEntity) {
		    $scope.mySelectedRows = $scope.gridApi.selection.getSelectedRows();
		    
		    alert(JSON.stringify( $scope.mySelectedRows));
		    //alert($scope.mySelectedRows.item);
		    var str =JSON.stringify( $scope.mySelectedRows);
		    var objArr = angular.fromJson(str).filter(function(item) {
		    	alert(item.contactType);
		    	var value = item.contactType;
		        alert("ulla ");
		        $('#input').val(value);
		        $('#myModal').modal('hide');
		    	/*$.ajax({
		    		url: "selectedRows",
		    		type: "post",
		    			data: {"json ": JSON.stringify(item)},
		    	contentTye:"application/json",
		    	success:function(result){			    		
		    	}		    	
		    	})*/
		        if (item.key === "directorname") {			        	
		            //return true;
		        }
		    });
		    
		    
		    
		    /*alert(angular.element(document.querySelector("#endorParent")));
		    var parentScope = angular.element(document.querySelector("#endorParent"));
		    parentScope.qt.previousPolicy = rowEntity.quotationId;
	    	alert(parentScope.qt.previousPolicy);
		    */
		    
		    
		    
		    //alert(angular.element($("#endorParent")).scope() );
		   /* if(angular.element(document.querySelector("#endorParent")) != undefined){
		    	var parentScope = angular.element(document.querySelector("#endorParent"));
		    	parentScope.qt.previousPolicy = rowEntity.sourceType;
		    	alert(parentScope.qt.previousPolicy);
		    	alert("asdfghjkl");
		    }*/
		  };
	
		   /*var elems =$element.find('div') //returns all the div's in the $elements
angular.forEach(elems,function(v,k)){
if(angular.element(v).hasClass('class-name')){
 console.log(angular.element(v));
}}

		    
		    * if(angular.element($("#endorParent")).scope() != undefined){
                var parentScope = angular.element($("#endorParent")).scope();
                var sourceTypeGroupId = parentScope.qt.contactType;
                if(parentScope!=null && parentScope!=undefined){
                    parentScope.qt.contactType = rowEntity.contactTypeId;
                    parentScope.motorclientdet.sourceTypeId = rowEntity.sourceTypeId;
                    parentScope.motorclientdet.branchName = rowEntity.branchName;
                    parentScope.motorclientdet.sourceTypeGroupId = sourceTypeGroupId;
                }
self.close(this);
		   }*/

		    //var str =JSON.stringify( $scope.mySelectedRows);
		    //var objArr = angular.fromJson(str).filter(function(item) {
		    	//alert(get.contactType);			    	
		    	/*$.ajax({
		    		url: "selectedRows",
		    		type: "post",
		    			data: {"json ": JSON.stringify(item)},
		    	contentTye:"application/json",
		    	success:function(result){			    		
		    	}		    	
		    	})
		        if (item.key === "directorname") {			        	
		            return true;
		        }*/
		    //});
	
		  
		  
	//};

		$http.get('covernoteGrid').success(					
				function(data) {
					$scope.gridOptions.data = data;
					$scope.mySelectedRows = $scope.gridApi.selection.getSelectedRows();
					$timeout(function() {
						if ($scope.gridApi.selection.selectRow) {
							$scope.gridApi.selection
									.selectRow($scope.gridOptions.data[0]);
						}
					});
				});
		 $scope.info = {};

		    $scope.toggleMultiSelect = function() {
		      $scope.gridApi.selection.setMultiSelect(!$scope.gridApi.grid.options.multiSelect);
		    };

		    $scope.toggleRow1 = function() {
		      $scope.gridApi.selection.toggleRowSelection($scope.gridOptions.data[0]);
		    };
		    
		    $scope.gridOptions.onRegisterApi = function(gridApi){
		      //set gridApi on scope
		      $scope.gridApi = gridApi;
		      
		      
		    };
		}]);




var app = angular.module('popup', [ "ngStorage" ])
app.controller('Popup', function($scope, $localStorage, $window) {
	$scope.Save = function() {
		$localStorage.LocalMessage = $scope.Name + $scope.Address;

		alert("dfghjk");
		$window.open('http://localhost:1950/WebSite12/testpopup.html',
				'testpopup', 'width=500,height=400');
	}

});