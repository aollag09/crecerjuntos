package com.crecerjuntos;

import com.crecerjuntos.infrastructure.AchievementDao;
import com.crecerjuntos.infrastructure.SectionDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class App {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    AchievementDao achievementDao;

    @Autowired
    SectionDao sectionDao;

    public static void main(String[] args) {
        SpringApplication.run(App.class, args);

    }

//        // read configuration and build session factory
//        System.out.println("Starting application");
//        final StandardServiceRegistry registry =
//                new StandardServiceRegistryBuilder()
//                        .configure("hibernate.cfg.xml")
//                        .build();
//
//        SessionFactory sessionFactory = null;
//
//
//        try {
//            System.out.println("Building session");
//            sessionFactory = new MetadataSources(registry)
//                    .buildMetadata()
//                    .buildSessionFactory();
//            System.out.println("Session built");
//        }
//        catch (Exception e) {
//            StandardServiceRegistryBuilder.destroy(registry);
//            System.exit(1);
//        }
//
//        // create session, open transaction and save test entity to db
//        Session session = sessionFactory.openSession();
//        Transaction tx = session.beginTransaction();
//
//        try {
//            System.out.println("About to insert section");
//            Section testSection = new Section("0", "Proceso Basico");
//            session.persist(testSection);
//            tx.commit();
//            System.out.println("Section inserted");
//        }
//        catch (Exception e) {
//            tx.rollback();
//        }
//        finally {
//            session.close();
//        }
//
//        // clean up
//        sessionFactory.close();
//    }
    }