package Controller;

import DAO.LivrosDAO;
import Model.Livros;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "LivrosController", urlPatterns = {"/LivrosController"})
public class LivrosController extends HttpServlet {

    private LivrosDAO livrosDAO;

    @Override
    public void init() throws ServletException {
        livrosDAO = new LivrosDAO();
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
                deletarLivro(request, response);
                break;
            default:
                listarLivros(request, response);
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
                cadastrarLivro(request, response);
                break;
            case "editar":
                editarLivro(request, response);
                break;
            default:
                listarLivros(request, response);
                break;
        }
    }

    private void listarLivros(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Livros> listaLivros = livrosDAO.listarLivros();
        request.setAttribute("listaLivros", listaLivros);
        request.getRequestDispatcher("listarLivros.jsp").forward(request, response);
    }

    private void showCadastrarForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("cadastrarLivro.jsp").forward(request, response);
    }

    private void showEditarForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String isbn = request.getParameter("isbn");
        Livros livroExistente = livrosDAO.getLivro(isbn);
        request.setAttribute("livro", livroExistente);
        request.getRequestDispatcher("editarLivro.jsp").forward(request, response);
    }

    private void cadastrarLivro(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String isbn = request.getParameter("isbn");
            String nome = request.getParameter("nome");
            String categoria = request.getParameter("categoria");
            int quantidade = Integer.parseInt(request.getParameter("quantidade"));

            Livros novoLivro = new Livros(isbn, nome, categoria, quantidade, null);
            livrosDAO.cadastrarLivro(novoLivro);
            response.sendRedirect("LivrosController");
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid number format");
            request.getRequestDispatcher("cadastrarLivro.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "An error occurred while processing your request");
            request.getRequestDispatcher("cadastrarLivro.jsp").forward(request, response);
        }
    }

    private void editarLivro(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String isbn = request.getParameter("isbn");
            String nome = request.getParameter("nome");
            String categoria = request.getParameter("categoria");
            int quantidade = Integer.parseInt(request.getParameter("quantidade"));

            Livros livro = new Livros(isbn, nome, categoria, quantidade, null);
            livrosDAO.atualizarLivro(livro);
            response.sendRedirect("LivrosController");
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid number format");
            request.getRequestDispatcher("editarLivro.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "An error occurred while processing your request");
            request.getRequestDispatcher("editarLivro.jsp").forward(request, response);
        }
    }

    private void deletarLivro(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String isbn = request.getParameter("isbn");
        livrosDAO.deletarLivro(isbn);
        response.sendRedirect("LivrosController");
    }
}