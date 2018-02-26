var agentmainmodule = angular.module('mainmodule').config([
				'$stateProvider',
				'$urlRouterProvider',
				function($stateProvider, $urlRouterProvider) {
					
					
					$stateProvider.state('nbmotorclient', {
						url : '/nbmotorclient',
						templateUrl : CONTEXT_PATH+'nsurebase/transaction/nbmotorclient', // For IE9, We need to give CONTEXT_PATH before every URL. Else, it won't work!
						controller : 'motorTransactionController',
						params	: {
							formName : 'Motor New Business', 
							menuId : 0
						},
						resolve: {
							 deps: ['$ocLazyLoad', function($ocLazyLoad) {
								 return $ocLazyLoad.load('motor');
							 }]
						}
					});

					$stateProvider.state('quotation', {
						url : '/quotation',
						templateUrl : CONTEXT_PATH+'quotation/test', // For IE9, We need to give CONTEXT_PATH before every URL. Else, it won't work!
						controller : 'QuotationController',
						params	: {
							formName : 'Quotation', 
							menuId : 0
						},
						resolve: {
							 deps: ['$ocLazyLoad', function($ocLazyLoad) {
								 return $ocLazyLoad.load('quotation');
							 }]
						}
					});
									
}]);