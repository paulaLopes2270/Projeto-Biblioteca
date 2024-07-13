package DAO;

import Model.Livros;
import Util.HibernateUtil;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;


public class LivrosDAO {

    public void cadastrarLivros(Livros livros) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(livros);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public List<Livros> getLivros() {
        try (Session session = HibernateUtil.getSessionFactory().openSession()){
            return session.createQuery("from Livros").list();
        }
    }

    public Livros getLivrosById(String isbn) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()){
            return session.get(Livros.class, isbn);
        }
    }

    public void updateLivros(Livros livros) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            session.update(livros);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void deleteLivros(String isbn) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()){
            transaction = session.beginTransaction();
            Livros livros = session.get(Livros.class, isbn);
            if (livros != null) {
                session.delete(livros);
                transaction.commit();
            }
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}
