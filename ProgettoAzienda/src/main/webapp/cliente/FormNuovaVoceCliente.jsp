<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>	
<%--  <%@ page isELIgnored="false" %> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="cliente" class="it.alfasoft.fabrizio.bean.Cliente" scope="session"/>  

<!DOCTYPE html>
<html>
	
	<!-- Include di HEAD -->
	<jsp:include page="../headerHTML.jsp"/>
	
<body>

		<!-- Include di NAVBAR -->
	<jsp:include page="NavbarCliente.jsp"/>
		
		<!--fluid-container-->
		<div class="ch-container">
			<!--fluid-row-->
			<div class="row">
			
				<!-- Include di LEFT MENU -->
				<jsp:include page="menuLateraleCliente.jsp"/>
					
					<!-- content starts -->
					<div id="content" class="col-lg-10 col-sm-10">
				
						<!-- Include di BREADCRUMB -->
						<jsp:include page="../breadcrumbHTML.jsp"/>
	    		
					<h1>Registrazione Nuova Voce</h1>
			<form action="addVoceCliente.jsp" method="post">
				<input type="text"	name="nome" required placeholder="Nome"> 
				<input type="text"	name="cognome" required placeholder="Cognome"> 
				<input	type="text" name="tel" required placeholder="Teelfono">
				<input type="submit" value="Aggiungi">
			</form>
			<c:out value="${msg.getMessaggio()}" />
    						
					</div>
					<!-- content ends -->
    		</div>
			<!--/fluid-row-->	
		
			<!-- Include di FOOTER -->
			<jsp:include page="../footer.jsp"/>
		
		</div>
		<!--/.fluid-container-->
	
<!-- Include di FOOTER -->
<jsp:include page="../footerHTML.jsp"/>