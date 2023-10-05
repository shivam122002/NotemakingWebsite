package com.entities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseTest {
    public static void main(String[] args) {
        String jdbcUrl = "jdbc:mysql://localhost:3306/todoApp";
        String username = "root";
        String password = "root";

        try {
            Connection connection = DriverManager.getConnection(jdbcUrl, username, password);
            System.out.println("Connected to the database!");
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
