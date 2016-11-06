<%@page import="it.alfasoft.fabrizio.utility.Ruolo"%>
<%@page import="it.alfasoft.fabrizio.dao.UtenteDAO"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@page import="it.alfasoft.fabrizio.bean.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	 <jsp:useBean id="message" class="it.alfasoft.fabrizio.service.Messaggio" scope="request"></jsp:useBean>
	 <jsp:useBean id="cliente" class="it.alfasoft.fabrizio.bean.Cliente" scope="request"/>
	 
	 <jsp:setProperty property="*" name="cliente" />

     
<%
	Gestione g = new Gestione();
	cliente.setPassword(g.codificaPsw(cliente.getPassword()));
  	if(g.readClienteId(cliente.getId_utente())){
	 	 g.updateCliente(cliente);
	 	 response.sendRedirect("doElencoClienti.jsp?#lista");

  	}
  
%>