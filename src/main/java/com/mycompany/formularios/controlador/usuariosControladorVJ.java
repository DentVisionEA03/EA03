package com.mycompany.formularios.controlador;

import com.mycompany.formularios.Dao.UsuariosDAOVJ;
import com.mycompany.formularios.modelo.usuarios;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "usuariosControladorVJ", urlPatterns = {"/usuariosControladorVJ"})
public class usuariosControladorVJ extends HttpServlet {
    
    UsuariosDAOVJ usuariosDAO = new UsuariosDAOVJ();

    private final String paglistar = "/vistasJ/listarJ.jsp";
    private final String pagcrear = "/vistasJ/crearJ.jsp";
    private final String pagbuscar= "/vistasJ/buscarJ.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion == null) {
            listar(request, response);
            return;
        }

        switch (accion) {
            case "listar":
                listar(request, response);
                break;

            case "guardar":
                guardar(request, response);
                break;

            case "crear":
                request.getRequestDispatcher(pagcrear).forward(request, response);
                break;
                
            case "buscar":                         
                    buscar(request, response);                    
                break;   

            default:
                listar(request, response);
                break;
        }
    }

    // 🔹 LISTAR
    protected void listar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("usuarios", usuariosDAO.ListarTodos());
        request.getRequestDispatcher(paglistar).forward(request, response);
    }

    // 🔹 GUARDAR (CREAR USUARIO)
    protected void guardar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 📥 RECIBIR DATOS DEL JSP
        String tipo = request.getParameter("tipo_documento");
        String doc = request.getParameter("documento");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String email = request.getParameter("email");
        String confEmail = request.getParameter("conf_email");
        String pass = request.getParameter("contrasena");
        String confPass = request.getParameter("conf_contrasena");

        // 🔒 VALIDACIÓN BÁSICA (IMPORTANTE)
        if (!email.equals(confEmail)) {
            request.setAttribute("error", "Los correos no coinciden");
            request.getRequestDispatcher(pagcrear).forward(request, response);
            return;
        }

        if (!pass.equals(confPass)) {
            request.setAttribute("error", "Las contraseñas no coinciden");
            request.getRequestDispatcher(pagcrear).forward(request, response);
            return;
        }

        // 🧱 CREAR OBJETO
        usuarios u = new usuarios();
        u.setTipo_documento(tipo);
        u.setDocumento(doc);
        u.setNombres(nombres);
        u.setApellidos(apellidos);
        u.setEmail(email);
        u.setConf_email(confEmail);
        u.setContrasena(pass);
        u.setConf_contrasena(confPass);

        // 💾 GUARDAR EN BD
        boolean resultado = usuariosDAO.insertar(u);

        if (resultado) {
            request.setAttribute("mensaje", "Usuario creado correctamente");
            listar(request, response);
        } else {
            request.setAttribute("error", "Error al guardar usuario");
            request.getRequestDispatcher(pagcrear).forward(request, response);
        }
    }
    


    protected void buscar(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    try {

        String idStr = request.getParameter("id");

        if (idStr == null || idStr.trim().isEmpty()) {
            request.setAttribute("mensaje", "Debes ingresar un ID para buscar");
            request.getRequestDispatcher(pagbuscar).forward(request, response);
            return;
        }

        int id = Integer.parseInt(idStr);

        usuarios usuario = usuariosDAO.buscarPorId(id);

        if (usuario != null) {
            request.setAttribute("usuario", usuario); // ✔ CORRECTO
        } else {
            request.setAttribute("mensaje", "Usuario no encontrado");
        }

        request.getRequestDispatcher(pagbuscar).forward(request, response);

    } catch (NumberFormatException e) {
        request.setAttribute("mensaje", "El ID debe ser numérico");
        request.getRequestDispatcher(pagbuscar).forward(request, response);

    } catch (Exception e) {
        request.setAttribute("mensaje", "Error al buscar el usuario");
        request.getRequestDispatcher(pagbuscar).forward(request, response);
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
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Controlador de usuarios";
    }
}