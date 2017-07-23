<!DOCTYPE html>
<%@page import="dao.CommandeDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Commande"%>
<jsp:useBean id="cmd" class="java.util.ArrayList" scope="request"/>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="styleSheet" href="css/Commande.css">
<title>My Coffe</title>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/test.js"></script>
<script src="js/ajax.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap.min.js"></script>

</head>
<body>
<!-- 	<h3 style="font: large; font-family: impact, 'arial-black'"> -->
<%-- 		Bienvenue +<%=session.getAttribute("utilisateur")%></h3> --%>
	<nav class="navbar navbar">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" id="cover">Cover</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav" id="ul">
					<a class="navbar-brand" href="Controlle?op=Acceuil" id="ul">Aceuil</a>
					<a class="navbar-brand" href="Controlle?op=Historique" id="ul">Factures</a>
					<a class="navbar-brand" href="Controlle?op=Contact" id="ul">Contact</a>
					<!--<li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li> -->
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>



	<div class="jumbotron" id="jumbotron1">
		<div class="services container" id="choix">
			<center>
				<h2>List Commande</h2>
			</center>
			<div class="row">
				<center>
					<section class="col-md-2">
						<a href="#" id="id-petit-dejeuner"><img
							class="img-responsive img-rounded"
							src="img/Dollarphotoclub_47990746.jpg" alt="Icon" id="img"></a>
						<h3>Petit Dejeuner</h3>
					</section>
					<section class="col-md-2">
						<a href="#" id="id-caffe"><img
							class="img-responsive img-thumbnail"
							src="img/Les-boissons-chaudes-font-elles-maigrir-1-702x336.jpg"
							alt="Icon" id="img"></a>
						<h3>Boisson Chaud</h3>
					</section>
					<section class="col-md-2">
						<a href="#" id="id-jus"><img
							class="img-responsive img-rounded"
							src="img/extracteur-jus-hurom-versapers.jpg" alt="Icon" id="img"></a>
						<h3>Jus</h3>
					</section>
					<section class="col-md-2">
						<a href="#" id="id-croisant"><img
							class="img-responsive img-thumbnail" src="img/84671398_o.jpg"
							alt="Icon" id="img"></a>
						<h3>Croisson</h3>
					</section>
					<section class="col-md-2">
						<a href="#" id="id-the"><img
							class="img-responsive img-thumbnail"
							src="img/14-excellentes-raisons-de-boire-du-the-vert.jpg"
							alt="Icon" id="img"></a>
						<h3>The</h3>
						<br>
					</section>
				</center>
			</div>
		</div>

		<!-- <form action="Controlle" method="post"> -->
		<div class="jumbotron jumbotron2" id="jumbotron2">
			<div class="services container" id="list-jus">
				<div class="row">
					<section class="col-md-2">
						<button class="img-thumbnail" id="op"
							onclick="Controller(this.value)" value="Jus d'Orange">
							<img class="img-responsive " src="img/jus_orange.png" alt="Icon"
								id="img">
						</button>
						<h3>Jus d'Orange</h3>
					</section>
					<section class="col-md-2">
						<button class="img-thumbnail" id="op"
							onclick="Controller(this.value)" value="Jus de Banane">
							<img class="img-responsive" src="img/img_3579_apa_2921_600.jpg"
								alt="Icon" id="img">
						</button>
						<h3>Jus de Banane</h3>
					</section>
					<section class="col-md-2">
						<button class="img-thumbnail" id="op"
							onclick="Controller(this.value)" value="Jus de Pomme">
							<img class="img-responsive" src="img/pinacolada.jpg" alt="Icon"
								id="img">
						</button>
						<h3>Jus de Pomme</h3>
					</section>
					<section class="col-md-2">
						<button class="img-thumbnail" id="op"
							onclick="Controller(this.value)" value="Jus d'Avocat">
							<img class="img-responsive"
								src="img/02bb996f-032c-47cf-a44a-e94a8ca728d8_normal.jpg"
								alt="Icon" id="img">
						</button>
						<h3>Jus d'Avocat</h3>
					</section>
					<section class="col-md-2">
						<button class="img-thumbnail" id="op"
							onclick="Controller(this.value)" value="Jus de Fraise">
							<img class="img-responsive"
								src="img/2fc3df98e6be92682b1da8142cc0f44b.jpg" alt="Icon"
								id="img">
						</button>
						<h3>Jus de Fraise</h3>
					</section>
				</div>
				<div class="row">
					<section class="col-md-2">
						<button class="img-thumbnail" id="op"
							onclick="Controller(this.value)" value="Jus Panache">
							<img class="img-responsive"
								src="img/pulpe-de-baobab_baomix_smoothie.jpg" alt="Icon"
								id="img">
						</button>
						<h3>Jus Panache</h3>
					</section>
					<section class="col-md-2">
						<button class="img-thumbnail" id="op"
							onclick="Controller(this.value)" value="Lemonade">
							<img class="img-responsive"
								src="img/coca-cola-fanta-sprite-shweppes-cappy-20497130.jpg"
								alt="Icon" id="img">
						</button>
						<h3>Lemonade</h3>
					</section>
				</div>
			</div>
		</div>

		<div class="jumbotron jumbotron2" id="jumbotron3">
			<div class="services container " id="list-caffe">
				<div class="row">
					<center>
						<section class="col-md-2">
							<button class="img-thumbnail" id="op"
								onclick="Controller(this.value)" value="Caffe noir">
								<img class="img-responsive " src="img/94135.jpg" alt="Icon"
									id="img">
							</button>
							<h3>Caffe Noir</h3>
						</section>
						<section class="col-md-2">
							<button class="img-thumbnail" id="op"
								onclick="Controller(this.value)" value="Caffe creme">
								<img class="img-responsive" src="img/173994.jpg" alt="Icon"
									id="img">
							</button>
							<h3>Caffe Creme</h3>
						</section>
						<section class="col-md-2">
							<button class="img-thumbnail" id="op"
								onclick="Controller(this.value)" value="Lait au chocolat">
								<img class="img-responsive"
									src="img/ori-boisson-chocolat-lineadiet-45.jpg" alt="Icon"
									id="img">
							</button>
							<h3>Lait au Chocolat</h3>
						</section>
						<section class="col-md-2">
							<button class="img-thumbnail" id="op"
								onclick="Controller(this.value)" value="Lait froid">
								<img class="img-responsive" src="img/1_61UYN.jpg" alt="Icon"
									id="img">
							</button>
							<h3>Lait Froid</h3>
						</section>
						<section class="col-md-2">
							<button class="img-thumbnail" id="op"
								onclick="Controller(this.value)" value="Lait cassee">
								<img class="img-responsive"
									src="img/marocchino_fondente_782x441.jpg" alt="Icon" id="img">
							</button>
							<h3>Lait Cassee</h3>
						</section>
					</center>
				</div>
			</div>
		</div>

		<div class="jumbotron jumbotron2" id="jumbotron4">
			<div class="services container " id="list-the">
				<div class="row">
					<center>
						<section class="col-md-2">
							<button class="img-thumbnail" id="op"
								onclick="Controller(this.value)" value="Petit the">
								<img class="img-responsive "
									src="img/the-marocain-avec-plaisir.jpg" alt="Icon" id="img">
							</button>
							<h3>Petit The</h3>
						</section>
						<section class="col-md-2">
							<button class="img-thumbnail" id="op"
								onclick="Controller(this.value)" value="The moyen">
								<img class="img-responsive"
									src="img/the-marocain-avec-plaisir.jpg" alt="Icon" id="img">
							</button>
							<h3>The moyen</h3>
						</section>
						<section class="col-md-2">
							<button class="img-thumbnail" id="op"
								onclick="Controller(this.value)" value="Lipton">
								<img class="img-responsive" src="img/1662-962913-article2.jpg"
									alt="Icon" id="img">
							</button>
							<h3>Lipton</h3>
						</section>
					</center>
				</div>
			</div>
		</div>

		<div class="jumbotron jumbotron2" id="jumbotron5">
			<div class="services container" id="list-petit-dejeuner">
				<div class="row">
					<center>
						<section class="col-md-2">
							<button class="img-thumbnail" name="op" id="op"
								value="Petit dejeuner1" onclick="Controller(this.value)">
								<img class="img-responsive" src="img/pack-petit-dejeuner.jpg"
									alt="Icon" id="img">
							</button>
							<h3>Petit dejeuner Simple</h3>
						</section>
						<section class="col-md-2">
							<button class="img-thumbnail" name="op" id="op"
								value="Petit dejeuner2" onclick="Controller(this.value)">
								<img class="img-responsive"
									src="img/photo-635253951670559071-1.jpg" alt="Icon" id="img">
							</button>
							<h3>Petit dejeuner ++</h3>
						</section>
					</center>
				</div>
			</div>
		</div>

		<div class="jumbotron jumbotron2" id="jumbotron6">
			<div class="services container " id="list-croissant">
				<div class="row">
					<center>
						<section class="col-md-2">
							<button class="img-thumbnail" name="op" value="Croissant">
								<img class="img-responsive"
									src="img/p_h_0240 Croissant CIOCCOLATO burro  .jpg" alt="Icon"
									id="img">
							</button>
							<h3>Croissant</h3>
						</section>
						<section class="col-md-2">
							<button class="img-thumbnail" name="op" value="Cake">
								<img class="img-responsive" src="img/qq-ingles.png" alt="Icon"
									id="img">
							</button>
							<h3>Cake</h3>
						</section>
					</center>
				</div>
			</div>
		</div>
		<!-- 		</form> -->

		<!-- Trigger the modal with a button -->
		<center>
			<button type="button" class="btn btn-default" data-toggle="modal"
				data-target="#myModal"> Enregistrer </button>
		</center>

         
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header</h4>
					</div>
						<div class="modal-body">
						<table class="table">
							<thead>
								<tr>
								    <th>Num</th>
									<th>Firstname</th>
									<th>Lastname</th>
									<th></th>
								</tr>
							</thead>
							<%-- <tbody>
								<c:forEach items="${cmd}" var="lcmd" varStatus="status">
									<tr>
									    <td>
<!-- 									    This count the number of line retourned -->
									    <c:out value="${status.count}" />
									    </td>
										<td>
<!-- 											This calls the getId() method on your asd object  -->
												<c:out value="${lcmd.libelle}" />
										</td>
										<td>
<!-- 											This calls the getName() method on your asd object -->
											    <c:out value="${lcmd.prix}" />
										</td>
										<td><button type="button" class="btn btn-default"
												data-dismiss="modal">Delete</button></td>
									</tr>
								</c:forEach>
							</tbody> --%>
							<tbody>
								<%for(Object o : cmd){
									Commande c = (Commande) o;
								%>
									<tr>
									    <td><%c.getLibelle(); %></td>
										<td><%c.getPrix(); %></td>
										<td><button type="button" class="btn btn-default"
												data-dismiss="modal">Delete</button></td>
									</tr>
								<%} %>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

<%for(Object o : cmd){
	Commande c = (Commande) o;
	System.out.println("hello world \n"+c.getLibelle()+" "+c.getPrix());
}
%>
	</div>


</body>
</html>
