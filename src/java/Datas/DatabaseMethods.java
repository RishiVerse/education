package Datas;

import java.sql.*;
import java.util.Objects;

public class DatabaseMethods {

    public static Connection conn;
    public static Statement s;

     public static Connection connect() {
        Connection conn = null;
        try {
            Class.forName("org.sqlite.JDBC");
            String url = "jdbc:sqlite:/Users/rishabhmaurya/Documents/spaceEduDatabase/spaceEdu.db";
            conn = DriverManager.getConnection(url);
            System.out.println("Connection to SQLite has been established.");
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }



    public static boolean searchCredentials(String u) {
        boolean flag = false;
        ResultSet r = null; // Initialize the ResultSet to null
        
        try {
            Connection conn = connect(); // Establish the database connection
            
            // Creating and executing the SQL statement
            PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM user WHERE name = ?");
           
            r = preparedStatement.executeQuery(); // Execute the query

            // Processing the result set
            while (r.next()) {
                String name = r.getString("username");
                // String password = r.getString("password");
                // System.out.println(name + "  " + password);
                
                if (name != null && name.equals(u)) {
                    flag = true;
                    break; // No need to continue searching, we found a match
                }
            }
            
            preparedStatement.close();
            conn.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (r != null) {
                    r.close(); // Close the ResultSet if it's not null
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }

        return flag;
    }

    public static String insertCredentials(String username, String password, String firstname, String lastname, int phonenumber, String timestamps) {
        String s;
        try {
            Connection conn = connect();
            PreparedStatement preparedStatement = conn.prepareStatement("insert  into  user(uniqueUser,passwords,firstname,lastname,phoneNumber,timestamp)" +
                    " values(?,?,?,?,?,?)");

            preparedStatement.setString(1, username); // Replace with the actual name
            preparedStatement.setString(2, password); // Replace with the actual email
            preparedStatement.setString(3, firstname); // Replace with the actual password
            preparedStatement.setString(4, lastname); // Replace with the actual name
            preparedStatement.setInt(5, phonenumber); // Replace with the actual email
            preparedStatement.setString(6, timestamps); // Replace with the actual password
            preparedStatement.execute();
            preparedStatement.close();
            conn.close();
            return "success";
        } catch (SQLException e) {
           s=e.getMessage();
        }
        return s;
    }


}
