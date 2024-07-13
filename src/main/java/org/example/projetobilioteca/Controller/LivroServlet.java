package org.example.projetobilioteca.Controller;

import org.example.projetobilioteca.DAO.LivroDAO;
import org.example.projetobilioteca.Model.Livro;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LivroServlet")
public class LivroServlet extends HttpServlet {
    private LivroDAO livroDAO;

    @Override
    public void init() {
        livroDAO = new LivroDAO();
    }

}