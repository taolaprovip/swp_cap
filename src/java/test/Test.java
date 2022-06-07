/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import dao.OrderDAO;
import dao.ProductDAO;
import dao.UserDAO;
import dto.Order;
import dto.UserDTO;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class Test {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        UserDAO d = new UserDAO();
//      boolean b = d.createUser("tes1", "090", "tes", "tes", "tes", "sdf", "tes", "tes");

//        System.out.println( d.checkLogin("1", "2").getRolID());
//        
        ProductDAO d2 = new ProductDAO();
        System.out.println(d2.getListProductBeSell());
//        OrderDAO d3 = new OrderDAO();
//        System.out.println(d3.getListOrderByUserID("test"));
        UserDAO dao = new UserDAO();
//        System.out.println(dao.updateAccountProfile("123", "testupdate", "test@", "female", "2020-2-2", "xung1985"));
    }
}

//String phone, String fullName, String email, String gender, String DOB,String userID)
