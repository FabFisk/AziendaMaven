<%@page import="it.alfasoft.fabrizio.utility.Ruolo"%>
<%@page import="it.alfasoft.fabrizio.dao.UtenteDAO"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@page import="it.alfasoft.fabrizio.bean.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	 <jsp:useBean id="message" class="it.alfasoft.fabrizio.service.Messaggio" scope="request"></jsp:useBean>
	 <jsp:useBean id="cliente" class="it.alfasoft.fabrizio.bean.Cliente" scope="request"/>
	 <jsp:useBean id="dipendente" class="it.alfasoft.fabrizio.bean.Dipendente" scope="request"/>

<%
	Gestione g = new Gestione();
	long id = Long.parseLong(request.getParameter("id_utente"));

	if(g.checkRuolo(id)==Ruolo.CLIENTE){
%>
		<jsp:setProperty property="*" name="cliente" />
<%		
		if(g.readClienteId(cliente.getId_utente())){ 
			g.setBeanCliente(cliente);

%>
			<jsp:forward page="../view/FormEditUtente.jsp" />
<%
	 	}else{
		 
	 	}
	}else if(g.checkRuolo(id)==Ruolo.DIPENDENTE){
%>
		<jsp:setProperty property="*" name="dipendente" />
<%			
		if(g.readDipendenteId(dipendente.getId_utente())){ 	
			g.setBeanDipendente(dipendente);
%>
			<jsp:forward page="../view/FormEditUtente.jsp" />
<%
		 }
	}
	
%>