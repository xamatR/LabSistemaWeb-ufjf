<%-- 
    Document   : users
    Created on : 13/12/2022, 22:18:12
    Author     : mathe
--%>

<%@page import="Servelets.UsuarioJpaController"%>
<%@page import="java.util.List"%>
<%@page import="Servelets.Usuario"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="components/header.jsp"%>
        <h1>users</h1>
        <%
                EntityManagerFactory enf = Persistence.createEntityManagerFactory("labSistemaWebPU");
                UsuarioJpaController ujc = new UsuarioJpaController(enf);
                List<Usuario> u = ujc.findUsuarioEntities();
                for(Usuario i : u){%>
                <p><%=i.getNome()%></p><%
                }
                enf.close();
            %>
        
    </body>
</html>
