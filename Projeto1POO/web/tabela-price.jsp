<%-- 
    Document   : index
    Created on : 22 de mar. de 2021, 16:05:28
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price - JSPF Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Tabela Price</h1>
        <form action="conta.jsp">
           <br><input type="number" name="PV" />Valor Presente</br>
            <br><input type="number" name="i" />Taxa de Juros</br>
            <br><input type="number" name="n" />Número de Periodos</br>
            <br><input type="submit" name="somar" value="Calcular"/></br>
         </form>
         <br></br>
         <br></br>
        <p>Projeto 1 de POO - Análise e Desenvolvimento de Sistemas - Fatec PG.</p>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
