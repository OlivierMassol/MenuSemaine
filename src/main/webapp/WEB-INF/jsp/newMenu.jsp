<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


	<div class="container">
		<div class="jumbotron">
			<div>
				<h1>Allez, on écrit le menu de la semaine !</h1>
				<p>Ca va aller super vite !</p>
			</div>
		</div>

		<div></div>
	</div>

	<c:if test="${not empty message}">
		<div class="message green">${message}</div>
	</c:if>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
					
						<form:form id="myFormNewMenu" method="post"
							class="bs-example form-horizontal" commandName="menuSemaine">
							<fieldset>
								<legend>Nouveau menu</legend>

								<div class="form-group">
									<label for="dateOfBirthInput" class="col-lg-3 control-label">Pour la semaine du </label>
									<div class="date form_date col-lg-9" data-date-format="dd/mm/yyyy" data-date-viewmode="years">
										<form:input type="text" class="form-control"											
											path="debutSemaine" id="dateOfBirthInput"
											placeholder="Pour la semaine du ..." />
										<form:errors path="debutSemaine" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Lundi 
									midi</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="lundiMidi"
											id="lundiMidiInput" placeholder="Lundi Midi" />
										<form:errors path="lundiMidi" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Lundi 
									soir</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="lundiSoir"
											id="lundiSoirInput" placeholder="Lundi Soir" />
										<form:errors path="lundiSoir" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Mardi 
									midi</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="mardiMidi"
											id="mardiMidiInput" placeholder="Mardi Midi" />
										<form:errors path="mardiMidi" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Mardi 
									soir</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="mardiSoir"
											id="mardiSoirInput" placeholder="Mardi Soir" />
										<form:errors path="mardiSoir" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Mercredi 
									midi</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="mercrediMidi"
											id="mercrediMidiInput" placeholder="Mercredi Midi" />
										<form:errors path="mercrediMidi" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Mercredi 
									soir</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="mercrediSoir"
											id="mercrediSoirInput" placeholder="Mercredi Soir" />
										<form:errors path="mercrediSoir" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Jeudi 
									midi</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="jeudiMidi"
											id="jeudiMidiInput" placeholder="Jeudi Midi" />
										<form:errors path="jeudiMidi" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Jeudi 
									soir</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="jeudiSoir"
											id="jeudiSoirInput" placeholder="Jeudi Soir" />
										<form:errors path="jeudiSoir" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Vendredi 
									midi</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="vendrediMidi"
											id="vendrediMidiInput" placeholder="Vendredi Midi" />
										<form:errors path="vendrediMidi" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Vendredi 
									soir</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="vendrediSoir"
											id="vendrediSoirInput" placeholder="Vendredi Soir" />
										<form:errors path="vendrediSoir" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Samedi 
									midi</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="samediMidi"
											id="samediMidiInput" placeholder="Samedi Midi" />
										<form:errors path="samediMidi" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Samedi 
									soir</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="samediSoir"
											id="samediSoirInput" placeholder="Samedi Soir" />
										<form:errors path="samediSoir" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Dimanche 
									midi</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="dimancheMidi"
											id="dimancheMidiInput" placeholder="Dimanche Midi" />
										<form:errors path="dimancheMidi" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">Dimanche 
									soir</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="dimancheSoir"
											id="dimancheSoirInput" placeholder="Dimanche Soir" />
										<form:errors path="dimancheSoir" cssClass="error" />
									</div>
								</div>

								<div class="col-lg-9 col-lg-offset-3">
									<button class="btn btn-default">Abandonner</button>

									<button class="btn btn-primary" data-toggle="modal"
										data-target="#themodal">Enregistrer</button>
									<div id="themodal" class="modal fade" data-backdrop="static">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h3>Dernière vérification</h3>
												</div>
												<div class="modal-body">
													<p>On enregistre ce menu ?</p>
													<div class="progress progress-striped active">
														<div id="doitprogress" class="progress-bar"></div>
													</div>
												</div>
												<div class="modal-footer">
													<a href="#" class="btn btn-default" data-dismiss="modal">Non</a>
													<input type="submit" value="Oui" id="yesbutton"
														class="btn btn-primary" data-loading-text="Enregistrement.."
														data-complete-text="Enregistré!">
												</div>
											</div>
										</div>
									</div>

								</div>

							</fieldset>
						</form:form>
					
					</div>
				</div>
			</div>
		</div>
	</div>

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