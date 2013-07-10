(function() {
  var app;

  app = angular.module("FIS", ["ngResource"]);

  app.factory("QuestionsAPI", [
    "$resource", function($resource) {
      return $resource("/test/qandaapi.json", {
        id: "@id"
      }, {
        update: {
          method: "PUT"
        }
      });
    }
  ]);

  this.QandACtrl = [
    "$scope", "QuestionsAPI", function($scope, QuestionsAPI) {
  	  $scope.questionsAPI = QuestionsAPI.query();
  	  $scope.set = {};
  	  $scope.set.name = "";
  	  $scope.set.id = "";
  	  $scope.set_questions = [];

    }
  ];

}).call(this);