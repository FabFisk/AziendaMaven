<%@page import="it.alfasoft.fabrizio.bean.Rubrica"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="cliente" class="it.alfasoft.fabrizio.bean.Cliente" scope="session"/>
  
<jsp:useBean id="voce" class="it.alfasoft.fabrizio.bean.Voce"	scope="request" />
<jsp:setProperty property="*" name="voce"/>
<jsp:useBean id="msg" class="it.alfasoft.fabrizio.service.Messaggio" scope="request"/>


<% 
	Gestione g = new Gestione();
// 	Rubrica r = g.trovaRubrica(user);
// 	System.out.println("ciao "+user.getNome()+" ciao ");
	
	if(voce.isValid()){
		//form compilato
		if(!g.readVoce(cliente.getRubrica(), voce)){
			//voce non presente
			g.createVoce(cliente.getRubrica(), voce);
			msg.successfull();
%>
<jsp:forward page="FormNuovaVoceCliente.jsp"/>
<%			
		}else{
			//voce presente
			msg.alreadyR();
%>
<jsp:forward page="FormNuovaVoceCliente.jsp"/>
<%		
		}		
	}else{
		//form non compilato
		msg.notValid();
%>
<jsp:forward page="FormNuovaVoceCliente.jsp"/>
<%			
	}
%>