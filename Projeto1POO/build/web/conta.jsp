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
        <title>Index - JSPF Page</title>
    </head>
      <header>
          <%@include file="WEB-INF/jspf/menu.jspf" %>
          <h1>Tabela Price</h1>  
                
                      </header>
    <body>
        <br></br>
         <%
    try{
        double PV = Double.parseDouble(request.getParameter("PV"));
        out.println("<h2>Valor Presente = " +PV + "</h2>"); 
         double i1 = Double.parseDouble(request.getParameter("i"));
         out.println("<h2>Taxa de Juros = " +i1 + "% </h2>");
         double n = Double.parseDouble(request.getParameter("n"));
         out.println("<h2>Número de períodos = " +n + " meses </h2>");       
                         
    } catch(Exception ex){
        
           out.println("<h2> Ocorreu um erro: " + ex.getLocalizedMessage() +"</h2>");
           }
%>
    <br><h3>Fórmula do cáculo de amortização</h2></br>
        <img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/8dbe8bece04d8706f912ee10f55e571e101fa5a7" width="150" height="200" alt="alt"/>
<%
    try{
        double PV = Double.parseDouble(request.getParameter("PV"));        
         double i1 = Double.parseDouble(request.getParameter("i"));         
         double n = Double.parseDouble(request.getParameter("n"));           
         double i = i1 / 100;
         double quad = java.lang.Math.pow((1+i),n);
         double pmt = PV * (i/(1 - (1/quad)));
         out.println("<h2>Valor da Parcela = " +pmt + "</h2>");
                         
    } catch(Exception ex){
        
           out.println("<h2> Ocorreu um erro: " + ex.getLocalizedMessage() +"</h2>");
           }
%>

          
        <br></br>
        <br></br>
        <p>Projeto 1 de POO - Análise e Desenvolvimento de Sistemas - Fatec PG.</p>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
