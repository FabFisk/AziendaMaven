<%@page import="it.alfasoft.fabrizio.bean.Rubrica"%>
<%@page import="java.util.List"%>
<%@page import="it.alfasoft.fabrizio.bean.Voce"%>
<%@page import="it.alfasoft.fabrizio.bean.Utente"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="cliente" class="it.alfasoft.fabrizio.bean.Cliente" scope="session"/>
  
	<%
		Gestione g = new Gestione();
		System.out.println(cliente.getNome());
//		Rubrica r = g.trovaRubrica(user);
		List<Voce> voci = g.getAllVoci(cliente.getRubrica());
		request.setAttribute("lista", voci);	
    %>
    <jsp:forward page="ElencoVociCliente.jsp"/>