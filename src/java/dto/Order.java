/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class Order {

    private String orderID;
    private String userID;
    private String location;
    private String orderDate;
    private String productID;

    public Order() {
    }
    
    public Order(String userID){
        this.userID=userID;
    }

    public Order(String orderID, String userID, String location, String orderDate, String productID) {
        this.orderID = orderID;
        this.userID = userID;
        this.location = location;
        this.orderDate = orderDate;
        this.productID = productID;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

}
