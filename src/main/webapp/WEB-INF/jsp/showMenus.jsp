<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestion des menus</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="datepicker/css/datepicker.css" rel="stylesheet" />
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />

<style>
.green {
	font-weight: bold;
	color: green;
}

.message {
	margin-bottom: 10px;
}

.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body>

	<div class="navbar navbar-default">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search">
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/MenuSemaine">Accueil</a></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>

	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<script src="datepicker/js/bootstrap-datepicker.js">
		
	</script>

	<c:if test="${not empty message}">
		<div class="message green">${message}</div>
	</c:if>

	<c:forEach items="${menuList}" var="currentMenu" varStatus="index">
	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
					
							<fieldset>
								<legend>Pour la semaine du <fmt:formatDate pattern="dd-MMM-yyyy" value="${currentMenu.debutSemaine}"/></legend>
								
								<div class="form-group">
									<label for="lundiMidiInput" class="col-lg-3 control-label">Lundi midi</label>
									<span name="lundiMidiInput">${currentMenu.lundiMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="lundiSoirInput" class="col-lg-3 control-label">Lundi soir</label>
									<span name="lundiSoirInput">${currentMenu.lundiSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="mardiMidiInput" class="col-lg-3 control-label">Mardi midi</label>
									<span name="mardiMidiInput">${currentMenu.mardiMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="mardiSoirInput" class="col-lg-3 control-label">Mardi soir</label>
									<span name="mardiSoirInput">${currentMenu.mardiSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="mercrediMidiInput" class="col-lg-3 control-label">Mercredi midi</label>
									<span name="mercrediMidiInput">${currentMenu.mercrediMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="mercrediSoirInput" class="col-lg-3 control-label">Mercredi soir</label>
									<span name="mercrediSoirInput">${currentMenu.mercrediSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="jeudiMidiInput" class="col-lg-3 control-label">Jeudi midi</label>
									<span name="jeudiMidiInput">${currentMenu.jeudiMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="jeudiSoirInput" class="col-lg-3 control-label">Jeudi soir</label>
									<span name="jeudiSoirInput">${currentMenu.jeudiSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="vendrediMidiInput" class="col-lg-3 control-label">Vendredi midi</label>
									<span name="vendrediMidiInput">${currentMenu.vendrediMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="vendrediSoirInput" class="col-lg-3 control-label">Vendredi soir</label>
									<span name="vendrediSoirInput">${currentMenu.vendrediSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="samediMidiInput" class="col-lg-3 control-label">Samedi midi</label>
									<span name="samediMidiInput">${currentMenu.samediMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="samediSoirInput" class="col-lg-3 control-label">Samedi soir</label>
									<span name="samediSoirInput">${currentMenu.samediSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="dimancheMidiInput" class="col-lg-3 control-label">Dimanche midi</label>
									<span name="dimancheMidiInput">${currentMenu.dimancheMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="dimancheSoirInput" class="col-lg-3 control-label">Dimanche soir</label>
									<span name="dimancheSoirInput">${currentMenu.dimancheSoir}</span>
								</div>
								
							</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:forEach>

	<script>
		$(function() {
			$('#dateOfBirthInput').datepicker();
		});
	</script>

	<script>
		$(function() {
			var yesButton = $("#yesbutton");
			var progress = $("#doitprogress");

			yesButton.click(function() {
				yesButton.button("loading");

				var counter = 0;
				var countDown = function() {
					counter++;
					if (counter == 11) {
						yesButton.button("complete");
					} else {
						progress.width(counter * 10 + "%");
						setTimeout(countDown, 100);
					}
				};
				setTimeout(countDown, 100);
			});

		});
	</script>


</body>
</html>