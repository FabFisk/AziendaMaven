<%@page import="com.google.gson.JsonElement"%>
<%@page import="it.alfasoft.fabrizio.bean.Voce"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="dipendente"
	class="it.alfasoft.fabrizio.bean.Dipendente" scope="session" />


<% 
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		out.println(dipendente.getCognome());
		Gestione g = new Gestione();
		Gson gson=new Gson();
		JsonObject jobj= new JsonObject();
		System.out.println(dipendente.getCognome());
		Voce v = g.readVoceNomeCognome(dipendente.getRubrica(), nome, cognome);
		JsonElement voceJson = gson.toJsonTree(v);
		
		if(v == null){
			jobj.addProperty("success",false);
		}else{
			jobj.addProperty("success",true);
		}
		jobj.add("voce", voceJson);

%>