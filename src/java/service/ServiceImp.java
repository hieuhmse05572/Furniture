/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.ProductDAO;
import entity.Product;
import java.util.List;

/**
 *
 * @author Q
 */
public class ServiceImp implements ServiceInterface {


    @Override
    public List<Product> getAll() {
        ProductDAO dao = new ProductDAO();
        return dao.getAll();
    }

}
