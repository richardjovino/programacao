<%-- 
    Document   : newjsp
    Created on : 12 de abr. de 2021, 11:44:52
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf"%>
        <%if(session.getAttribute("session.username") ==null){%>
        <div style='color:red'>Você não tem permissão para acessar essa página</div>
        <%} else  { %>
        <h2>Richard Gonçalves Jovino</h2>
        <h2>Ra 1290482012034</h2>
        <h2>Inicei na FATEC no 1° semestre de 2020</h2>
        <a href="https://github.com/richardjovino/programacao">>Link para Meu Github</a>
        
            <%}%>  
    </body>
</html>
