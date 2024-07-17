package Util;
import lombok.Getter;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    @Getter
    private static SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            return new Configuration().configure("/hibernate.cfg.xml").buildSessionFactory();
        } catch (Throwable e) {
            System.err.println("Erro ao configurar o Hibernate: " + e);
            e.printStackTrace(); // Adiciona a pilha de erros ao log
            throw new ExceptionInInitializerError("Erro ao configurar o Hibernate: " + e);
        }
    }
}