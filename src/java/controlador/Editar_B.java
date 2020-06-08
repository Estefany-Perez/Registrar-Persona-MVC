package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;

public class Editar_B extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String nombres = request.getParameter("Nombre");
        String apellidos = request.getParameter("Apellido");
        String dui = request.getParameter("Dui");
        Persona p = new Persona();
        p.setApellidos(apellidos);
        p.setDui(dui);
        p.setNombres(nombres);
        if (p.Editar_B() == 1) {
            request.getRequestDispatcher("exito.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("noexito.jsp").forward(request, response);
        }
    }
        
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out=response.getWriter();
        String nombres = request.getParameter("Nombre");
        String apellidos = request.getParameter("Apellido");
        String dui = request.getParameter("Dui");
        Persona p = new Persona();
        p.setApellidos(apellidos);
        p.setDui(dui);
        p.setNombres(nombres);
        if (p.Editar_B() == 1) {
            request.getRequestDispatcher("exito.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("noexito.jsp").forward(request, response);
        }
    }

   

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}