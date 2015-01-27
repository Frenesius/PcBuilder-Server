<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html ng-app="ui.bootstrap.demo">

 
  <head>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.js"></script>
    <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.12.0.js"></script>
    <script src="angularscript.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/style.css">


  </head>
  <body>
 
<script type="text/ng-template" id="customTemplate.html">
  <a>
      <span bind-html-unsafe="match.label | typeaheadHighlight:query"></span>
  </a>
</script>


<div class='container-fluid' ng-controller="JsonInputBestand">

	<div id=GPU>
    	<h4>GPU</h4>
    	<pre>SELECTED GPU:</pre>
    	<input type="text" ng-model="selected.gpu" placeholder="Kies je GPU" typeahead="gpu as gpu.Product + ' ' + gpu.Uitvoering for gpu in componentsGPU | filter:$viewValue | limitTo:100" class="form-control">
    </div>	
    
	<div id= CPU>
    	<h4>CPU</h4>
    	<pre>SELECTED CPU:</pre>
    	<input type="text" ng-model="selected.cpu" placeholder="Kies je CPU" typeahead="cpu as cpu.Product + ' ' + cpu.Uitvoering for cpu in componentsCPU | filter:$viewValue | limitTo:100" class="form-control">
	</div>
	
  <div id="RAM">
	<h4>RAM</h4>
    <pre>SELECTED RAM:</pre>
    <input type="text" ng-model="selected.ram" placeholder="Kies je ram" typeahead="ram as ram.Product + ' ' + ram.Uitvoering for ram in componentsRAM | filter:$viewValue | limitTo:100" class="form-control">
  </div>	

 <div id="HDD">
	<h4>HDD</h4>
    <pre>SELECTED HDD:</pre>
    <input type="text" ng-model="selected.hdd" placeholder="Kies je HHD" typeahead="hdd as hdd.Product + ' ' + hdd.Uitvoering for hdd in componentsHDD | filter:$viewValue | limitTo:100" class="form-control">
 </div>	
	
 <div id="SSD">
	<h4>SSD</h4>
    <pre>SELECTED SSD:</pre>
    <input type="text" ng-model="selected.ssd" placeholder="Kies je SSD" typeahead="ssd as ssd.Product + ' ' + ssd.Uitvoering for hdd in componentsSSD | filter:$viewValue | limitTo:100" class="form-control">
 </div>

<div id="PSU">
	<h4>PSU</h4>
    <pre>SELECTED PSU:</pre>
    <input type="text" ng-model="selected.psu" placeholder="Kies je PSU" typeahead="psu as psu.Product + ' ' + psu.Uitvoering for psu in componentsPSU | filter:$viewValue | limitTo:100" class="form-control">
</div>

<div id="CASE">
	<h4>CASE</h4>
    <pre>SELECTED CASE:</pre>
    <input type="text" ng-model="selected.case" placeholder="Kies je Case" typeahead="case as case.Product + ' ' + case.Uitvoering for case in componentsCASE | filter:$viewValue | limitTo:100" class="form-control">
</div>



   <div id="Motherboard">
	<h4>Motherboard</h4>
    <pre>SELECTED Motherboard:</pre>
    <input type="text" ng-model="selected.mob" placeholder="Kies je motherboard" typeahead="mob as mob.Product + ' ' + mob.Uitvoering for mob in componentsMOB | filter:$viewValue | limitTo:100" class="form-control">
   </div>
   
   

<div id="OPTICALDRIVE">
	<h4>OPTICALDRIVE</h4>
    <pre>SELECTED OPTICALDRIVE:</pre>
    <input type="text" ng-model="selected.opt" placeholder="Kies je Optical Drive" typeahead="opt as opt.Product + ' ' + opt.Uitvoering for opt in componentsOPT | filter:$viewValue | limitTo:100" class="form-control">
</div>	

<div id="SOUNDCARD">
	<h4>SOUNDCARD</h4>
    <pre>SELECTED SOUNDCARD:</pre>
    <input type="text" ng-model="selected.sound" placeholder="Kies je Sound Card" typeahead="sound as sound.Product + ' ' + sound.Uitvoering for sound in componentsSOUND | filter:$viewValue | limitTo:100" class="form-control">
</div>

	<input type="submit" ng-click="update(selected)" value="Save"  name="Data1" id="Data1">
	
	
	
	

</div>
  </body>
</html>

