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
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
      
    </head>
    <body>
    <center>
         <div class="btn-group-vertical">
             <div class="col-lg-12">
                 
                 <center><h1>Registro de Personas</h1> </center>
            <form action="recibir.do" method="POST">
           
            DUI:<input  class="form-control" type="text" name="txtDui" value="" required/>   <br>
            Apellidos: <input class="form-control" type="text" name="txtApellidos" value="" required /><br>
            Nombres:<input class="form-control" type="text" name="txtNombres" value="" required /><br>
            <input class="btn btn-primary"  type="submit" value="Registrar nueva Persona" /> <br> 
                </form> 
            </div>
              </div>
       
            </center>
   
    </body>
</html>