<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<jsp:useBean id="admin" class="it.alfasoft.fabrizio.bean.Admin" scope="session"/>

<jsp:useBean id="msg" class="it.alfasoft.fabrizio.service.Messaggio"
	scope="request" />

<!DOCTYPE html>
<html>
	
	<!-- Include di HEAD -->
	<jsp:include page="../../headerHTML.jsp"/>
	
</head>
<body>
	
	<!-- Include di NAVBAR -->
	<jsp:include page="../parts/NavbarAdmin.jsp"/>
<%
    	if(admin.isValid()){
    		
    %>			
		<!--fluid-container-->
		<div class="ch-container">
			<!--fluid-row-->
			<div class="row">
			
				<!-- Include di NAVBAR -->
				<jsp:include page="../parts/MenuLateraleAdmin.jsp"/>
					
					<!-- content starts -->
					<div id="content" class="col-lg-10 col-sm-10">
				
						<!-- Include di BREADCRUMB -->
						<jsp:include page="../../breadcrumbHTML.jsp"/>
							
							<div class="row">
							    <div class="box col-md-12">
							        <div class="box-inner">
							            <div class="box-header well" data-original-title="">
							            	 <h2><i class="glyphicon glyphicon-edit"></i> Registra Cliente</h2>
							            </div>
							            <div class="box-content">
							                <form role="form" action="../logic/registraCliente.jsp" method="post">
							                    <div class="form-group">
							                        <label for="">Ragione Sociale</label>
							                        <input type="text" class="form-control" id="" name="ragSociale" placeholder="Inserisci Ragione Sociale">
							                    </div>
							                    <div class="form-group">
							                        <label for="">Nome</label>
							                        <input type="text" class="form-control" id="" name="nome" placeholder="Inserisci Nome">
							                    </div>
							                    <div class="form-group">
							                        <label for="">Cognome</label>
							                        <input type="text" class="form-control" id="" name="cognome" placeholder="Inserisci Cognome">
							                    </div>
							                    <div class="form-group">
							                        <label for="">Username</label>
							                        <input type="text" class="form-control" id="" name="username" placeholder="Inserisci Username">
							                    </div>
							                    <div class="form-group">
							                        <label for="">Password</label>
							                        <input type="text" class="form-control" id="" name="password" placeholder="Inserisci Password">
							                    </div>
							                    <div class="form-group">							
							                        <p class="help-block"> <c:out value="${msg.getMessaggio()}" /></p>
							                    </div>
							                    <button type="submit" class="btn btn-default">Submit</button>
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
			<jsp:include page="../../footer.jsp"/>
		
		</div>
		<!--/.fluid-container-->
<%
    }else{
    	response.sendRedirect(request.getContextPath()+"/portals/Login.jsp");
    }
%>		
<!-- Include di FOOTER -->
<jsp:include page="../../footerHTML.jsp"/>
		