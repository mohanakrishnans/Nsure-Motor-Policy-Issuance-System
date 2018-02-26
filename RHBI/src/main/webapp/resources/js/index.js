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