<!DOCTYPE html>

<html ng-app="myApp">
<head>
    <meta name="viewport" content="width=device-width" />
    <script src="~/Scripts/jquery-3.1.1.js"></script>
    <script src="~/Scripts/angular.js"></script>
    <script src="~/Scripts/ngStorage.js"></script>
    <script src="~/Scripts/bootstrap.js"></script>

    <title>Index</title>
</head>
<body ng-controller="myController">
    <h1 ng-bind="title"></h1>
    <div>
         Message: {{message}}
        <br/>
        <button ng-click="loadData()">Load Message</button>
        <button ng-click="showData()">Show Message</button>
    </div>

    <div>
        <table class="table">
            <tr>
                <th>Name</th>
                <th>Sex</th>
            </tr>
            <tr ng-repeat="x in myData">
                <td>{{x.name}}</td>
                <td>{{x.sex}}</td>
            </tr>
        </table>         
    </div>

        <input type="text" placeholder="name" ng-model="name" />
        <input type="text" placeholder="sex" ng-model="sex" />
        <button ng-click="addData(name,sex)">Add</button>   
  
</body>
</html>

<script>

    (function () {

        var app = angular.module("myApp", ['ngStorage']);

        app.controller("myController", function ($scope, $localStorage) {
            $scope.title = "LS";

            $scope.name = "";
            $scope.sex = "";

            var obj = [
                {
                    name: "nguyen",
                    sex: "male"
                },
                {
                    name: "fang",
                    sex: "female"
                }
            ]
            window.localStorage.setItem("data", JSON.stringify(obj));
         
            loadData();
            function loadData() {
                $scope.myData = JSON.parse(window.localStorage.getItem("data"));
                //alert($scope.myData.length);
                console.log($scope.myData);
            }

            $scope.addData = function (name,sex) {
                var newObj = { name: "" + name, sex: "" + sex };
                obj.push(newObj);
                window.localStorage.setItem("data", JSON.stringify(obj));
                $scope.myData = JSON.parse(window.localStorage.getItem("data"));
                $scope.name = "";
                $scope.sex = "";
                //alert("Local storage have " + obj.length + " items");
            };
       
        });

    })();


</script>



<!DOCTYPE html>

<html ng-app="myApp">
<head>
    <meta name="viewport" content="width=device-width" />
    <script src="~/Scripts/bootstrap.js"></script>
    <link href="~/Content/bootstrap.css" rel="stylesheet" />
    <script src="~/Scripts/jquery-3.1.1.js"></script>
    <script src="~/Scripts/angular.js"></script>
    <script src="~/Scripts/ngStorage.js"></script>
    <title>Index</title>
</head>
<body ng-controller="myController">
    <h1 ng-bind="title"></h1>
    @*<div>
         Message: {{message}}
        <br/>
        <button ng-click="loadData()">Load Message</button>
        <button ng-click="showData()">Show Message</button>
    </div>*@

    <input type="text" placeholder="name" ng-model="name" />
    <input type="text" placeholder="sex" ng-model="sex" />
    <div>
        <input type="radio" name="groupRadios" ng-click="Check($event)" id="car">
        <label for="car">Car</label>
        <span>
            <select>
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="mercedes">Mercedes</option>
                <option value="audi">Audi</option>
            </select>
        </span>
        <input type="radio" name="groupRadios" ng-click="Check($event)" id="bike">
        <label for="bike">Bike</label>
        <span>
            <select>
                <option value="volvo">A</option>
                <option value="saab">B</option>
                <option value="mercedes">C</option>
                <option value="audi">D</option>
            </select>
        </span>

    </div>
    <button ng-click="addData(name,sex)">Add</button>   
    <div>
        <table class="table table table-hover">
            <tr>
                <th>Name</th>
                <th>Sex</th>
                <th>Transportation</th>
            </tr>
            <tr ng-repeat="x in myData">
                <td>{{x.name}}</td>
                <td>{{x.sex}}</td>
                <td></td>
            </tr>
        </table>         
    </div>

  
</body>
</html>

<script>

    (function () {

        var app = angular.module("myApp", ['ngStorage']);

        app.controller("myController", function ($scope, $localStorage) {

            window.scope = $scope;
            $scope.title = "LS";

           

            $scope.name = "";
            $scope.sex = "";

            var obj = [
                {
                    name: "nguyen",
                    sex: "male"
                },
                {
                    name: "fang",
                    sex: "female"
                }
            ]
            window.localStorage.setItem("data", JSON.stringify(obj));
         
            loadData();
            function loadData() {
                $scope.myData = JSON.parse(window.localStorage.getItem("data"));
                //alert($scope.myData.length);
                console.log($scope.myData);
            }

            $scope.addData = function (name, sex) {

                var newObj = { name: "" + name, sex: "" + sex };
                obj.push(newObj);
                window.localStorage.setItem("data", JSON.stringify(obj));
                $scope.myData = JSON.parse(window.localStorage.getItem("data"));
                $scope.name = "";
                $scope.sex = "";
                //alert("Local storage have " + obj.length + " items");
            };

            $scope.Check = function (event) {
                var $this = angular.element(event.target);
                console.log($this[0].id);
                //if ($this.hasClass('on')) {
                //    return false;
                //}
                //angular.element('.box-field>ul>li').removeClass('on').find('.dropdown-toggle').addClass('default').text('Expression');

                //$this.parent().parent().addClass('on');
            }
       
        });

    })();


</script>

