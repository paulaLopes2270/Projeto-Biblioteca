package Controller;

import DAO.UsuariosDAO;
import Model.Usuarios;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "UsuariosController", urlPatterns = {"/UsuariosController"})
public class UsuariosController extends HttpServlet {

    private UsuariosDAO usuariosDAO;

    @Override
    public void init() throws ServletException {
        usuariosDAO = new UsuariosDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "listar";
        }

        switch (action) {
            case "cadastrar":
                showCadastrarForm(request, response);
                break;
            case "editar":
                showEditarForm(request, response);
                break;
            case "deletar":
                deletarUsuario(request, response);
                break;
            default:
                listarUsuarios(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "listar";
        }

        switch (action) {
            case "cadastrar":
                cadastrarUsuario(request, response);
                break;
            case "editar":
                editarUsuario(request, response);
                break;
            default:
                listarUsuarios(request, response);
                break;
        }
    }

    private void listarUsuarios(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Usuarios> listaUsuarios = usuariosDAO.listarUsuarios();
        request.setAttribute("listaUsuarios", listaUsuarios);
        request.getRequestDispatcher("listarUsuarios.jsp").forward(request, response);
    }

    private void showCadastrarForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("cadastrarUsuario.jsp").forward(request, response);
    }

    private void showEditarForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Usuarios usuarioExistente = usuariosDAO.getUsuario(id);
        request.setAttribute("usuario", usuarioExistente);
        request.getRequestDispatcher("editarUsuario.jsp").forward(request, response);
    }

    private void cadastrarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            Usuarios novoUsuario = new Usuarios(nome, email, senha);
            usuariosDAO.cadastrarUsuario(novoUsuario);
            response.sendRedirect("index.jsp?success=true");
        } catch (Exception e) {
            request.setAttribute("error", "An error occurred while processing your request");
            request.getRequestDispatcher("cadastrarUsuario.jsp").forward(request, response);
        }
    }

    private void editarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            Usuarios usuario = new Usuarios(id, nome, email, senha);
            usuariosDAO.atualizarUsuario(usuario);
            response.sendRedirect("UsuariosController");
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid number format");
            request.getRequestDispatcher("editarUsuario.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "An error occurred while processing your request");
            request.getRequestDispatcher("editarUsuario.jsp").forward(request, response);
        }
    }

    private void deletarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        usuariosDAO.deletarUsuario(id);
        response.sendRedirect("UsuariosController");
    }
}
