<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--  <%@ page isELIgnored="false" %> --%>
			<!-- left menu starts -->
			<div class="col-sm-2 col-lg-2">
				<div class="sidebar-nav">
					<div class="nav-canvas">
						<div class="nav-sm nav nav-stacked"></div>
						<ul class="nav nav-pills nav-stacked main-menu">
							<li class="nav-header">Main</li>
							<li><a class="ajax-link" href="${pageContext.request.contextPath}/portals/dipendente/view/HomePageDipendente.jsp"><i
									class="glyphicon glyphicon-home"></i><span> Home Page</span></a></li>
							<li class="accordion"><a href="#"><i
									class="glyphicon glyphicon-earphone"></i><span> Rubrica</span></a>
                   				<ul class="nav nav-pills nav-stacked">
                   					<li><a href="${pageContext.request.contextPath}/portals/dipendente/view/FormNuovaVoceDipendente.jsp">Aggiungi Contatto</a></li>
									<li><a href="${pageContext.request.contextPath}/portals/dipendente/logic/doElencoVoceDipendente.jsp#lista">Elenco Contatti</a></li>
									<li><a href="${pageContext.request.contextPath}/portals/dipendente/view/TrovaContatto.jsp">Trova Contatto</a></li>
                         		</ul>
                       		</li>		
							<li><a class="ajax-link" href="${pageContext.request.contextPath}/portals/dipendente/logic/doElencoBuste.jsp#lista"><i
									class="glyphicon glyphicon-euro"></i><span> Le mie buste</span></a></li>				
						</ul>
					</div>
				</div>
			</div>
			<!--/span-->
			<!-- left menu ends -->