<%-- 
    Document   : Editar_B
    Created on : 06-07-2020, 09:30:09 PM
    Author     : bf247
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <center>  <h1>Modificar Personas</h1></center>
        <%
            String dui = request.getParameter("Dui");
            String nombres = request.getParameter("nombre");
            String apellidos = request.getParameter("apellido");
            if (nombres != null) {
                out.print("<form action='editar.do' method='POST' class='form-check  w-25 bg-blue container text-center formulario rounded formulario'>"
                        + "<label class='text-black'>Dui"
                        + "<input type='text' value='" + dui + "'disabled class='form-text'/></label>"
                        + "<label class='text-black'>Apellido: "
                        + "<input type='text' name='Apellido' class='m-1 form-text' value='" + apellidos + "'/></label>"
                        + "<label class='text-black'>Nombre:"
                        + "<input type='text'name='Nombre' class='form-text' value='" + nombres + "'/> </label>"
                        + "<input type='hidden' value='" + dui + "' name='Dui'/>"
                        + "<input type='submit' value='Actualizar Datos' class='btn btn-primary m-2 text-black'>"
                        + "</form>");
            }
            else{
                request.getRequestDispatcher("mostrar.do").forward(request,response);
            }
        %>  
    </body>
</html>
