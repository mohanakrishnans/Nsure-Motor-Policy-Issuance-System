var app = angular.module('app', [ 'ngTouch', 'ui.grid', 'ui.grid.selection' ]);

/*
 * app.config(['$routeProvider', function($routeProvider) { $routeProvider
 * .when('saveNamedDrivers', { templateUrl: CONTEXT_PATH+'saveNamedDrivers',
 * controller : "saveNamedDrivers" })
 * .otherwise({redirectTo:'/items/computers'}); }]);
 */
app.controller('cnoptionGrid', ['$scope', '$http', '$log', '$timeout', 'uiGridConstants',
	 function($scope, $http, $log, $timeout, uiGridConstants) {
	  $scope.gridOptions = {
	    rowHeight: 25,
	    multiSelect: false,
	    showGridFooter: true,
	    enableSelectAll: true,
	    enableFullRowSelection: true,
	    selectionRowHeaderWidth: 35    
	  };

	  $scope.gridOptions.columnDefs = [{
		    name: 'classId',
		    	displayName:'Class Id'
		  }, {
		    name: 'IssueDate',
		    	displayName:'Issue Date'
		  }/*, {
		    name: 'contactType',
		    displayName:'Contact Type'
		  }, {
		    name: 'postCode',
		    	displayName:'Post Code'
		  }, {
		    name: 'address',
		    displayName:'Address'
		  }, {
		    name: 'branch',
		    displayName:'Branch'
		  }, {
		    name: 'nationality',
		    displayName: 'Nationality'
		  }, {
		    name: 'mobileNo',
		    displayName:'Mobile'
		  }*/];
		  
		  $http.get('cnoptionGrid').success(
			function(data) {
		      $scope.gridOptions.data = data;
		      $timeout(function() {
		        if ($scope.gridApi.selection.selectRow) {
		          $scope.gridApi.selection.selectRow($scope.gridOptions.data[0]);
		        }
		      });
		    });	  
		}]);
app.controller('NamedPopup', [
		'$scope',
		'$http',
		'$log',
		'$timeout',
		function($scope, $http, $log, $timeout) {
			var self = this;
			 
			
			 
			
			
			// var url = 'http://localhost:8080/RHBI/saveNamedDrivers';
			var self=this;
			$scope.user = {

			};
			
			/*$scope.submit = function(formObject){
				alert(JSON.stringify($scope.user));
				$scope.namedDriverSave(formObject);
			}*/
			/*self.save = function(formObject){
		        //angular.element(document.getElementById("namedDrivers")).scope().checkSessionOnSubmit().then(function(response){
		        var status = true;
		        if(status){
		                jConfirm("Do you want to save Profile?","Warning",function(res){
		                    if(res){
		                        $http.post(CONTEXT_PATH+'saveNamedDrivers',self.user).then(function(response){
		                            if(response.data==1){
		                                swal('Profile Details Saved Successfully.');
		                                self.user={};
		                            }else
		                                swal("Error while saving Profile. Please try again later.");
		                        });    
		                    }
		                });
		            }
		        //});
			}*/
			$scope.submit = function(formObject) {
				
				alert(JSON.stringify($scope.user));
				
				var response = $http.post(CONTEXT_PATH + 'saveNamedDrivers',$scope.user);
				response.success(function (data) {
				    alert("success");
				    alert(data);
				});
				response.error(function (data) {
				    alert("error");
				    alert(data);
				});
				
				/*$http.post(CONTEXT_PATH + 'saveNamedDrivers', JSON.stringify(data)).success(function(response) {
					$scope.message = data;
				});*/
				
				 /*$http.post(CONTEXT_PATH+'saveNamedDrivers',self.user).then(function(response){
					 alert("Save successfully");
				 });*/
				
				/*$http({
				    method: 'POST',
				    url: CONTEXT_PATH + 'saveNamedDrivers',
				    headers: {
				        'Content-Type': 'application/json', 
				        'Accept': 'application/json'
				    },
				    data:$scope.user
				})*/
				
				/*
				 * $http({ method : GET, url : CONTEXT_PATH +
				 * 'saveNamedDrivers', data : angular.toJson($scope.user),
				 * headers : { 'Content-Type' : 'application/json' }
				 * 
				 * }).then( _success, _error );
				 */
				alert("mohan1");
            };
				
				
				/*
				 * $http.post(CONTEXT_PATH + 'saveNamedDrivers', data)
				 * .success(function(data, status, headers, config) {
				 * $scope.message = data; })$scope.$apply(function()
				 * .error(function(data, status, headers, config) { alert(
				 * "failure message: " + JSON.stringify({data: data})); });
				 */
			// }
			
			
			/*
			 * $scope.submit = function(formObject) {
			 * alert(JSON.stringify($scope.user)); self.namedDriverSave(); };
			 */

			// self.submit = function(formObject) {
			// alert(JSON.stringify(formObject));
				/*
				 * return $http .POST(CONTEXT_PATH + 'saveNamedDrivers',
				 * formObject) .then(function(response) { return response; });
				 */
				// self.namedDriverSave();
			// };

		/*
		 * self.namedDriverSave = function(formObject) { var resultTrans = {};
		 * angular.extend(resultTrans, self.user, formObject);
		 * httpPostService.httpPostObj(CONTEXT_PATH + 'saveNamedDrivers',
		 * 'QuotationController', '~', resultTrans, 'json').then( function(data) {
		 * alert("test"); // self.user = data; }); }
		 */

			/*
			 * $http({ method : 'POST', url : CONTEXT_PATH + 'saveNamedDrivers',
			 * data : user, headers : { 'Content-Type' : 'application/json' },
			 * transformRequest : function(data) { self.user = data; }
			 * }).success(function(data, status, headers, config) {
			 * $scope.postStatus = 'success: ' + data; }).error(function(data,
			 * status, headers, config) { $scope.postStatus = 'error: ' +
			 * status; });
			 */

		} ]);

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

var app = angular.module('popup', [ "ngStorage" ])
app.controller('Popup', function($scope, $localStorage, $window) {
	$scope.Save = function() {
		$localStorage.LocalMessage = $scope.Name + $scope.Address;

		alert("dfghjk");
		$window.open('http://localhost:1950/WebSite12/testpopup.html',
				'testpopup', 'width=500,height=400');
	}

});