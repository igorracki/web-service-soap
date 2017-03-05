<%@page import="com.igor.webservices.service.GuitarServiceImplProxy"%>
<%@page import="com.igor.webservices.beans.Guitar"%>
<%@page import="com.igor.webservices.service.GuitarServiceImplService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Guitar Service</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/sb-admin.css">
</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="TestClient.jsp?endpoint=http://localhost:8080/SOAPAssignment_B00068103/services/GuitarServiceImpl">Guitar Service</a>
		</div>
		<!--
	    <ul class="nav navbar-right top-nav">
	        <li class="dropdown">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Igor<b class="caret"></b></a>
	            <ul class="dropdown-menu">
	                <li>
	                    <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
	                </li>
	            </ul>
	        </li>
	    </ul>
	    -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li><a href="TestClient.jsp?method=create">Create</a></li>
				<li><a href="TestClient.jsp?method=read">Read</a></li>
				<li><a href="TestClient.jsp?method=update">Update</a></li>
				<li><a href="TestClient.jsp?method=delete">Delete</a></li>
			</ul>
		</div>
		</nav>

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-primary text-center">
							<div class="panel-heading">
								<h3 class="panel-title">Web Services 2017 - SOAP Assignment</h3>
							</div>
							<div class="panel-body">B00068103 - Igor Racki</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title text-center">Actions</h3>
						</div>
						<div class="panel-body">
							<div class="col-lg-3 col-md-6">
								<div class="panel panel-primary">
									<div class="panel-heading">
										<div class="row">
											<div class="col-xs-12 text-center">
												<div class="huge">Create</div>
											</div>
										</div>
									</div>
									<a href="TestClient.jsp?method=create">
										<div class="panel-footer">
											<span class="pull-left">More Actions</span> <span
												class="pull-right">--></span>
											<div class="clearfix"></div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="panel panel-green">
									<div class="panel-heading">
										<div class="row">
											<div class="col-xs-12 text-center">
												<div class="huge">Read</div>
											</div>
										</div>
									</div>
									<a href="TestClient.jsp?method=read">
										<div class="panel-footer">
											<span class="pull-left">More Actions</span> <span
												class="pull-right">--></span>
											<div class="clearfix"></div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="panel panel-yellow">
									<div class="panel-heading">
										<div class="row">
											<div class="col-xs-12 text-center">
												<div class="huge">Update</div>
											</div>
										</div>
									</div>
									<a href="TestClient.jsp?method=update">
										<div class="panel-footer">
											<span class="pull-left">More Actions</span> <span
												class="pull-right">--></span>
											<div class="clearfix"></div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="panel panel-red">
									<div class="panel-heading">
										<div class="row">
											<div class="col-xs-12 text-center">
												<div class="huge">Delete</div>
											</div>
										</div>
									</div>
									<a href="TestClient.jsp?method=delete">
										<div class="panel-footer">
											<span class="pull-left">More Actions</span> <span
												class="pull-right">--></span>
											<div class="clearfix"></div>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- NAVIGATION LOGIC -->
				<%
					String methodName = request.getParameter("method");
					if(methodName == null) {
						new GuitarServiceImplProxy().init();
					} else if (methodName.equals("create")) { /************ CREATE	*******************/
				%>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title text-center">Add a Guitar</h3>
							</div>
							<div class="panel-body">
								<form action="TestClient.jsp" method="post">
									<table class="table table-hover">
										<tbody>
											<tr>
												<th>ID: </th>
												<td><input class="form-control" type="text" name="id" placeholder="ID" required></td>
											</tr>
											<tr>
												<th>Brand: </th>
												<td><input class="form-control" type="text" name="brand" placeholder="Brand" required></td>
											</tr>
											<tr>
												<th>Model: </th>
												<td><input class="form-control" type="text" name="model" placeholder="Model" required></td>
											</tr>
											<tr>
												<th>Color: </th>
												<td><input class="form-control" type="text" name="color" placeholder="Color" required></td>
											</tr>
											<tr>
												<th>Price: </th>
												<td><input class="form-control" type="number" step="0.01" name="price" placeholder="Price" required></td>
											</tr>
											<tr>
												<th>Image: </th>
												<td><input class="form-control" type="text" name="image" placeholder="Image" required></td>
											</tr>
										</tbody>
									</table>
									<p class="text-center">
										<input class="btn btn-success" type="submit" name="submit" value="Add">
									</p>
								</form>
							</div>	
						</div>
					</div>
				</div>				
				<%	/************ READ	*******************/	
					} else if(methodName.equals("read")) {
						Guitar[] guitars = new GuitarServiceImplProxy().readAll();
				%>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title text-center">View Guitars</h3>
							</div>
							<div class="panel-body">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>ID</th>
											<th>Brand</th>
											<th>Model</th>
											<th>Color</th>
											<th>Price</th>
											<th>Image</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
									<%
									for(int i = 0; i < guitars.length; i++) {
										out.println("<tr>");
											out.println("<td>"+guitars[i].getId()+"</td>");
											out.println("<td>"+guitars[i].getBrand()+"</td>");
											out.println("<td>"+guitars[i].getModel()+"</td>");
											out.println("<td>"+guitars[i].getColor()+"</td>");
											out.println("<td>"+guitars[i].getPrice()+"</td>");
											out.println("<td>"+guitars[i].getImage()+"</td>");
											out.println("<td><a href=\"TestClient.jsp?method=display&id="+guitars[i].getId()+"\" class=\"btn btn-success\">Display</a></td>");
										out.println("</tr>");
									}
									%>
									</tbody>
								</table>
							</div>	
						</div>
					</div>
				</div>				
				<%	/************ UPDATE	*******************/	
					} else if(methodName.equals("update")) {
						Guitar[] guitars = new GuitarServiceImplProxy().readAll();
				%>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title text-center">Update Guitars</h3>
							</div>
							<div class="panel-body">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>ID</th>
											<th>Brand</th>
											<th>Model</th>
											<th>Color</th>
											<th>Price</th>
											<th>Image</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
									<%
									for(int i = 0; i < guitars.length; i++) {
										out.println("<tr>");
											out.println("<td>"+guitars[i].getId()+"</td>");
											out.println("<td>"+guitars[i].getBrand()+"</td>");
											out.println("<td>"+guitars[i].getModel()+"</td>");
											out.println("<td>"+guitars[i].getColor()+"</td>");
											out.println("<td>"+guitars[i].getPrice()+"</td>");
											out.println("<td>"+guitars[i].getImage()+"</td>");
											out.println("<td><a href=\"TestClient.jsp?method=edit&id="+guitars[i].getId()+"\" class=\"btn btn-warning\">Update</a></td>");
										out.println("</tr>");
									}
									%>
									</tbody>
								</table>
							</div>	
						</div>
					</div>
				</div>			
				<% /************ DISPLAY or EDIT	************/
					} else if(methodName.equals("display") || methodName.equals("edit")) {
						String idTag = request.getParameter("id");
						Guitar g = new GuitarServiceImplProxy().read(Integer.parseInt(idTag));
				%>
				<div class="row">
					<div class="col-lg-6">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h3 class="panel-title">Guitar Details</h3>
							</div>
							<div class="panel-body">
							<%if(methodName.equals("display")) { %>
								<table class="table table-hover">
									<tbody>
										<tr>
											<th>ID: </th>
											<td><% out.print(g.getId()); %></td>
										</tr>
										<tr>
											<th>Brand: </th>
											<td><% out.print(g.getBrand()); %></td>
										</tr>
										<tr>
											<th>Model: </th>
											<td><% out.print(g.getModel()); %></td>
										</tr>
										<tr>
											<th>Color: </th>
											<td><% out.print(g.getColor()); %></td>
										</tr>
										<tr>
											<th>Price: </th>
											<td><% out.print(g.getPrice()); %></td>
										</tr>
										<tr>
											<th>Image: </th>
											<td><% out.print(g.getImage()); %></td>
										</tr>
									</tbody>
								</table>
								<div class="text-center">
									<a href="TestClient.jsp?method=edit&id=<% out.print(g.getId()); %>" class="btn btn-default">Update</a>
								</div>	
								<% } else if(methodName.equals("edit")) { %>
								<form action="TestClient.jsp" method="post">
									<table class="table table-hover">
									<tbody>
										<tr>
											<th>ID: </th>
											<td><input type="text" class="form-control" name="id" value="<% out.print(g.getId()); %>" required></td>
										</tr>
										<tr>
											<th>Brand: </th>
											<td><input type="text" class="form-control" name="brand" value="<% out.print(g.getBrand()); %>" required></td>
										</tr>
										<tr>
											<th>Model: </th>
											<td><input type="text" class="form-control" name="model" value="<% out.print(g.getModel()); %>" required></td>
										</tr>
										<tr>
											<th>Color: </th>
											<td><input type="text" class="form-control" name="color" value="<% out.print(g.getColor()); %>" required></td>
										</tr>
										<tr>
											<th>Price: </th>
											<td><input type="text" class="form-control" name="price" value="<% out.print(g.getPrice()); %>" required></td>
										</tr>
										<tr>
											<th>Image: </th>
											<td><input type="text" class="form-control" name="image" value="<% out.print(g.getImage()); %>" required></td>
										</tr>
									</tbody>
								</table>
								<div class="text-center">
									<input type="submit" name="submit" value="Update" class="btn btn-default">
								</div>		
								</form>
								<% } %>
							</div>
						</div>
					</div>
					
					<div class="col-lg-6">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h3 class="panel-title">Guitar Image</h3>
							</div>
							<div class="panel-body text-center">
								<img src="${pageContext.request.contextPath}/images/<% out.print(g.getImage()); %>">
							</div>
						</div>
					</div>
				</div>		
				<%	/********** DELETE	***********/		
					} else if(methodName.equals("delete")) {
						Guitar[] guitars = new GuitarServiceImplProxy().readAll();
				%>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title text-center">View Guitars</h3>
							</div>
							<div class="panel-body">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>ID</th>
											<th>Brand</th>
											<th>Model</th>
											<th>Color</th>
											<th>Price</th>
											<th>Image</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
									<%
									for(int i = 0; i < guitars.length; i++) {
										out.println("<tr>");
											out.println("<td>"+guitars[i].getId()+"</td>");
											out.println("<td>"+guitars[i].getBrand()+"</td>");
											out.println("<td>"+guitars[i].getModel()+"</td>");
											out.println("<td>"+guitars[i].getColor()+"</td>");
											out.println("<td>"+guitars[i].getPrice()+"</td>");
											out.println("<td>"+guitars[i].getImage()+"</td>");
											out.println("<td><a href=\"TestClient.jsp?method=remove&id="+guitars[i].getId()+"\" class=\"btn btn-danger\">Delete</a></td>");
										out.println("</tr>");
									}
									%>
									</tbody>
								</table>
							</div>	
						</div>
					</div>
				</div>	
				<%		
					} else if(methodName.equals("remove")) {
						String idTag = request.getParameter("id");
						
						boolean removed = new GuitarServiceImplProxy().delete(Integer.parseInt(idTag));
						
						if(removed) {
							%>
								<div class="alert alert-success">Guitar Deleted.</div>
							<%
						} else {
							%>
								<div class="alert alert-danger">Error while Deleting.</div>
							<%
						}
					}
				%>
				<!--  -->
				
				<!-- SUBMIT LOGIC -->
				<%
					String formAction = request.getParameter("submit");
					if(formAction == null) {
						
					} else {
						if(formAction.equals("Add")) {
							if(request.getParameter("id") != null) {
								int id = Integer.parseInt(request.getParameter("id"));
								String brand = request.getParameter("brand");
								String model = request.getParameter("model");
								String color = request.getParameter("color");
								String image = request.getParameter("image");
								double price = Double.parseDouble(request.getParameter("price"));
								
								Guitar guitar = new Guitar();
								guitar.setId(id);
								guitar.setBrand(brand);
								guitar.setModel(model);
								guitar.setColor(color);
								guitar.setImage(image);
								guitar.setPrice(price);
								
								boolean created = new GuitarServiceImplProxy().create(guitar);
								
								if(created) {
									%>
										<div class="alert alert-success">Guitar Added.</div>
									<%
								} else {
									%>
										<div class="alert alert-danger">Error while adding.</div>
									<%
								}
							}
						} else if(formAction.equals("Update")) {
							if(request.getParameter("id") != null) {
								int id = Integer.parseInt(request.getParameter("id"));
								String brand = request.getParameter("brand");
								String model = request.getParameter("model");
								String color = request.getParameter("color");
								String image = request.getParameter("image");
								double price = Double.parseDouble(request.getParameter("price"));
								
								Guitar guitar = new Guitar();
								guitar.setId(id);
								guitar.setBrand(brand);
								guitar.setModel(model);
								guitar.setColor(color);
								guitar.setImage(image);
								guitar.setPrice(price);
								
								Guitar updated = new GuitarServiceImplProxy().update(id, guitar);
								
								if(updated != null) {
									%>
										<div class="alert alert-success">Guitar Updated.</div>
									<%
								} else {
									%>
										<div class="alert alert-danger">Error while updating.</div>
									<%
								}
							}
						}
					}
				%>
				<!--  -->
			</div>
		</div>
	</div>
</body>
</html>