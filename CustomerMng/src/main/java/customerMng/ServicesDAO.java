package customerMng;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class ServicesDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3307/projects?useSSL=false";
    private String jdbcusername = "root";
    private String jdbcpassword = "";

    private static final String INSERT_SQL = "INSERT INTO projects.customer (name,uname,password,phone, email,sex ) VALUES (?, ?, ?,?,? ,?)";
    private static final String SELECT_ALL = "SELECT * FROM customer";
    private static final String DELETE_SQL = "DELETE FROM customer WHERE id = ?";
    private static final String UPDATE_SQL = "UPDATE customer SET name = ?, uname =?,password =?, phone = ?, email = ? ,sex =? WHERE id = ?";
    private static final String GET_ID_SQL = "SELECT * FROM customer WHERE id=?";
    		
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcusername, jdbcpassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    
    
    
  //insert
    public void insert(Model service) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL);
            preparedStatement.setString(1, service.getName());
            preparedStatement.setString(2, service.getUname());
            preparedStatement.setString(3, service.getPassword());
            preparedStatement.setString(4, service.getPhone());
            preparedStatement.setString(5, service.getEmail());
            preparedStatement.setString(6, service.getSex());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    //update
    public void update(Model service) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_SQL);
            preparedStatement.setString(1, service.getName());
            preparedStatement.setString(2, service.getUname());
            preparedStatement.setString(3, service.getPassword());
            preparedStatement.setString(4, service.getPhone());
            preparedStatement.setString(5, service.getEmail());
            preparedStatement.setString(6, service.getSex());
            preparedStatement.setInt(7, service.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
 // Inside ServiceDAO.java

    public Model get(int id) {
        Model service = null;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ID_SQL);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                String name = resultSet.getString("name");
                String uname = resultSet.getString("uname");
                String password = resultSet.getString("password");
                String phone = resultSet.getString("phone");
                String email = resultSet.getString("email");
                String sex = resultSet.getString("sex");
                service = new Model(id, name,uname,password,phone, email,sex);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return service;
    }




    public List<Model> getAll() {
        List<Model> profiles = new ArrayList<>();
        try {
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_ALL);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String uname = resultSet.getString("uname");
                String password = resultSet.getString("password");
                String phone = resultSet.getString("phone");
                String email = resultSet.getString("email");
                String sex = resultSet.getString("sex");
                Model profile = new Model(id, name,uname,password,phone, email,sex);
                profiles.add(profile);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return profiles;
    }

    public void delete(int id) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_SQL);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
}
