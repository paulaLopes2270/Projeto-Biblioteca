package org.example.projetobilioteca.DAO;

import org.example.projetobilioteca.Database;
import org.example.projetobilioteca.Model.Livro;

import java.sql.*;


public class LivroDAO {
    private Connection connection;

    public LivroDAO() {
        connection = Database.getConnection();
    }

}