<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>    
<%@ page isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="cliente" class="it.alfasoft.fabrizio.bean.Cliente"
	scope="session" />

<!DOCTYPE html>
<html>

<!-- Include di HEAD -->
<jsp:include page="../../headerHTML.jsp" />

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

			<!-- Include di LEFT MENU -->
			<jsp:include page="../parts/menuLateraleCliente.jsp" />

			<!-- content starts -->
			<div id="content" class="col-lg-10 col-sm-10">

				<!-- Include di BREADCRUMB -->
				<jsp:include page="../../breadcrumbHTML.jsp" />

				<div class="row">
					<div class="box col-md-12">
						<div class="box-inner">
							<div class="box-header well" data-original-title="">
								<h2>
									<i class="glyphicon glyphicon-edit"></i> Aggiungi Contatto
								</h2>
							</div>
							<div class="box-content">
								<form role="form" action="../logic/addVoceCliente.jsp" method="post">
									<div class="form-group">
										<label for="">Nome</label> <input type="text"
											class="form-control" name="nome"
											placeholder="Inserisci Nome">
									</div>
									<div class="form-group">
										<label for="">Cognome</label> <input type="text"
											class="form-control" name="cognome"
											placeholder="Inserisci Cognome">
									</div>
									<div class="form-group">
										<label for="">Telefono</label> <input type="text"
											class="form-control" name="tel"
											placeholder="Inserisci Telefono">
									</div>
									<div class="form-group">
										<p class="help-block">
											<c:out value="${msg.getMessaggio()}" />
										</p>
									</div>
									<input type="submit" class="btn btn-default" value="Submit">
								</form>
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