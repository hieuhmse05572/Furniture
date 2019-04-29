/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author Q
 */
import com.fasterxml.jackson.annotation.JsonView;

import entity.Product;
import java.util.List;

public class AjaxJson {

    public class Views {

        public class Public {
        }
    }

    @JsonView(Views.Public.class)
    String msg;

    @JsonView(Views.Public.class)
    String code;

    @JsonView(Views.Public.class)
    List<Product> result;

    //getters and setters
}
