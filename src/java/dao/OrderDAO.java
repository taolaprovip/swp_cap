/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Order;
import dto.ProductDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import taint.utils.DBUtils;

/**
 *
 * @author Admin
 */
public class OrderDAO {

    public List<Order> getListOrder() throws SQLException {
        List<Order> listOrder = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT [location]\n"
                    + "      ,[orderDate]\n"
                    + "      ,[productID]\n"
                    + "      ,[oderID]\n"
                    + "      ,[userID]\n"
                    + "  FROM [dbo].[tblOrder]";
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String location = rs.getString("location");
                    String orderDate = rs.getString("orderDate");
                    String productID = rs.getString("productID");
                    String oderID = rs.getString("oderID");
                    String userID = rs.getString("userID");

                    listOrder.add(new Order(oderID, userID, location, orderDate, productID));
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
        return listOrder;
    }

    public List<Order> getListOrderByUserID(String userIDPara) throws SQLException {
        List<Order> listOrder = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT [location]\n"
                    + "      ,[orderDate]\n"
                    + "      ,[productID]\n"
                    + "      ,[oderID]\n"
                    + "      ,[userID]\n"
                    + "  FROM [dbo].[tblOrder]\n"
                    + "  where userID = ?";
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(sql);
                ptm.setString(1, userIDPara);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String location = rs.getString("location");
                    String orderDate = rs.getString("orderDate");
                    String productID = rs.getString("productID");
                    String oderID = rs.getString("oderID");
                    String userID = rs.getString("userID");

                    listOrder.add(new Order(oderID, userID, location, orderDate, productID));
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
        return listOrder;
    }

    public boolean insertOrder(Order ord) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            String sql = "INSERT INTO [dbo].[tblOrder]\n"
                    + "           (\n"
                    + "           \n"
                    + "           [productID]\n"
                    + "           ,[userID])\n"
                    + "     VALUES\n"
                    + "           (\n"
                    + "          \n"
                    + "           ?\n"
                    + "           ,?)";

            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
//            ptm.setString(1, ord.getOrderID());
            ptm.setString(2, ord.getUserID());

            ptm.setString(1, ord.getProductID());

//            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//            String usingDate = formatter.format(prd.getUsingDate());
//            ptm.setString(7, importDate);
//            ptm.setString(8, usingDate);
//            ptm.setString(9, prd.getStatus());
            check = ptm.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
            return check;
        }
    }

    public List<Order> getListUserIDGourpBy() throws SQLException {
        List<Order> listOrder = new ArrayList();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            String sql = "select [userID] from tblOrder \n"
                    + "group by userID";
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                while (rs.next()) {
//                    String location = rs.getString("location");
//                    String orderDate = rs.getString("orderDate");
//                    String productID = rs.getString("productID");
//                    String oderID = rs.getString("oderID");
                    String userID = rs.getString("userID");

                    listOrder.add(new Order(userID));
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
        return listOrder;
    }
}
