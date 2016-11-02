<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@page import="it.alfasoft.fabrizio.utility.Ruolo"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="admin" class="it.alfasoft.fabrizio.bean.Admin" scope="session"/>

<jsp:useBean id="cliente" class="it.alfasoft.fabrizio.bean.Cliente" scope="request" />
<jsp:setProperty property="*" name="cliente" />
<jsp:useBean id="msg" class="it.alfasoft.fabrizio.service.Messaggio" scope="request" />
<%
	Gestione g = new Gestione();
    if(cliente.isValidLogin()){
    	//Form non vuoto
    	if(g.readUserNomeCog(cliente.getNome(), cliente.getCognome())==null){
    		//Utente non registrato		
    			if(g.readUserUser(cliente.getUsername())==null){
    				//Username disponibile
    				cliente.setRuolo(Ruolo.CLIENTE);
    				cliente.setPassword(g.codificaPsw(cliente.getPassword()));
    				g.createCliente(cliente);
    				msg.successfull();
    				%>
<jsp:forward page="RegistrazioneNuovoCliente.jsp" />
<%
    			}else{
    				//Username non disponibile
    				msg.notAvailable();
    				%>
<jsp:forward page="RegistrazioneNuovoCliente.jsp" />
<%
    			}	
    	}else{
    		//Utente già registrato
    		msg.alreadyE();
			%>
<jsp:forward page="RegistrazioneNuovoCliente.jsp" />
<%  		
		}
    }else{
    	//Form vuoto
    	msg.notValid();
		%>
<jsp:forward page="RegistrazioneNuovoCliente.jsp" />
<%   	
    }    
	%>