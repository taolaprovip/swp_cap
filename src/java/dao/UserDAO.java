/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.ProductDTO;
import dto.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import taint.utils.DBUtils;

/**
 *
 * @author Admin
 */
public class UserDAO {

    public UserDTO checkLogin(String phonePara, String passwordPara) throws SQLException, ClassNotFoundException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT [userID]\n"
                        + "      ,[phone]\n"
                        + "      ,[fullName]\n"
                        + "      ,[password]\n"
                        + "      ,[email]\n"
                        + "      ,[sex]\n"
                        + "      ,[birthday]\n"
                        + "      ,[roleID]\n"
                        + "      ,[locationID]\n"
                        + "  FROM [dbo].[tblUsers]\n"
                        + "  where phone = ? and password = ?";
                ptm = conn.prepareStatement(sql);
                ptm.setString(1, phonePara);
                ptm.setString(2, passwordPara);
                rs = ptm.executeQuery();
                if (rs.next()) {

                    String userID = rs.getString("userID");
                    String phone = rs.getString("phone");
                    String fullName = rs.getString("fullName");
                    String password = rs.getString("password");
                    String email = rs.getString("email");
                    String sex = rs.getString("sex");
                    Date birthday = rs.getDate("birthday");
                    String rolID = rs.getString("roleID");
                    String locationID = rs.getString("locationID");

//                    user = new UserDTO(userID, roleID, email, pass, phone, gender, address);
                    user = new UserDTO(userID, phone, fullName, password, email, sex, birthday, rolID, locationID);
                }
            }
        } catch (SQLException e) {
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
        return user;
    }

//    phone, fullName, Email, gender, DOB, userID
    public boolean updateAccountProfile(String phone, String fullName, String email, String gender, String DOB, String userID) throws SQLException, ClassNotFoundException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {

            String sql = "UPDATE [dbo].[tblUsers]\n"
                    + "                      SET\n"
                    + "                         [phone] = ?\n"
                    + "                         ,[fullName] = ?\n"
                    + "                         \n"
                    + "                         ,[email] = ?\n"
                    + "                         ,[sex] = ?\n"
                    + "                          ,[birthday] = ?\n"
                    + "                          \n"
                    + "                    WHERE [userID] = ?";
            conn = DBUtils.getConnection();

            if (conn != null) {
                ptm = conn.prepareStatement(sql);
                ptm.setString(1, phone);
                ptm.setString(2, fullName);
                ptm.setString(3, email);
                ptm.setString(4, gender);
                ptm.setString(5, DOB);
                ptm.setString(6, userID);
//                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//                String importDate = formatter.format(prd.getImportDate());
//                String usingDate = formatter.format(prd.getUsingDate());
//                ptm.setString(6, importDate);
//                ptm.setString(7, usingDate);
//                ptm.setString(8, "Approve");
//                ptm.setString(9, prd.getProductID());
                check = ptm.executeUpdate() > 0;
            }
        } catch (SQLException e) {
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;
    }

    public boolean createUser(String userID, String phone, String fullName, String password, String email, String sex, String birthday, String roleID) throws SQLException, ClassNotFoundException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO [dbo].[tblUsers]\n"
                        + "           ([userID]\n"
                        + "           ,[phone]\n"
                        + "           ,[fullName]\n"
                        + "           ,[password]\n"
                        + "           ,[email]\n"
                        + "           ,[sex]\n"
                        + "           ,[birthday]\n"
                        + "           ,[roleID]\n"
                        + "     VALUES (userID = ?, phone = ?, fullName = ?, password = ?,email = ?, sex = ?,birthday = ?, roleID = ?)";
                ptm = conn.prepareStatement(sql);
                ptm.setString(1, userID);
                ptm.setString(2, phone);
                ptm.setString(3, fullName);
                ptm.setString(4, password);
                ptm.setString(5, email);
                ptm.setString(6, sex);
                ptm.setString(7, birthday);
                ptm.setString(8, roleID);

                int check = ptm.executeUpdate();
                if (check > 0) {
                    return true;

//                    String userID = rs.getString("userID");
//                    String phone = rs.getString("phone");
//                    boolean gender = rs.getBoolean("gender");
//                    String pass = rs.getString("pass");
//                    String email = rs.getString("email");
//                    String roleID = rs.getString("roleID");
//                    String address = rs.getString("address");
//                    user = new UserDTO(userID, roleID, email, pass, phone, gender, address);
                }
            }
        } catch (SQLException e) {
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
        return false;
    }
}
