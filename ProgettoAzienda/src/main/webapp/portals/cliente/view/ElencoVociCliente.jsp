<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page isELIgnored="false"%> --%>

<jsp:useBean id="cliente" class="it.alfasoft.fabrizio.bean.Cliente"
	scope="session" />

<!DOCTYPE html>
<html>

<!-- Include di HEAD -->
<jsp:include page="../../headerHTML.jsp" />

</head>
<body>

	<!-- Include di NAVBAR -->
	<jsp:include page="../parts/NavbarCliente.jsp" />
<%
    	if(cliente.isValid()){
    		
    %>	
	<!--fluid-container-->
	<div class="ch-container">
		<!--fluid-row-->
		<div class="row">

			<!-- Include di NAVBAR -->
			<jsp:include page="../parts/menuLateraleCliente.jsp" />

			<!-- content starts -->
			<div id="content" class="col-lg-10 col-sm-10">

				<!-- Include di BREADCRUMB -->
				<jsp:include page="../../breadcrumbHTML.jsp" />

				<div class="row">
					<div class="box col-md-12">
						<div class="box-inner">
							<div class="box-header well" data-original-title="">
								<div class="box-icon">
									<a href="#" class="btn btn-setting btn-round btn-default"><i
										class="glyphicon glyphicon-cog"></i></a> <a href="#"
										class="btn btn-minimize btn-round btn-default"><i
										class="glyphicon glyphicon-chevron-up"></i></a> <a href="#"
										class="btn btn-close btn-round btn-default"><i
										class="glyphicon glyphicon-remove"></i></a>
								</div>
							</div>
							<div class="box-content">
								<table
									class="table table-striped table-bordered bootstrap-datatable datatable responsive">
									<thead>
										<tr>
											<th>n°</th>
											<th>Nome</th>
											<th>Cognome</th>
											<th>Telefono</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="i" value="1" scope="page" />
										<c:forEach items="${lista}" var="u">
											<tr>
												<td><c:out value="${i}" /></td>
												<td><c:out value="${u.nome}" /></td>
												<td><c:out value="${u.cognome}" /></td>
												<td><c:out value="${u.tel}" /></td>
												<td class="center"><a class="btn btn-info" href="#">
														<i class="glyphicon glyphicon-edit icon-white"></i> Edit
												</a> <a class="btn btn-danger" href="#"> <i
														class="glyphicon glyphicon-trash icon-white"></i> Delete
												</a></td>
											</tr>
											<c:set var="i" value="${i + 1}" scope="page" />
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->

			</div>
			<!-- content ends -->
		</div>
		<!--/fluid-row-->

		<!-- Include di FOOTER -->
		<jsp:include page="../../footer.jsp" />

	</div>
	<!--/.fluid-container-->
<%
    }else{
    	response.sendRedirect(request.getContextPath()+"/portals/Login.jsp");
    }
%>		
	<!-- Include di FOOTER -->
	<jsp:include page="../../footerHTML.jsp" />