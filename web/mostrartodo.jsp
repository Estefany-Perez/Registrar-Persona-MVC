
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : mostrartodo
    Created on : 05-29-2020, 10:55:18 AM
    Author     : Estefany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
    <center> <header class="bg-success" ><h1>Todos los registros</h1></header></center> 
      
        <br>
        <div class="container">
            <a class="btn btn-success" href="index.jsp">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered" id="mostrar">
                <thead>
                    <tr>
                        <th class="text-center">Dui</th>
                        <th class="text-center">Apellidos</th>
                         <th class="text-center">Nombres</th>
                         <th class="text-center" >Acciones</th>
                        
                    </tr>
                  </thead>
                  <tbody>
                     <c:forEach var="listaTotal" items="${sessionScope.personas}">
                      <tr>
                           
                       <td class="text-center">${listaTotal.dui}</td>
                       
                  
                          <td class="text-center" > ${listaTotal.apellidos}</td>
                  
                     
                          <td class="text-center" >${listaTotal.nombres}</td>
                       
                             
                 
                     <td> <form action="Editar_B.jsp" method="POST">
                                  
                               <center>    <button class="btn btn-primary" value="${listaTotal.dui}" name="Dui">Modificar</button>
                                  <input type="hidden" name="nombre" value="${listaTotal.nombres}"/>
                                      <input type="hidden" name="apellido" value="${listaTotal.apellidos}" />
                                      <tb>
                                            <a class="btn  btn-danger" href="eliminar.do?dui=${listaTotal.dui}">Eliminar</a>
                                   </c:forEach>
                                    </center> 
                     </td>   
                
                 
                                
                             
                      
                             
                      
                       </tr>
                     
                         
                      
                  </tbody>
            </table>
            </div>
        
    </body>
</html>

