
import java.sql.Connection;
import java.sql.DriverManager;


public class myConnection {
    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=Project_Topic10;user=sa;password=Scubidu123";
            con = DriverManager.getConnection(connectionUrl);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return con;
    }
}
