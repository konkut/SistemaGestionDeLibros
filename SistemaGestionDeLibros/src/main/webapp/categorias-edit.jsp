<%@page import="clases.Categorias" %>
<%
    Categorias item = (Categorias) request.getAttribute("item");
    String tipo = (String) request.getAttribute("tipo");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <img id="escudo" class="navbar-brand" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6oRlTbvLPtYVAd62ocjengkvclk8f1eHdicuikgr3sUpM70SWsWhhlkXS8A&s"></img>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="libros.jsp">LIBROS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="categorias.jsp">CATEGORIAS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">administrador</a>
                    </li>
                </ul>

            </div>
        </nav>
        <h1><%= (tipo == "new") ? "Nueva" : "Editar"%>Categoria</h1>
        <form action="CategoriaController" method="post">
            <input type="hidden" name="tipo" value="<%= tipo %>"/>
            <table class="table-dark">
                    <tr>
                    <td class="text-white">Id</td>
                    <td><input type="text" name="id" value="<%= item.getId()%>"/></td>
                    </tr>
                    <tr>
                    <td class="text-white">Categoria</td>
                    <td><input type="text" name="categoria" value="<%= item.getCategoria()%>"/></td>
                    </tr>
                    <tr>
                    <td></td>
                    <td><input type="submit">Enviar</td>
                </tr>
            </table>
        </form>
    </body>
</html>
