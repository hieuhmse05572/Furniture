/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Product;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import service.ServiceInterface;

/**
 *
 * @author Q
 */
public class ProductDAO implements ServiceInterface {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Product> getAll() {
        Session session = sessionFactory.getCurrentSession();
        List<Product> products = session.createQuery("from Product").list();
        return products;
    }

}
