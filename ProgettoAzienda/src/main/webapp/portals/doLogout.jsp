<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="msg" class="it.alfasoft.fabrizio.service.Messaggio" scope="request" />    

    <%
    session.invalidate();
    msg.doLogout();
    %>
        	<jsp:forward page="Login.jsp"/>