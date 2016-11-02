<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@page import="it.alfasoft.fabrizio.utility.Ruolo"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="admin" class="it.alfasoft.fabrizio.bean.Admin" scope="session"/>

<jsp:useBean id="dipendente" class="it.alfasoft.fabrizio.bean.Dipendente" scope="request" />

<jsp:setProperty property="*" name="dipendente" />

<jsp:useBean id="msg" class="it.alfasoft.fabrizio.service.Messaggio"
	scope="request" />
<%

	Gestione g = new Gestione();
    if(dipendente.isValidLogin()){
    	//Form non vuoto
    	if(g.readUserNomeCog(dipendente.getNome(), dipendente.getCognome())==null){
    		//Utente non registrato		
    			if(g.readUserUser(dipendente.getUsername())==null){
    				//Username disponibile
    				dipendente.setRuolo(Ruolo.DIPENDENTE);  
    				dipendente.setPassword(g.codificaPsw(dipendente.getPassword()));
    				g.createDip(dipendente);
    				msg.successfull();
    				%>
<jsp:forward page="../view/RegistrazioneNuovoDipendente.jsp" />
<%
    			}else{
    				//Username non disponibile
    				msg.notAvailable();
    				%>
<jsp:forward page="../view/RegistrazioneNuovoDipendente.jsp" />
<%
    			}	
    	}else{
    		//Utente già registrato
    		msg.alreadyE();
			%>
<jsp:forward page="../view/RegistrazioneNuovoDipendente.jsp" />
<%  		
		}
    }else{
    	//Form vuoto
    	msg.notValid();
		%>
<jsp:forward page="../view/RegistrazioneNuovoDipendente.jsp" />
<%   	
    }    
	%>