/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import entity.Category;
import entity.OrderDetail;
import entity.Product;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author Q
 */
@Controller
//@SessionAttributes("Cart")
@SessionAttributes(value = {"Cart", "total"})
public class ApiController {

    @Autowired
    SessionFactory sessionFactory;
//    List<Product> Cart = new ArrayList<>();
    public int OrderID = 1;

    @ModelAttribute("Cart")
    public List<OrderDetail> setUpUserForm() {
        return new ArrayList<>();
    }

    @ModelAttribute("toal")
    public int setTotal() {
        return 0;
    }

    @RequestMapping("Ajax/Products")
    @Transactional
    @ResponseBody
    public String AjaxProduct(@RequestParam String catID, ModelMap modelMap) {
        Session session = sessionFactory.getCurrentSession();
        List<Product> products = session.createQuery("from Product where CategoryID = " + catID).list();
        String jsonA = JSONArray.toJSONString(products);
        ObjectMapper mapper = new ObjectMapper();
        String ajaxResponse = "";
        try {
            ajaxResponse = mapper.writeValueAsString(products);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ajaxResponse;
    }

    @RequestMapping("Ajax/Category")
    @Transactional
    @ResponseBody
    public String AjaxCategory(@RequestParam String catID, ModelMap modelMap) {
        Session session = sessionFactory.getCurrentSession();
        Category category = (Category) session.createQuery("from Category where ID = " + catID).uniqueResult();
        modelMap.addAttribute("category", category);
        ObjectMapper mapper = new ObjectMapper();
        String ajaxResponse = "";
        try {
            ajaxResponse = mapper.writeValueAsString(category);
        } catch (JsonProcessingException e) {
        }
        return ajaxResponse;
    }

    @RequestMapping("Ajax/RemoveCart")
    @Transactional
    @ResponseBody
    public String AjaxRemoveCart(@ModelAttribute("Cart") List<OrderDetail> Cart, @RequestParam String id, ModelMap modelMap) {
        Session session = sessionFactory.getCurrentSession();
        Product p = (Product) session.createQuery("from Product where ID = " + id).uniqueResult();
        System.out.println(p.getName());
        System.out.println(Cart.size());
        for (int i = 0; i < Cart.size(); i++) {
            if (Cart.get(i).getProductID() == p.getId()) {
                Cart.remove(i);
            }
        }

        modelMap.addAttribute("Cart", Cart);
        // String jsonA = JSONArray.toJSONString(Cart);
        ObjectMapper mapper = new ObjectMapper();
        String ajaxResponse = "";
        try {
            ajaxResponse = mapper.writeValueAsString(Cart);
        } catch (JsonProcessingException ex) {
        }
        return ajaxResponse;
    }

    @RequestMapping("Ajax/ChangeQuantity")
    @Transactional
    @ResponseBody
    public String AjaxChangeQuantity(@ModelAttribute("Cart") List<OrderDetail> Cart, @RequestParam String id, @RequestParam String dir, ModelMap modelMap) {
        Session session = sessionFactory.getCurrentSession();
        Product p = (Product) session.createQuery("from Product where ID = " + id).uniqueResult();
        System.out.println(dir);
        for (int i = 0; i < Cart.size(); i++) {
            OrderDetail order = Cart.get(i);
            if (order.getProductID() == p.getId()) {
                if (dir.contains("left")) {
                    int temp = Integer.parseInt(order.getQuantity()) - 1;
                    if (temp == 0) {
                        Cart.remove(order);
                    } else {
                        order.setQuantity(temp + "");
                    }
                } else {
                    order.setQuantity(Integer.parseInt(order.getQuantity()) + 1 + "");
                }
            }
        }
        modelMap.addAttribute("Cart", Cart);
        ObjectMapper mapper = new ObjectMapper();
        String ajaxResponse = "";
        try {
            ajaxResponse = mapper.writeValueAsString(Cart);

        } catch (JsonProcessingException ex) {
        }
        return ajaxResponse;
    }

    @RequestMapping("Ajax/AddToCart")
    @Transactional
    @ResponseBody
    public String AjaxAddToCart(@ModelAttribute("Cart") List<OrderDetail> Cart, @RequestParam String id, @RequestParam String quantity, ModelMap modelMap) {
        Session session = sessionFactory.getCurrentSession();
        Product p = (Product) session.createQuery("from Product where ID = " + id).uniqueResult();
        boolean exist = false;
        for (int i = 0; i < Cart.size(); i++) {
            if (Cart.get(i).getProductID() == p.getId()) {
                Cart.get(i).setQuantity(Integer.parseInt(Cart.get(i).getQuantity()) + 1 + "");
                exist = true;
                break;
            }
        }
        if (!exist) {
            OrderDetail order = new OrderDetail(OrderID, Integer.parseInt(id), quantity, p.getPrice() + "");
            order.setProduct(p);
            Cart.add(order);
        }
        int Total = 0;
        for (int i = 0; i < Cart.size(); i++) {
            Total += Integer.parseInt(Cart.get(i).getQuantity());
        }
        modelMap.addAttribute("total", Total);
        modelMap.addAttribute("Cart", Cart);
        return Total + "";
    }

}
