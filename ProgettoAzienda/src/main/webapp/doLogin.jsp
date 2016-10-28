<%@page import="it.alfasoft.fabrizio.utility.Ruolo"%>
<%@page import="it.alfasoft.fabrizio.dao.UtenteDAO"%>
<%@page import="it.alfasoft.fabrizio.bean.Utente"%>
<%@page import="it.alfasoft.fabrizio.service.Gestione"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <jsp:useBean id="utente" class="it.alfasoft.fabrizio.bean.Utente" scope="request"/>
 <jsp:useBean id="admin" class="it.alfasoft.fabrizio.bean.Admin" scope="session"/>
 <jsp:useBean id="cliente" class="it.alfasoft.fabrizio.bean.Cliente" scope="session"/>
 <jsp:useBean id="dipendente" class="it.alfasoft.fabrizio.bean.Dipendente" scope="session"/>   
    
    <jsp:setProperty property="*" name="utente"/>

<jsp:useBean id="msg" class="it.alfasoft.fabrizio.service.Messaggio" scope="request" />
	
<%
	Gestione g = new Gestione();


	//TODO: Finire il settaggio dei bean specifcii!!!!
    if(utente.isValidLogin()){
    	//Form non vuoto
    	utente.setPassword(g.codificaPsw(utente.getPassword()));
    	if(g.existUserBoolean(utente.getUsername(), utente.getPassword())){
    		//Utente registrato
    		g.setBeanUtente(utente);
    		Ruolo r = utente.getRuolo();
    		switch (r) {
    		case ADMIN:  
    			admin.setId_utente(utente.getId_utente());
				g.setBeanAdmin(admin);
				
    %>
<jsp:forward page="admin/HomePageAdmin.jsp" />
<%			

    			break;
    		case DIPENDENTE:
    			dipendente.setId_utente(utente.getId_utente());
    			g.setBeanDipendente(dipendente);

    %>
<jsp:forward page="dipendente/HomePageDipendente.jsp" />
<%	  		
    			break;
    		case CLIENTE:
    			cliente.setId_utente(utente.getId_utente());
    			g.setBeanCliente(cliente);

    %>
<jsp:forward page="cliente/HomePageCliente.jsp" />
<%			   			
    			break;
    		}
    	}else{
    		//Utente non registrato
    		msg.notRegister();
    %>
<jsp:forward page="Login.jsp" />
<%	
    	}
    }else{
    	//Form vuoto
    	msg.notValid();
    %>
<jsp:forward page="Login.jsp" />
<%	
    }    
	%>