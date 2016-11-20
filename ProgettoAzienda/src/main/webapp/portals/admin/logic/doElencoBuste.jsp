<%@page import="it.alfasoft.fabrizio.bean.BustaPagaOld"%>
<%@page import="java.util.List"%>
<%@page import="it.alfasoft.fabrizio.bean.Utente"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<%
		Gestione g = new Gestione();
		List<BustaPagaOld> buste = g.getListBuste();		
		request.setAttribute("lista", buste);	
    %>
    <jsp:forward page="../view/ElencoBuste.jsp"/>