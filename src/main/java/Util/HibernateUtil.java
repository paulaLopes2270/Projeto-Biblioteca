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
            throw new ExceptionInInitializerError("Erro ao configurar o Hibernate" + e);
        }
    }
}
