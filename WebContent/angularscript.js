
angular.module('ui.bootstrap.demo', ['ui.bootstrap']);

angular.module('ui.bootstrap.demo').controller('JsonInputBestand', function ($scope, $http) {
	$scope.selected = "";
    $http.get("JSON/PROCESSOR.json").then(function(response){
 		$scope.componentsCPU = response.data;
    });
    $scope.master = [];
    
    $scope.update = function (selected) {
        $scope.master = angular.toJson(selected);
        
        $http({
        	method: "POST",
        	url: "/WebFrenesius/UserRequest.do",
        	data: $scope.master,
        	headers:{
        	"Content-Type" : "application/x-www-form-urlencoded"}
        	})
        	.success(function(data,status,headers,config) 
        			{
        		$scope.msg = $scope.master;
        		
        			})
         };
   
       

// Any function returning a promise object can be used to load values asynchronously
    $scope.gpuselected = "";
    $http.get("JSON/GRAPHICSCARD.json").then(function(response){
        $scope.componentsGPU = response.data;
    });

    
        $scope.ramselected = "";
    $http.get("JSON/MEMORY.json").then(function (response) {
        $scope.componentsRAM = response.data;
    })
    
            $scope.hddselected = "";
    $http.get("JSON/HDD.json").then(function (response) {
        $scope.componentsHDD = response.data;
    })
    
            $scope.ssdselected = "";
    $http.get("JSON/SSD.json").then(function (response) {
        $scope.componentsSSD = response.data;
    })
    
            $scope.psuselected = "";
    $http.get("JSON/PSU.json").then(function (response) {
        $scope.componentsPSU = response.data;
    })
    
            $scope.caseselected = "";
    $http.get("JSON/CASE.json").then(function (response) {
        $scope.componentsCASE = response.data;
    })
    
    
    $scope.mobselected = "";
    $http.get("JSON/MOTHERBOARD.json").then(function (response) {
        $scope.componentsMOB = response.data;
    })
    
            $scope.optselected = "";
    $http.get("JSON/OPTICALDRIVE.json").then(function (response) {
        $scope.componentsOPT = response.data;
    })
            $scope.soundselected = "";
    $http.get("JSON/SOUNDCARD.json").then(function (response) {
        $scope.componentsSOUND = response.data;
    })   
})

			//function unload(){
			
				//	document.getElementById("indextxt").innerHTML = '<h1>Please wait</h1>'
				//	+ '<img src="http://www.mytreedb.com/uploads/mytreedb/loader/ajax_loader_blue_512.gif" style="width:128px;height:128px">';
							
					//	}
	
