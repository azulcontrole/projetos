package br.com.azulcontrole.persistencia.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoFactory {

    /** Conectar ao banco **/
    public static Connection getConnection() {
    	try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			throw new RuntimeException(e1);
		}
		try {
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/azul_controlev2?autoReconnect=true&useSSL=false&user=root&password=root@123");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

    }
}