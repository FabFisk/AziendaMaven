<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="dipendente" class="it.alfasoft.fabrizio.bean.Dipendente" scope="session"/>  

<!DOCTYPE html>
<html>
	
	<!-- Include di HEAD -->
	<jsp:include page="../headerHTML.jsp"/>
	
<body>

		<!-- Include di NAVBAR -->
	<jsp:include page="NavbarDipendente.jsp"/>
		
		<!--fluid-container-->
		<div class="ch-container">
			<!--fluid-row-->
			<div class="row">
			
				<!-- Include di LEFT MENU -->
				<jsp:include page="menuLateraleDipendente.jsp"/>
					
					<!-- content starts -->
					<div id="content" class="col-lg-10 col-sm-10">
				
						<!-- Include di BREADCRUMB -->
						<jsp:include page="../breadcrumbHTML.jsp"/>
	    		
	    				<!-- QUI IL CONTENUTO DELLA PAGINA -->	
	    				<!-- QUI IL CONTENUTO DELLA PAGINA -->	
	    				<!-- QUI IL CONTENUTO DELLA PAGINA -->	
	    				<!-- QUI IL CONTENUTO DELLA PAGINA -->	
	    				<!-- QUI IL CONTENUTO DELLA PAGINA -->	
	    				<!-- QUI IL CONTENUTO DELLA PAGINA -->	
	    				<!-- QUI IL CONTENUTO DELLA PAGINA -->	
	    				<!-- QUI IL CONTENUTO DELLA PAGINA -->	
    						
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