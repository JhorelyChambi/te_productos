<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.producto"%>
<%
    ArrayList<producto> lista = (ArrayList<producto>)session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <title>Pagina JFCC</title>
    </head>
    <body>
    
        <center><table border="1">
       <tr><th>
       <center><h>SEGUNDO PARCIAL TEM-742</h></center><br>
        <center><h>Nombre: Jhorely Felicidad Chambi Choque</h></center><br>
        <center><h>Carnet: 10034047</h></center><br>
       </th></tr>
       </table></center>
        <center><h1>PRODUCTOS</h1></center><br>
    
        <a href ="MainController?op=nuevo">Nuevo registro</a><br>
        <center><table border ="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>EDITAR</th>
                <th>ELIMINAR</th>
            </tr>
            <%
                if (lista != null) {
                    for(producto item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href = "MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href = "MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick="return confirm('Esta seguro  de eliminar el registro?');">Eliminar</a></td>
            </tr> 
            <%
                    }
                }
            %>    
        </table></center>
    </body>
</html>

