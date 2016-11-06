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
	if(g.readDipendenteId(dipendente.getId_utente())){ 
		
		g.setBeanDipendente(dipendente);
		//System.out.println(g.codificaPsw(cliente.getPassword()));
 		//cliente.setPassword(g.codificaPsw(cliente.getPassword()));
%>

<jsp:forward page="../view/FormEditDipendente.jsp" />

<%

	 }
	
	 %>