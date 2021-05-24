<%-- 
    Document   : contato
    Created on : 23 de mai. de 2021, 22:00:42
    Author     : Richard
--%>
<%@page import="br.edu.fatecpg.web.Contato"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("contato.add")!=null){
        String name = request.getParameter("contato.name");
        String email = request.getParameter("contato.email");
        String telefone = request.getParameter("contato.telefone");
        Contato newContato = new Contato(name, email, telefone);
        Database.addContato(newContato);
        response.sendRedirect(request.getRequestURI());
    }else if(request.getParameter("contato.remove")!=null){
        String email = request.getParameter("contato.email");
        Database.removeContato(email);
        response.sendRedirect(request.getRequestURI());
    }
    
    ArrayList<Contato> contatos = Database.getContatos();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contatos - MySuperApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Contatos</h2>
                   <%if(session.getAttribute("session.name")==null){%>
            <p>Você não tem autorização para acessar o sistema</p>
            <p></p>
            <p>Favor fazer o login!</p>
        <%} else {%>
        <form>
            Nome: <input type="text" name="contato.name"/>
            Email: <input type="text" name="contato.email"/>
            Telefone: <input type="number" name="contato.telefone"/>
            <input type="submit" name="contato.add"/>
        </form>
        <hr/>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Exclusão</th>
            </tr>
            <%for(Contato contato: contatos){%>
            <tr>
                <td><%= contato.getName() %></td>
                <td><%= contato.getEmail() %></td>
                <td><%= contato.gettelefone() %></td>
                <td>
                    <form>
                        <input type="hidden" name="contato.email" value="<%=contato.getEmail()%>"/>
                        <input type="submit" name="contato.remove" value="Excluir"/>
                    </form>
                </td>
            </tr>
            <%} %>
        </table>
           <%} %>
           <br></br> 
        <br></br>  
        <br></br>  
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
