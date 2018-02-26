var currentState = '', previousState = '';
var app = angular.module('single-page-app', [ 'ui.router', 'ngStorage', 'ngRoute' ]);
app.config(function($stateProvider, $urlRouterProvider) {
	$urlRouterProvider.otherwise('/');
	$stateProvider
	.state('home', {
		url : '/',
		templateUrl : 'angular/home',
		controller : 'cfgController'
	})
	.state('about', {
		url : '/about',
		templateUrl : 'angular/about',
		controller : 'aboutController'
	})
	.state('final', {
		url : '/final',
		templateUrl : 'angular/final',
		controller : 'aboutController'
	})
	.state('second', {
		url : '/second',
		templateUrl : 'angular/home1',
		controller : 'aboutController'
	});
});
app.controller('aboutController', function($scope, $rootScope, $http, $window, FormService) {
	
	/*$rootScope.$on('$stateChangeStart', 
			function(event, toState, toParams, fromState, fromParams){         
			    // check if user is navigating to anypage other than login, if so check for token, if token is not present redirect to login page
			console.log('Routing Info for Hacking : AboutController ::: Loaded ->'+fromState.name+' from -> '+toState.name+' page');
			currentState = toState.name;
			previousState = fromState.name;
			if(currentState=='final')
				backButtonOverride('backButton1');
	});*/
	$scope.saveByService = function(rs) {
		rs.id = $window.localStorage.id;
		rs.name = $window.localStorage.name;
		FormService.saveTest(rs).then(function(rsList) {
			$scope.lister = rsList;
			alert('Success!!!');
		});
	};
	$scope.saveAbout = function() {
		//backButtonOverride('backButton');
		$window.localStorage.name = $scope.rs.name;
	};
	//backButtonOverride('backButton');
});

app.controller('cfgController', function($scope, $rootScope, $window, $http, PostForm, FormService) {
	/*$rootScope.$on('$stateChangeStart', 
			function(event, toState, toParams, fromState, fromParams){         
			    // check if user is navigating to anypage other than login, if so check for token, if token is not present redirect to login page
				console.log('Routing Info for Hacking : CfgController ::: Loaded ->'+fromState.name+' from -> '+toState.name+' page');
				currentState = toState.name;
				previousState = fromState.name;
	});*/
	$scope.message = "Hello world";
	$scope.rs;
	$scope.saveFirst = function() {
		$window.localStorage.id = $scope.rs.id;
	};
	/*$scope.saveByService = function(rs) {
		rs.id = $window.localStorage.id;
		FormService.saveTest(rs).then(function(rsList) {
			$scope.lister = rsList;
			alert('Success!!!');
		});
	};*/
	$scope.saveByFactory = function(rs) {
		PostForm.postUserDetails(rs).then(function(rsList) {
			$scope.lister = rsList;
			alert('Success!!!');
		});
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
// Service Layer
app.service('FormService', function($http) {
	this.saveTest = function(rs) {
		return $http.post('angular/form', rs).then(function(response) {
			return response.data;
		});
	};
});
app.run(function($rootScope, $route, $location){
	   //Bind the `$locationChangeSuccess` event on the rootScope, so that we dont need to 
	   //bind in induvidual controllers.

	   $rootScope.$on('$locationChangeSuccess', function() {
	        $rootScope.actualLocation = $location.path();
	    });        

	   $rootScope.$watch(function () {return $location.path()}, function (newLocation, oldLocation) {
	        if($rootScope.actualLocation === newLocation) {
	            //alert('Why did you use history back?');
	            window.history.forward();
	        }
	    });
});

function backButtonOverride(idToTrigger){
	console.log('Override this!!!'+idToTrigger);
	$(document).mousedown(function () {
        clearTimeout(window.userInteractionTimeout);
        window.userInteractionInHTMLArea = true;
        window.userInteractionTimeout = setTimeout(function () {
            window.userInteractionInHTMLArea = false;
        }, 500);
    });

	$(document).keydown(function () {
        clearTimeout(window.userInteractionTimeout);
        window.userInteractionInHTMLArea = true;
        window.userInteractionTimeout = setTimeout(function () {
            window.userInteractionInHTMLArea = false;
        }, 500);
    });
	
	if (window.history && window.history.pushState) {
        $(window).on('popstate', function () {
            if (!window.userInteractionInHTMLArea) {
				console.log('Beat this!!');
				//window.history.forward();
				//window.history.go(1);
				$('#'+idToTrigger).trigger('click');
            }
            if(window.onBrowserHistoryButtonClicked ){
            	window.onBrowserHistoryButtonClicked ();
            }
        });
    }
	/*$(document).mousedown(function () {
        clearTimeout(window.userInteractionTimeout);
        window.userInteractionInHTMLArea = true;
        window.userInteractionTimeout = setTimeout(function () {
            window.userInteractionInHTMLArea = false;
        }, 500);
    });

	$(document).keydown(function () {
        clearTimeout(window.userInteractionTimeout);
        window.userInteractionInHTMLArea = true;
        window.userInteractionTimeout = setTimeout(function () {
            window.userInteractionInHTMLArea = false;
        }, 500);
    });

    if (window.history && window.history.pushState) {
        $(window).on('popstate', function () {
            if (!window.userInteractionInHTMLArea) {
				//window.history.forward();
				window.history.go(1);
            }
            if(window.onBrowserHistoryButtonClicked ){
            	window.onBrowserHistoryButtonClicked ();
            }
        });
    }*/
}