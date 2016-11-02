<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="admin" class="it.alfasoft.fabrizio.bean.Admin" scope="session"/>

<jsp:useBean id="msg" class="it.alfasoft.fabrizio.service.Messaggio"
	scope="request" />

<!DOCTYPE html>
<html>
	
	<!-- Include di HEAD -->
	<jsp:include page="../headerHTML.jsp"/>
	
</head>
<body>
	
	<!-- Include di NAVBAR -->
	<jsp:include page="../admin/NavbarAdmin.jsp"/>
		
		<!--fluid-container-->
		<div class="ch-container">
			<!--fluid-row-->
			<div class="row">
			
				<!-- Include di NAVBAR -->
				<jsp:include page="../admin/MenuLateraleAdmin.jsp"/>
					
					<!-- content starts -->
					<div id="content" class="col-lg-10 col-sm-10">
				
						<!-- Include di BREADCRUMB -->
						<jsp:include page="../breadcrumbHTML.jsp"/>
							
						<h1>Registrazione Busta</h1>
						<form action="doRegistraBusta.jsp" method="post">
							<select name="id_dipendente">
							<c:forEach items="${lista}" var="u">
								<option value="${u.id_utente}"><c:out value="${u.cognome}" /> <c:out value="${u.nome}" /></option>
						   	</c:forEach>
						  	</select>
							<input type="text" name="mese" required placeholder="Mese">
							<input type="number" name="anno" required placeholder="Anno">
							<input type="number" name="totale" required placeholder="Totale">
							<input type="submit" value="Registra!">
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
		