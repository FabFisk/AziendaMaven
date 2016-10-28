<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="dipendente" class="it.alfasoft.fabrizio.bean.Dipendente" scope="session"/>

<!DOCTYPE html>
<html>
	
	<!-- Include di HEAD -->
	<jsp:include page="../headerHTML.jsp"/>
	
</head>
<body>
	
	<!-- Include di NAVBAR -->
	<jsp:include page="../dipendente/NavbarDipendente.jsp"/>
		
		<!--fluid-container-->
		<div class="ch-container">
			<!--fluid-row-->
			<div class="row">
			
				<!-- Include di NAVBAR -->
				<jsp:include page="../dipendente/menuLateraleDipendente.jsp"/>
					
					<!-- content starts -->
					<div id="content" class="col-lg-10 col-sm-10">
				
						<!-- Include di BREADCRUMB -->
						<jsp:include page="../breadcrumbHTML.jsp"/>
<table>
				<thead>
					<tr>
						<th>n°</th>
						<th>Nome</th>
						<th>Cognome</th>
						<th>Telefono</th>
					</tr>
				</thead>
				<c:set var="i" value="1" scope="page" />
				<c:forEach items="${lista}" var="u">
					<tr>
						<td><c:out value="${i}" /></td>
						<td><c:out value="${u.nome}" /></td>
						<td><c:out value="${u.cognome}" /></td>
						<td><c:out value="${u.tel}" /></td>
					</tr>
					<c:set var="i" value="${i + 1}" scope="page" />
				</c:forEach>
			</table>
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
		