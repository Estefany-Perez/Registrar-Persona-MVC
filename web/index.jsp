<%-- 
    Document   : index
    Created on : 05-28-2020, 10:17:38 AM
    Author     : Estefany
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Personas</h1>
        <form action="recibir.do" method="POST">
            DUI:<input type="text" name="txtDui" value="" />   <br>
            Apellidos: <input type="text" name="txtApellidos" value="" /><br>
            Nombres:<input type="text" name="txtNombres" value="" /><br>
            <input type="submit" value="Registrar nueva Persona" /> <br> 
        </form>
       
    </body>
</html>