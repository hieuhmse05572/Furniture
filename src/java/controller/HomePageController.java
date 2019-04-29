/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Category;
import entity.Product;
import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author Q
 */
@Controller
@RequestMapping("/")
@SessionAttributes(value = {"Cart", "total"})
public class HomePageController {

    @Autowired
    SessionFactory sessionFactory;
    
//    @RequestMapping()
//    public String Redirect() {
//        return "redirect:/";
//    }

    @RequestMapping("/")
    @Transactional
    public String Home(ModelMap modelMap) {
//        ServiceImp service = new ServiceImp();
//        List<Product> products = service.getAll();
        Session session = sessionFactory.getCurrentSession();
        List<Product> products = session.createQuery("from Product").list();
        modelMap.addAttribute("products", products);
        Query query = session.createQuery("from Product");
        query.setMaxResults(4);
        query.setFirstResult(0);
        List<Product> p12 = query.list();
        modelMap.addAttribute("bestSeller", p12);
        modelMap.addAttribute("catID", "1");
        return "home";
    }

//    @RequestMapping("/home")
//    @Transactional
//    public String HomeP(ModelMap modelMap, @RequestParam String catID) {
//        Session session = sessionFactory.getCurrentSession();
//        List<Product> products = session.createQuery("from Product where CategoryID = " + catID).list();
//        modelMap.addAttribute("products", products);
//        Query query = session.createQuery("from Product");
//        query.setMaxResults(4);
//        query.setFirstResult(0);
//        List<Product> p12 = query.list();
//        modelMap.addAttribute("bestSeller", p12);
//        modelMap.addAttribute("catID", catID);
//        return "home";
//    }

    @RequestMapping("/detail")
    @Transactional
    public String Detail(ModelMap modelMap, @RequestParam String id) throws ParseException {
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.createQuery("from Product where id= " + id).uniqueResult();
        List<String> listImage = new ArrayList<>();
        modelMap.addAttribute("product", product);
        JSONParser jsonParser = new JSONParser();
        String jsonString = product.getListImage();
        JSONArray jsonArray = (JSONArray) jsonParser.parse(jsonString);
        for (int i = 0; i < jsonArray.size(); i++) {
            JSONObject jsonObject = (JSONObject) jsonArray.get(i);
            listImage.add((String) jsonObject.get("path"));
        }
        Query query = session.createQuery("from Product");
        query.setMaxResults(4);
        query.setFirstResult(0);
        List<Product> p12 = query.list();
        modelMap.addAttribute("bestSeller", p12);
        modelMap.addAttribute("images", listImage);
        return "detail";
    }

    @RequestMapping("/grid")
    @Transactional
    public String Grid(ModelMap modelMap, @RequestParam String catID) {
        Session session = sessionFactory.getCurrentSession();
        List<Product> products = session.createQuery("from Product where CategoryID = " + catID).list();
        Category category = (Category) session.createQuery("from Category where ID = " + catID).uniqueResult();
        modelMap.addAttribute("category", category);
        modelMap.addAttribute("products", products);
        modelMap.addAttribute("catID", catID);
        Query query = session.createQuery("from Product");
        query.setMaxResults(4);
        query.setFirstResult(0);
        List<Product> p12 = query.list();
        modelMap.addAttribute("bestSeller", p12);
        return "grid";
    }

    @RequestMapping("/checkout")
    @Transactional
    public String Checkout() {
        return "checkout";
    }

//    @RequestMapping(value = "/gridx", method = RequestMethod.GET)
//    @Transactional
//    @ResponseBody
//    public String Ajax(@RequestParam String catID, ModelMap modelMap) {
//        Session session = sessionFactory.getCurrentSession();
//        List<Product> products = session.createQuery("from Product where CategoryID = " + catID).list();
//        Category category = (Category) session.createQuery("from Category where ID = " + catID).uniqueResult();
//        modelMap.addAttribute("category", category);
//        String jsonA = JSONArray.toJSONString(products);
//        ObjectMapper mapper = new ObjectMapper();
//        String ajaxResponse = "";
//        try {
//            ajaxResponse = mapper.writeValueAsString(products);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return ajaxResponse;
//    }
}
