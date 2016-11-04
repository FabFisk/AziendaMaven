<%@page import="com.google.gson.JsonElement"%>
<%@page import="it.alfasoft.fabrizio.bean.Voce"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="cliente"
	class="it.alfasoft.fabrizio.bean.Cliente" scope="session" />


<% 
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		Gestione g = new Gestione();
		Gson gson = new Gson();
		JsonObject jobj = new JsonObject();
		Voce v = g.readVoceNomeCognome(cliente.getRubrica(), nome, cognome);
		JsonElement voceJson = gson.toJsonTree(v);
		
		if(v == null){
			jobj.addProperty("success",false);
		}else{
			jobj.addProperty("success",true);
		}
		jobj.add("voce", voceJson);

%>