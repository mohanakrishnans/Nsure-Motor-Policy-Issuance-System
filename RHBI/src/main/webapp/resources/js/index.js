var app = angular.module('app', ['ngTouch', 'ui.grid', 'ui.grid.selection']);

app.controller('MainCtrl', ['$scope', '$http', '$log', '$timeout', 'uiGridConstants',
 function($scope, $http, $log, $timeout, uiGridConstants) {
  $scope.gridOptions = {
    rowHeight: 35,
    multiSelect: false,
    showGridFooter: true,
    enableSelectAll: true,
    enableFullRowSelection: true,
    selectionRowHeaderWidth: 35    
  };

  $scope.gridOptions.columnDefs = [{
    name: 'id'
  }, {
    name: 'name'
  }, {
    name: 'age',
    displayName: 'Age (not focusable)',
    allowCellFocus: false
  }, {
    name: 'address.city'
  }];

  $http.get('resources/js/example.json')
    .success(function(data) {
      $scope.gridOptions.data = data;
      $timeout(function() {
        if ($scope.gridApi.selection.selectRow) {
          $scope.gridApi.selection.selectRow($scope.gridOptions.data[0]);
        }
      });
    });
}]);

app.controller('NamedDrivers', ['$scope', '$http', '$log', '$timeout', 'uiGridConstants',
	 function($scope, $http, $log, $timeout, uiGridConstants) {
	  $scope.gridOptions = {
		rowHeight: 25,
	    multiSelect: false,
	    showGridFooter: true,
	    enableSelectAll: true,
	    enableFullRowSelection: true,
	    selectionRowHeaderWidth: 35,
	   
	  };
	  $scope.gridOptions.excessRows=5;
	  $scope.gridOptions.columnDefs = [{
	    name: 'nameddriversno',
	    displayName :'S No'	    	
	  }, {
	    name: 'namednewicno',
	    displayName :'New IC No'	  
	  }, {
	    name: 'nameddrivername',
	    displayName :'Name'	  ,
	    allowCellFocus: false
	  }, {
	    name: 'namedoldicno',
	    displayName :'Old IC No'	  
	  }, {
	    name: 'nameddriverexperience',
	    displayName :'Experience'	  
	  }, {
	    name: 'namedgender',
	    displayName :'Gender'	  
	  }, {
	    name: 'namedage',
	    displayName :'Age'	  
	  }, {
	    name: 'nameddriverrelationship',
	    displayName :'RelationShip'	  
	  }];

	  $http.get('namedDrivers')
	    .success(function(data) {
	      $scope.gridOptions.data = data;
	      $timeout(function() {
	        if ($scope.gridApi.selection.selectRow) {
	          $scope.gridApi.selection.selectRow($scope.gridOptions.data[0]);
	        }
	      });
	    });
	}]);


app.controller('testselect', ['$scope', '$http', '$log', '$timeout', 'uiGridConstants',
 function($scope, $http, $log, $timeout, uiGridConstants) {
  $scope.gridOptions = {
    rowHeight: 35,
    multiSelect: false,
    showGridFooter: true,
    enableSelectAll: true,
    enableFullRowSelection: true,
    selectionRowHeaderWidth: 35    
  };

  $scope.gridOptions.columnDefs = [{
    name: 'id'
  }, {
    name: 'name'
  }, {
    name: 'age',
    displayName: 'Age (not focusable)',
    allowCellFocus: false
  }, {
    name: 'address.city'
  }];

  $http.get('resources/js/example.json')
    .success(function(data) {
      $scope.gridOptions.data = data;
      $timeout(function() {
        if ($scope.gridApi.selection.selectRow) {
          $scope.gridApi.selection.selectRow($scope.gridOptions.data[0]);
        }
      });
    });
}]);

app.controller('covernoteGrid', ['$scope', '$http', '$log', '$timeout', 'uiGridConstants',
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
	    name: 'quotationID',
	    	displayName:'ID'
	  }, {
	    name: 'sourceType',
	    	displayName:'Source Type'
	  }, {
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
	  }];
	  
	  $http.get('covernoteGrid').success(
		function(data) {
	      $scope.gridOptions.data = data;
	      $timeout(function() {
	        if ($scope.gridApi.selection.selectRow) {
	          $scope.gridApi.selection.selectRow($scope.gridOptions.data[0]);
	        }
	      });
	    });	  
	}]);

var app = angular.module('popup', ["ngStorage"])  
app.controller('Popup', function ($scope, $localStorage, $window) {  
    $scope.Save = function () {  
        $localStorage.LocalMessage = $scope.Name + $scope.Address;  

        alert("dfghjk");
        $window.open('http://localhost:1950/WebSite12/testpopup.html', 'testpopup', 'width=500,height=400');  
    }  

});  