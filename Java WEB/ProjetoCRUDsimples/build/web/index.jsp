<%-- 
    Document   : index
    Created on : 29 de mai. de 2021, 20:00:36
    Author     : Richard
--%>

<%@page import="db.TasksConnector"%>
<%@page import="java.util.ArrayList"%>
<%@page import="web.DbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    ArrayList<String> taskList = new ArrayList<>();
    try{
        if(request.getParameter("add") != null){
            String name = request.getParameter("taskName");
            TasksConnector.addTask(name);
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("remove") != null){
            String name = request.getParameter("taskName");
            TasksConnector.removeTask(name);
            response.sendRedirect(request.getRequestURI());
        }
        taskList = TasksConnector.getTasks();
    }catch(Exception ex){
        error = ex.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD: Início</title>
    </head>
    <body>
        <h1>Projeto CRUD simples</h1>
        <hr/>
        <%if(DbListener.exception != null){%>
        <div style="color:red">
            Erro na criação da tabela: <%= DbListener.exception.getMessage() %>
        </div>
        <hr/>
        <%}%>
        <%if(error != null){%>
        <div style="color:red">
            Erro no processamento da página: <%= error %>
        </div>
        <hr/>
        <%}%>
        <form>
            <input type="text" name="taskName"/>
            <input type="submit" name="add" value="Adicionar tarefa"/>
        </form>
        <hr/>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Exclusão</th>
            </tr>
            <% for(String taskName: taskList){ %>
            <tr>
                <td><%= taskName %></td>
                <td>
                    <form>
                        <input type="hidden" name="taskName" value="<%= taskName %>"/>
                        <input type="submit" name="remove" value="Remover"/>
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
        <br></br> 
        <br></br>  
        <br></br>  
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
