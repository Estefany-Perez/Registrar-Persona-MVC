
<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
      
          <%
            Persona p = new Persona();
            String Dui = (String)request.getAttribute("dui");
            if(p.eliminarE(Dui))
            {
                request.getRequestDispatcher("mostrar.do").forward(request, response);
            }
            
        %>
    </body>
</html>
