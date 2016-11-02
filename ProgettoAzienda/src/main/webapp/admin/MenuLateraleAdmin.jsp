<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--     <%@ page isELIgnored="false" %> --%>
			<!-- left menu starts -->
			<div class="col-sm-2 col-lg-2">
				<div class="sidebar-nav">
					<div class="nav-canvas">
						<div class="nav-sm nav nav-stacked"></div>
						<ul class="nav nav-pills nav-stacked main-menu">
							<li class="nav-header">Main</li>
							<li><a class="ajax-link" href="${pageContext.request.contextPath}/admin/HomePageAdmin.jsp"><i
									class="glyphicon glyphicon-home"></i><span> Home Page</span></a></li>
							<li><a class="ajax-link" href="${pageContext.request.contextPath}/admin/RegistrazioneNuovoCliente.jsp"><i
									class="glyphicon glyphicon-plus"></i><span> Aggiungi Cliente</span></a></li>
							<li><a class="ajax-link" href="${pageContext.request.contextPath}/admin/doElencoClienti.jsp?#lista"><i
									class="glyphicon glyphicon-th-list"></i><span> Elenco Clienti</span></a></li>
							<li><a class="ajax-link" href="${pageContext.request.contextPath}/admin/RegistrazioneNuovoDipendente.jsp"><i
									class="glyphicon glyphicon-plus"></i><span> Aggiungi Dipendente</span></a></li>
							<li><a class="ajax-link" href="${pageContext.request.contextPath}/admin/doElencoDipendenti.jsp?#lista&n=1"><i
									class="glyphicon glyphicon-th-list"></i><span> Elenco Dipendenti</span></a></li>
							<li><a class="ajax-link" href="${pageContext.request.contextPath}/admin/doElencoDipendenti.jsp?#lista&n=2"><i
									class="glyphicon glyphicon-euro"></i><span> Emissione Busta</span></a></li>
							<li><a class="ajax-link" href="${pageContext.request.contextPath}/admin/ElencoBuste.jsp?#lista"><i
									class="glyphicon glyphicon-th-list"></i><span> Elenco Buste</span></a></li>				
						</ul>
					</div>
				</div>
			</div>
			<!--/span-->
			<!-- left menu ends -->