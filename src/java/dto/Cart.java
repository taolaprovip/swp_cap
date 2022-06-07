/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author win
 */
public class Cart {

    private Map<String, ProductDTO> cart;

    public Cart() {
    }

    public Cart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }

    public Map<String, ProductDTO> getCart() {
        return cart;
    }

    public void setCart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }

//    public boolean add(ProductDTO product) {
//        boolean check = false;
//        if (cart == null) {
//            cart = new HashMap<>();
//
//        }
//        if (this.cart.containsKey(product.getProductID())) {
//            int currentQuantity = this.cart.get(product.getProductID()).getQuantity();
//            tea.setQuantity(currentQuantity + tea.getQuantity());
//        }
//        this.cart.put(tea.getId(), tea);
//        check = true;
//        return check;

//    }

//    public boolean delete(String id) {
//        boolean check = false;
//        if(this.cart != null) {
//            if (this.cart.containsKey(id)){
//                this.cart.remove(id);
//                check= true;
//            }
//        }
//        return check;
//    }
//    public boolean update(String id, Tea tea) {
//        boolean check = false; 
//        if (this.cart != null) {
//            if(this.cart.containsKey(id)){
//                this.cart.replace(id, tea);
//                check = true;
//            }
//        }
//        return check; 
//    }
}
