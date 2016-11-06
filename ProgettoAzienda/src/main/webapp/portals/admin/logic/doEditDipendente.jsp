<%@page import="it.alfasoft.fabrizio.utility.Ruolo"%>
<%@page import="it.alfasoft.fabrizio.dao.UtenteDAO"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@page import="it.alfasoft.fabrizio.bean.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	 <jsp:useBean id="message" class="it.alfasoft.fabrizio.service.Messaggio" scope="request"></jsp:useBean>
	 <jsp:useBean id="dipendente" class="it.alfasoft.fabrizio.bean.Dipendente" scope="request"/>
	 
	 <jsp:setProperty property="*" name="dipendente" />

     
<%
	Gestione g = new Gestione();
dipendente.setPassword(g.codificaPsw(dipendente.getPassword()));
  	if(g.readDipendenteId(dipendente.getId_utente())){
	 	 g.updateDipendente(dipendente);
	 	 response.sendRedirect("doElencoDipendenti.jsp?cmd=elenco&#lista");

  	}
  
%>