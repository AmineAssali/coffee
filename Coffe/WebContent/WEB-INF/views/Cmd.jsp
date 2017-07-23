<%@page import="model.Commande"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="cmd" class="java.util.ArrayList" scope="session"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
							<%
								for (Object o : cmd) {
									Commande c = (Commande) o;
							%>
							<tr>
								<td>
									<%
										c.getLibelle();
									%>
								</td>
								<td>
									<%
										c.getPrix();
									%>
								</td>
								<td><button type="button" class="btn btn-default"
										data-dismiss="modal">Delete</button></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<table>
		<tr>
			<th>Num</th>
			<th>Firstname</th>
			<th>Lastname</th>
			<th></th>
		</tr>
		<%
			for (Object o : cmd) {
				Commande c = (Commande) o;
		%>
		<tr>
			<td>
				<%
					c.getLibelle();
				%>
			</td>
			<td>
				<%
					c.getPrix();
				%>
			</td>
			<td><button type="button" class="btn btn-default"
					data-dismiss="modal">Delete</button></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>