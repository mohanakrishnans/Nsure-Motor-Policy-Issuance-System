<div style="padding-left:130px;padding-right:200px;" ng-controller="mainController">
<h1>About us page.</h1>
 <p>This is simple angular ng-view and ng-route tutorial to demonstrate single page web app development.</p>
 <p>
   This is executed because of this code.
   <pre>
     <code>
       .when('/about',{
             templateURl: 'about'
       })
     </code>
   </pre>
 </p>
 <p>
  	<button ui-sref="home" class="btn btn-info" id="backButton" ng-click="setValues()">Back</button>&nbsp;&nbsp;&nbsp;
  	<input type="text" id="rs_name" ng-model="rs.name" placeholder="Enter Test Name" required min="2">
  	<button class="btn btn-warning" ui-sref="final" ng-click="saveAbout()">Next</button>
  </p>
 </div>
