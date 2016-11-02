<%@page import="it.alfasoft.fabrizio.bean.Dipendente"%>
<%@page import="it.alfasoft.fabrizio.dao.DipendenteDAO"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="admin" class="it.alfasoft.fabrizio.bean.Admin" scope="session"/>

<jsp:useBean id="busta" class="it.alfasoft.fabrizio.bean.BustaPaga" scope="request" />
<jsp:setProperty property="*" name="busta" />

<jsp:useBean id="msg" class="it.alfasoft.fabrizio.service.Messaggio" scope="request" />
<%
	Gestione g = new Gestione();
	DipendenteDAO dDAO = new DipendenteDAO();
	long id_d = Long.parseLong(request.getParameter("id_dipendente"));
	Dipendente d = dDAO.readUser(id_d);
	busta.setDipendente(d);
	
    if(busta.isValid()){
    	//Form non vuoto
    	if(g.readBusta(busta.getMese(), busta.getAnno(), busta.getDipendente())==null){
    		//busta non registrata		
    				g.createBusta(busta);
    				%>
<jsp:forward page="RegistraBusta.jsp" />

<%
    	}else{
    		//busta già registrato
//     		msg.alreadyE();
			%>
<jsp:forward page="RegistrazioneNuovoCliente.jsp" />
<%  		
		}
    }else{
    	//Form vuoto
//     	msg.notValid();
		%>
<jsp:forward page="RegistrazioneNuovoCliente.jsp" />
<%   	
    }    
%>