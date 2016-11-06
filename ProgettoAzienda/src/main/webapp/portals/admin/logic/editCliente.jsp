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
	if(g.readClienteId(cliente.getId_utente())){ 
		
		g.setBeanCliente(cliente);
		//System.out.println(g.codificaPsw(cliente.getPassword()));
 		//cliente.setPassword(g.codificaPsw(cliente.getPassword()));
%>

<jsp:forward page="../view/FormEditCliente.jsp" />

<%
	 }
	
	 %>