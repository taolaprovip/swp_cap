/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class UserDTO {

    private String userID;
    private String phone;
    private String fullName;
    private String password;
    private String email;
    private String sex;
    private Date birthday;
    private String rolID;
    private String locationID;

    public UserDTO() {
    }

    public UserDTO(String userID, String phone, String fullName, String password, String email, String sex, Date birthday, String rolID, String locationID) {
        this.userID = userID;
        this.phone = phone;
        this.fullName = fullName;
        this.password = password;
        this.email = email;
        this.sex = sex;
        this.birthday = birthday;
        this.rolID = rolID;
        this.locationID = locationID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getRolID() {
        return rolID;
    }

    public void setRolID(String rolID) {
        this.rolID = rolID;
    }

    public String getLocationID() {
        return locationID;
    }

    public void setLocationID(String locationID) {
        this.locationID = locationID;
    }

    @Override
    public String toString() {
        return getPassword() + " " + getPhone() +" "+getRolID();
    }

  
    

}
