<%@page import="it.alfasoft.fabrizio.utility.Ruolo"%>
<%@page import="it.alfasoft.fabrizio.dao.UtenteDAO"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@page import="it.alfasoft.fabrizio.bean.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	 <jsp:useBean id="message" class="it.alfasoft.fabrizio.service.Messaggio" scope="request"></jsp:useBean>

<%
Gestione g= new Gestione();
long id = Long.parseLong(request.getParameter("id_utente"));

if(g.checkRuolo(id)==Ruolo.CLIENTE){
	
	g.eliminaUtenteById(id);
	response.sendRedirect("doElencoClienti.jsp?#lista");
	
}else if(g.checkRuolo(id)==Ruolo.DIPENDENTE){
	
	g.eliminaUtenteById(id);
	response.sendRedirect("doElencoDipendenti.jsp?cmd=elenco&#lista");
	
}

%>