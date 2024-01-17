package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modal.Image;

public class ImageDAO {

	private String jdbcURL = "jdbc:mysql://localhost:3310/projetsoa?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_IMAGE_SQL = "INSERT INTO images (nom, description, chemin_image) VALUES (?, ?, ?)";
    private static final String SELECT_ALL_IMAGES_SQL = "SELECT * FROM images";
    private static final String DELETE_IMAGE_SQL = "DELETE FROM images WHERE id = ?";
    private static final String SELECT_IMAGE_BY_ID_SQL = "SELECT id, nom, description, chemin_image FROM images WHERE id = ?";
    private static final String UPDATE_IMAGE_SQL = "UPDATE images SET nom = ?, description = ?, chemin_image = ? WHERE id = ?";



    public ImageDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertImage(Image image) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_IMAGE_SQL)) {
            preparedStatement.setString(1, image.getNom());
            preparedStatement.setString(2, image.getDescription());
            preparedStatement.setString(3, image.getCheminImage());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Image selectImage(int id) {
        Image image = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_IMAGE_BY_ID_SQL)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String nom = rs.getString("nom");
                String description = rs.getString("description");
                String cheminImage = rs.getString("chemin_image");
                image = new Image(id, nom, description, cheminImage);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return image;
    }

    public List<Image> selectAllImages() {
        List<Image> images = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_IMAGES_SQL)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nom = rs.getString("nom");
                String description = rs.getString("description");
                String cheminImage = rs.getString("chemin_image");
                images.add(new Image(id, nom, description, cheminImage));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return images;
    }

    public boolean deleteImage(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_IMAGE_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateImage(Image image) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_IMAGE_SQL)) {
            statement.setString(1, image.getNom());
            statement.setString(2, image.getDescription());
            statement.setString(3, image.getCheminImage());
            statement.setInt(4, image.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        ex.printStackTrace();
    }
    public ImageDAO() {
        // Vous pouvez initialiser des choses ici si nécessaire
    }
}
