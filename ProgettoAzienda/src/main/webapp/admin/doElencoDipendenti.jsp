<%@page import="java.util.List"%>
<%@page import="it.alfasoft.fabrizio.bean.Utente"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<%
		Gestione g = new Gestione();
		List<Utente> dipendenti = g.getListDipendenti();
		request.setAttribute("lista", dipendenti);	
		
		if(request.getParameter("n").equals("1")){
	%>
	<jsp:forward page="ElencoDipendenti.jsp"/>
	<%		
		}else{
	%>
	<jsp:forward page="RegistraBusta.jsp"/>
	<%	
		}
    %>
    