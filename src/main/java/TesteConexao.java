import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TesteConexao {
    private static final String URL = "jdbc:postgresql://localhost:5432/projeto1";
    private static final String USER = "postgres";
    private static final String PASSWORD = "1234";

    public static void main(String[] args) {
        try {
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            if (connection != null) {
                System.out.println("Conexão estabelecida com sucesso!");
                connection.close();
            } else {
                System.out.println("Falha ao estabelecer conexão!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
