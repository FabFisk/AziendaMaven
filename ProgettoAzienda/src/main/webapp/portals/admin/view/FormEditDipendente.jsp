<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<jsp:useBean id="admin" class="it.alfasoft.fabrizio.bean.Admin" scope="session"/>

<jsp:useBean id="dipendente" class="it.alfasoft.fabrizio.bean.Dipendente" scope="request"/>   

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
							            	 <h2><i class="glyphicon glyphicon-edit"></i> Aggiorna</h2>
							            </div>
							            <div class="box-content">
							            	<form role="form" action="../logic/doEditDipendente.jsp" method="post">	
							            		<div class="form-group hidden">
							                        <label for="">Id Cliente</label>
							                        <input type="text" class="form-control" id="" name="id_utente" value="<%=dipendente.getId_utente()%>">
							                    </div>
							                    <div class="form-group hidden">
							                        <label for="">ruolo</label>
							                        <input type="text" class="form-control" id="" name="ruolo" value="<%=dipendente.getRuolo()%>">
							                    </div>						             
							                    <div class="form-group">
							                        <label for="">Nome</label>
							                        <input type="text" class="form-control" id="" name="nome" value="<%=dipendente.getNome()%>">
							                    </div>
							                    <div class="form-group">
							                        <label for="">Cognome</label>
							                        <input type="text" class="form-control" id="" name="cognome" value="<%=dipendente.getCognome()%>">
							                    </div>
							                    <div class="form-group">
							                        <label for="">Username</label>
							                        <input type="text" class="form-control" id="" name="username" value="<%=dipendente.getUsername()%>">
							                    </div>
							                    <div class="form-group">
							                        <label for="">Password</label>
							                        <input type="password" class="form-control" id="" name="password" value="<%=dipendente.getPassword()%>">
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
		