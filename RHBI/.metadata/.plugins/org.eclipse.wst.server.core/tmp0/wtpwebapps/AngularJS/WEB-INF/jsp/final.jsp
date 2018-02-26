<div style="padding-left:130px;padding-right:200px;" ng-controller="mainController">
<h1>Final Submission page.</h1>
 <p>This is simple angular ng-view and ng-route tutorial to demonstrate single page web app development.</p>
 <p>
   This is executed because of this code.
   <pre>
     <code>
       .when('/final',{
             templateURl: 'final'
       })
     </code>
   </pre>
 </p>
 <p>
  	<button ui-sref="about" class="btn btn-info" id="backButton1" ng-click="setValues()">Back</button>&nbsp;&nbsp;&nbsp;
  	<input type="text" id="rs_email" ng-model="rs.email" placeholder="Enter E-Mail" required min="2">
  	<button class="btn btn-warning" ng-click="saveByService(rs)">Save</button>
  </p>
<table class="table table-bordered table-striped" ng-show="lister.length > 0">
	<thead>
		<tr>
			<th style="text-align: center; width: 25px;">Id</th>
 			<th style="text-align: center;">Name</th>
 			<th style="text-align: center;">E-Mail</th>
		</tr>
	</thead>
	<tbody>
		<tr ng-repeat="item in lister | orderBy:predicate">
			<td style="text-align: center;">{{item.id}}</td>
			<td>{{item.name}}</td>
			<td>{{item.email}}</td>
		</tr>
	</tbody>
</table>
 </div>
