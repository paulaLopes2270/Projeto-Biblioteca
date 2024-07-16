package DAO;

import Model.Livros;
import Util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class LivrosDAO {

    public void cadastrarLivro(Livros livro) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(livro);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public Livros getLivro(String isbn) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.get(Livros.class, isbn);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Livros> listarLivros() {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createQuery("from Livros", Livros.class).list();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void atualizarLivro(Livros livro) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(livro);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void deletarLivro(String isbn) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            Livros livro = session.get(Livros.class, isbn);
            if (livro != null) {
                session.delete(livro);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}
