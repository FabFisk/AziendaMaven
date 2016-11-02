<%@page import="it.alfasoft.fabrizio.utility.Ruolo"%>
<%@page import="it.alfasoft.fabrizio.dao.UtenteDAO"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@page import="it.alfasoft.fabrizio.bean.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	 <jsp:useBean id="message" class="it.alfasoft.fabrizio.service.Messaggio" scope="request"></jsp:useBean>

<%
Gestione g= new Gestione();

long id=Long.parseLong(request.getParameter("id_Utente"));

UtenteDAO uDAO = new UtenteDAO();

Utente u = uDAO.readUser(id);

if(u.getRuolo()==Ruolo.CLIENTE){
	
	g.eliminaUtenteById(id);
	response.sendRedirect("ElencoClienti.jsp");
	
}else if(u.getRuolo()==Ruolo.DIPENDENTE){
	
	g.eliminaUtenteById(id);
	response.sendRedirect("ElencoDipendenti.jsp");
	
}

%>