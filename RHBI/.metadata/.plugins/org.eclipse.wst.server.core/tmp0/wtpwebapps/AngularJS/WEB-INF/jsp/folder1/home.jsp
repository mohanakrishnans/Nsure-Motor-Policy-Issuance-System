 <div style="padding-left:130px;padding-right:200px;">
   <h1>Hello, world!</h1>
  <p>This is simple angular ng-view and ng-route tutorial to demonstrate single page web app development.</p>
  <p>
    This is executed because of this code.
    <pre>
      <code>
        .when('/',{
              templateURl: 'home'
        })
      </code>
    </pre>
  </p>
  <input type="text" id="rs_id" ng-model="rs.id" placeholder="Enter Test ID" required min="2">
  <button ui-sref="about" class="btn btn-info" ng-click="saveFirst()">Next</button>
</div>
