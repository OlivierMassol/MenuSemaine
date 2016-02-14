<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Création du menu réussie</title>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />

</head>
<body>
	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

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

	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">Le menu a été enregistré avec succès !</h3>
		</div>
	</div>
	<div></div>
	<div></div>
	<a class="btn btn-primary" href="<spring:url value="newMenu.html"/>">Ecrire un nouveau menu</a>
	<hr>
	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
					
							<fieldset>
								<legend>Menu enregistré pour la semaine du <fmt:formatDate pattern="dd-MMM-yyyy" value="${menuSemaine.debutSemaine}"/></legend>
								
								<div class="form-group">
									<label for="lundiMidiSpan" class="col-lg-3 control-label">Lundi midi</label>
									<span name="lundiMidiSpan">${menuSemaine.lundiMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="lundiSoirSpan" class="col-lg-3 control-label">Lundi soir</label>
									<span name="lundiSoirSpan">${menuSemaine.lundiSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="mardiMidiSpan" class="col-lg-3 control-label">Mardi midi</label>
									<span name="mardiMidiSpan">${menuSemaine.mardiMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="mardiSoirSpan" class="col-lg-3 control-label">Mardi soir</label>
									<span name="mardiSoirSpan">${menuSemaine.mardiSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="mercrediMidiSpan" class="col-lg-3 control-label">Mercredi midi</label>
									<span name="mercrediMidiSpan">${menuSemaine.mercrediMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="mercrediSoirSpan" class="col-lg-3 control-label">Mercredi soir</label>
									<span name="mercrediSoirSpan">${menuSemaine.mercrediSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="jeudiMidiSpan" class="col-lg-3 control-label">Jeudi midi</label>
									<span name="jeudiMidiSpan">${menuSemaine.jeudiMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="jeudiSoirSpan" class="col-lg-3 control-label">Jeudi soir</label>
									<span name="jeudiSoirSpan">${menuSemaine.jeudiSoir}</span>
								</div>
								<div class="form-group">
									<label for="vendrediMidiSpan" class="col-lg-3 control-label">Vendredi midi</label>
									<span name="vendrediMidiSpan">${menuSemaine.vendrediMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="vendrediSoirSpan" class="col-lg-3 control-label">Vendredi soir</label>
									<span name="vendrediSoirSpan">${menuSemaine.vendrediSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="samediMidiSpan" class="col-lg-3 control-label">Samedi midi</label>
									<span name="samediMidiSpan">${menuSemaine.samediMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="samediSoirSpan" class="col-lg-3 control-label">Samedi soir</label>
									<span name="samediSoirSpan">${menuSemaine.samediSoir}</span>
								</div>
								
								<div class="form-group">
									<label for="dimancheMidiSpan" class="col-lg-3 control-label">Dimanche midi</label>
									<span name="dimancheMidiSpan">${menuSemaine.dimancheMidi}</span>
								</div>
								
								<div class="form-group">
									<label for="dimancheSoirSpan" class="col-lg-3 control-label">Dimanche soir</label>
									<span name="dimancheSoirSpan">${menuSemaine.dimancheSoir}</span>
								</div>
								
							</fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>