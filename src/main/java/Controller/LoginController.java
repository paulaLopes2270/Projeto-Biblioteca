package Controller;

import DAO.UsuariosDAO;
import Model.Usuarios;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    private UsuariosDAO usuariosDAO;

    @Override
    public void init() throws ServletException {
        usuariosDAO = new UsuariosDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        if (validarCredenciais(email, senha)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", email); // Armazene o email do usuário na sessão
            response.sendRedirect("LivrosController?action=listar");
        } else {
            response.sendRedirect("index.jsp?error=true");
        }
    }

    private boolean validarCredenciais(String email, String senha) {
        Usuarios usuario = usuariosDAO.getUsuarioByEmail(email);
        return usuario != null && usuario.getSenha().equals(senha);
    }
}
