<%@page import="it.alfasoft.fabrizio.dao.VoceDao"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="it.alfasoft.fabrizio.bean.Voce"%>
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
		Gestione g = new Gestione();
		JSONObject jobj = new JSONObject();
		JSONArray jArray = new JSONArray();
		
		Voce v = g.readVoceNomeCognome(dipendente.getRubrica(), nome, cognome);
		
		jobj.put("nome", v.getNome());
		jobj.put("cognome", v.getCognome());
		jobj.put("telefono", v.getTel());
		jArray.put(jobj);
		
		jobj.put("success", false);
		
		if(v != null){
			jobj.put("success", true);
		}
		
		jobj.put("voci", jArray);
		
 		System.out.print(jobj.toString());
  		response.setContentType("application/json");
  		response.getWriter().write(jobj.toString());
		
%>