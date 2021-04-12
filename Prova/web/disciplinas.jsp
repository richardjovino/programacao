<%-- 
    Document   : newjsp
    Created on : 12 de abr. de 2021, 11:44:52
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("valores") != null)  {
        session.setAttribute("session.EP1", request.getParameter("EP1"));
        session.setAttribute("session.EP2", request.getParameter("EP2"));
        session.setAttribute("session.PP1", request.getParameter("PP1"));
        session.setAttribute("session.PP2", request.getParameter("PP2"));
        session.setAttribute("session.BP1", request.getParameter("BP1"));
        session.setAttribute("session.BP2", request.getParameter("BP2"));
        session.setAttribute("session.IP1", request.getParameter("IP1"));
        session.setAttribute("session.IP2", request.getParameter("IP2"));
        session.setAttribute("session.LP1", request.getParameter("LP1"));
        session.setAttribute("session.LP2", request.getParameter("LP2"));
        response.sendRedirect(request.getRequestURI());
    } 
    %>
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
        <form>
            <table border="1">
                <tr>
                    <th>Dia/Horário</th>
                    <th>Disciplina</th>
                    <th>P1</th>
                    <th>P2</th>
                </tr>
                <tr>
                    <th>Segunda Feira/Terça Feira- 13:10 às 14:50/16:50 às 18:30</th>
                    <th>Engenharia de Software II</th>
                    <th><input type="number" name="EP1"/></th>
                    <th><input type="number" name="EP2"/></th>
                </tr>
                <tr>
                    <th>Segunda Feira - 15:00 às 18:30</th>
                    <th>Programação Orientada a Objetos</th>
                    <th><input type="number" name="PP1"/></th>
                    <th><input type="number" name="PP2"/></th>
                </tr>
                <tr>
                    <th>Terça Feira - 13:10 às 16:40</th>
                    <th>Banco de Dados</th>
                    <th><input type="number" name="BP1"/></th>
                    <th><input type="number" name="BP2"/></th>
                </tr>
                <tr>
                    <th>Quarta Feira - 16:50 às 18:30</th>
                    <th>Interação Humano Computador</th>
                    <th><input type="number" name="IP1"/></th>
                    <th><input type="number" name="IP2"/></th>
                </tr>
                <tr>
                    <th>Sexta Feira - 13:10 às 16:40</th>
                    <th>Linguagem de Programação IV - INTERNET</th>
                    <th><input type="number" name="LP1"/></th>
                    <th><input type="number" name="LP2"/></th>
                </tr>
                
            </table>
            <input type="submit" name="valores" value="Inserir"/>
           </form>   
            <%}%>  
    </body>
</html>
