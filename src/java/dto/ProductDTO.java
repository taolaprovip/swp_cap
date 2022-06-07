/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Admin
 */
public class ProductDTO {

    private String productID;
    private String productName;
    private String productDesc;
    private String productImg;
//    private float productPrice;
    private String userID;

    public ProductDTO() {
    }

    public ProductDTO(String productID, String productName, String productDesc, String productImg, String userID) {
        this.productID = productID;
        this.productName = productName;
        this.productDesc = productDesc;
        this.productImg = productImg;
        this.userID = userID;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public String getProductImg() {
        return productImg;
    }

    public void setProductImg(String productImg) {
        this.productImg = productImg;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    @Override
    public String toString() {
        return getProductID() + " " +getUserID() + " " +getProductImg();
    }
    
    
    

}
