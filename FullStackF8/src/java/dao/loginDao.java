/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import Context.DbContext;
import org.hibernate.validator.constraints.Email;

/**
 *
 * @author Longvh
 */
public class loginDao extends DbContext {

    Connection con = null;
    PreparedStatement st = null;
    ResultSet rs = null;

    public User getUser(String email, String password) {
        User user = null;
        try {
            String sql = "SELECT * FROM user where email = ? and password = ?";
            con = getConnection();
            st = con.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            rs = st.executeQuery();
            while (rs.next()) {
                user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getBoolean(11), rs.getInt(12));
                return  user;
            };
        } catch (Exception ex) {
            try {
                throw ex;
            } catch (Exception ex1) {
                Logger.getLogger(loginDao.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return null;
    }

}
