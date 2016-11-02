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
						<th>Mese</th>
						<th>Anno</th>
						<th>Totale</th>
					</tr>
				</thead>
				<c:set var="i" value="1" scope="page" />
				<c:forEach items="${lista}" var="b">
					<tr>
						<td><c:out value="${i}" /></td>
						<td><c:out value="${b.mese}" /></td>
						<td><c:out value="${b.anno}" /></td>
						<td><c:out value="${u.totale}" /></td>
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
		