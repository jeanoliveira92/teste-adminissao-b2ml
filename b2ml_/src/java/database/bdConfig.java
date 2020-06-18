package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class bdConfig {

    private static final String DRIVER = "postgresql",
            HOST = "127.0.0.1",
            PORT = "5437",
            DATABASE = "teste_admissao",
            USER = "postgres",
            PASSWORD = "adminadmin";

    public static Connection con() throws Exception {
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection("jdbc:" + DRIVER + "://" + HOST + "/" + DATABASE, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException ex) {
            throw new Exception(ex);
        }
    }
}
