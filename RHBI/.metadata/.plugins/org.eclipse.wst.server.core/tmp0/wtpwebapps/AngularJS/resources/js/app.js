var currentState = '', previousState = '';
var app = angular.module('single-page-app', [ 'ui.router', 'ngStorage',
		'ngRoute', 'ui.grid', 'ui.grid.pagination', 'ngSanitize', 'LocalStorageModule' ]);
app.config(function($stateProvider, $urlRouterProvider, localStorageServiceProvider) {
	localStorageServiceProvider.setPrefix('single-page-app');
	$urlRouterProvider.otherwise('/');
	$stateProvider.state('home', {
		url : '/',
		templateUrl : 'angular/home',
		controller : 'mainController'
	}).state('about', {
		url : '/about',
		templateUrl : 'angular/about',
		controller : 'mainController'
	}).state('final', {
		url : '/final',
		templateUrl : 'angular/final',
		controller : 'mainController'
	}).state('second', {
		url : '/second',
		templateUrl : 'angular/home1',
		controller : 'mainController'
	});
});

app.controller('cfgController', function($scope, $sanitize, $rootScope, $window, $http) {
	var htmlContent = '<strong>This HTML is sanitized</strong>';
	
	$scope.secureHtml = $sanitize(htmlContent);
	
	var paginationOptions = {
		pageNumber : 1,
		pageSize : 25,
		sort : null
	};
	$scope.gridOptions = {
		paginationPageSizes : [ 25, 50, 75 ],
		paginationPageSize : 25,
		useExternalPagination : true,
		useExternalSorting : true,
		columnDefs : [ {
			name : 'firstName'
		}, {
			name : 'lastName',
			enableSorting : true
		}, {
			name : 'company',
			enableSorting : false
		}, {
			name : 'employed',
			enableSorting : false
		}, {
			name : 'mailId',
			enableSorting : false
		}, ],
		onRegisterApi : function(gridApi) {
			$scope.gridApi = gridApi;
			$scope.gridApi.core.on.sortChanged($scope, function(grid,
					sortColumns) {
				if (sortColumns.length == 0) {
					paginationOptions.sort = null;
				} else {
					paginationOptions.sort = sortColumns[0].sort.direction;
				}
				getPage();
			});
			/* On every pagination event, this method gets called.
			 * We can use this to get data from server on-demand instead of
			 * loading it at one go!
			 * */
			gridApi.pagination.on.paginationChanged($scope, function(newPage,
					pageSize) {
				console.log('Its on!!!');
				paginationOptions.pageNumber = newPage;
				paginationOptions.pageSize = pageSize;
				getPage();
			});
		}
	};

	var getPage = function() {

		$http.get("angular/grid").success(
				function(data) {
					$scope.gridOptions.totalItems = 100;
					var firstRow = (paginationOptions.pageNumber - 1)
							* paginationOptions.pageSize;
					$scope.gridOptions.data = data.slice(firstRow, firstRow
							+ paginationOptions.pageSize);
				});
	};
	getPage();

	$scope.gridOptions1 = {
		paginationPageSizes : [ 10, 30, 50 ],
		paginationPageSize : 10,
		data : $scope.myData
	};
});

app.controller('mainController', function($scope, $window, $http, localStorageService, FormService) {
	
	$scope.rs = localStorageService.get("rs");
	$scope.message = "Hello world";
	$scope.saveFirst = function() {
		console.log('Inside saveFirst');
		localStorageService.set("rs", $scope.rs);
	};

	/*$scope.saveByFactory = function(rs) {
		PostForm.postUserDetails(rs).then(function(rsList) {
			$scope.lister = rsList;
			alert('Success!!!');
		});
	};*/

	$scope.saveByService = function(rs) {
		localStorageService.set("rs", $scope.rs);
		FormService.saveTest(rs).then(function(rsList) {
			$scope.lister = rsList;
			alert('Success!!!');
		});
	};

	$scope.saveAbout = function() {
		console.log('Inside saveAbout');
		localStorageService.set("rs", $scope.rs);
	};
	
	$scope.setValues = function() {
		console.log('Inside setValues');
		localStorageService.set("rs", $scope.rs);
	};
	
});
// Factory Method
app.factory('PostForm', function($http) {
	var PostForm = {};
	PostForm.postUserDetails = function(rs) {
		var self = this;
		return $http.post('angular/form', rs).then(function(response) {
			return response.data;
		});
	};
	return PostForm;
});
//Scope Service Method
app.service('SharedDataService', function ($window) {
    var rs = {
       id: '',
       name: '',
       email: ''
   };
   return rs;
});
// Service Layer
app.service('FormService', function($http) {
	this.saveTest = function(rs) {
		return $http.post('angular/form', rs).then(function(response) {
			return response.data;
		});
	};
});
app.run(function($rootScope, $route, $location) {
	// Bind the `$locationChangeSuccess` event on the rootScope, so that we dont
	// need to
	// bind in induvidual controllers.
	$rootScope.$on('$locationChangeSuccess', function() {
		$rootScope.actualLocation = $location.path();
	});

	$rootScope.$watch(function() {
		return $location.path()
	}, function(newLocation, oldLocation) {
		//console.log('Called :: ' + $rootScope.actualLocation + " & " + newLocation);
		$rootScope.location = $location;
		if ($rootScope.actualLocation === newLocation) {
			window.history.forward();
		} else if (typeof $rootScope.actualLocation == 'undefined') {
			//console.log('Current URL => ' + window.location.href);
			window.history.go(1);
		}
	});
});

/*app.controller('aboutController', function($scope, $rootScope, $http, $window, FormService) {
$scope.saveByService = function(rs) {
	rs.id = $window.localStorage.id;
	rs.name = $window.localStorage.name;
	FormService.saveTest(rs).then(function(rsList) {
		$scope.lister = rsList;
		alert('Success!!!');
	});
};
$scope.saveAbout = function() {
	$window.localStorage.name = $scope.rs.name;
};
});*/