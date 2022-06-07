/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.ProductDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import taint.utils.DBUtils;

/**
 *
 * @author Admin
 */
public class ProductDAO {

    // list product dang dc nguoi ban bán
    public List<ProductDTO> getListProductBeSell() throws SQLException, ClassNotFoundException {
        List<ProductDTO> listProduct = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT [productID]\n"
                    + "      ,[productName]\n"
                    + "      ,[description]\n"
                    + "      ,[image]\n"
                    + "      ,[userID]\n"
                    + "  FROM [dbo].[tblProduct]";
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String productID = rs.getString("productID");
                    String productName = rs.getString("productName");
                    String description = rs.getString("description");
                    String image = rs.getString("image");
                    String userID = rs.getString("userID");

                    listProduct.add(new ProductDTO(productID, productName, description, image, userID));
                    
//                    String productID, String productName, String productDesc, String productImg, String userID) 
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listProduct;
    }

    public List<ProductDTO> getListProductSearchByName(String name) throws SQLException {
        List<ProductDTO> listProduct = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT [productID]\n"
                    + "      ,[productName]\n"
                    + "      ,[description]\n"
                    + "      ,[image]\n"
                    + "      ,[userID]\n"
                    + "  FROM [dbo].[tblProduct]\n"
                    + "  where [productName] like ?";
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(sql);
                ptm.setString(1, "%" + name + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String productID = rs.getString("productID");
                    String productName = rs.getString("productName");
                    String description = rs.getString("description");
                    String image = rs.getString("image");
                    String userID = rs.getString("userID");

                    listProduct.add(new ProductDTO(productID, productName, productName, productID, userID));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listProduct;
    }
    
    
}
