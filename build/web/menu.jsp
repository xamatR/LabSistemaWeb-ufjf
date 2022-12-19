<%-- 
    Document   : menu
    Created on : 03/11/2022, 21:15:00
    Author     : mathe
--%>

<%@page import="Servelets.UserCounter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String nome = (String) session.getAttribute("nome");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>menu</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="components/header.jsp"%>
        <div class="row">
            <div class="col-9">
                <div class="card-title justify-content-center d-flex">
                    <h1 class="">Olá , <%=nome%></h1>
                </div>
                <div class="card-title justify-content-center d-flex">                    <h2>Numero de usuarios online: <%=UserCounter.getCount()%></h2>
                </div>
                <div class="p-5 flex-wrap justify-content-center align-items-center">
                    <p>Consectetur qui voluptate irure voluptate non elit. Ex minim culpa tempor eiusmod et magna. Duis quis in
                        sunt ad reprehenderit. Sint dolore fugiat deserunt fugiat ea magna fugiat voluptate nisi amet ut elit.
                    </p>

                    <p>Eiusmod commodo cillum est laboris. Do laboris occaecat elit laborum cupidatat quis aute excepteur. Aute
                        ea labore do officia. Pariatur esse exercitation enim veniam dolore do.</p>

                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fugit assumenda soluta possimus suscipit! Unde,
                        facere assumenda nobis et fugiat earum quaerat enim tempore amet quidem cupiditate laborum esse numquam
                        debitis?</p>

                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi, unde earum totam magni aliquam in porro
                        nobis error expedita debitis alias incidunt architecto ea explicabo modi? Libero corrupti dolores
                        doloribus?</p>
                </div>

            </div>
            <div class="w-25 col-10 p-5">
                <jsp:include page = "adrotator.jsp" flush = "true" />
            </div>
        </div>
    </body>
</html>








