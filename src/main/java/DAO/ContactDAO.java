package DAO;


import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import modal.Contact;

public class ContactDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3310/projetsoa";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    private static final String INSERT_CONTACT_QUERY = "INSERT INTO contacts (name, email, phone, message) VALUES (?, ?, ?, ?)";
    private static final String SELECT_ALL_CONTACTS_QUERY = "SELECT * FROM contacts";
    private static final String DELETE_CONTACT_BY_ID_QUERY = "DELETE FROM contacts WHERE id = ?";


    public void addContact(Contact contact) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CONTACT_QUERY)) {
            preparedStatement.setString(1, contact.getName());
            preparedStatement.setString(2, contact.getEmail());
            preparedStatement.setString(3, contact.getPhone());
            preparedStatement.setString(4, contact.getMessage());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            // Gérer les exceptions de manière appropriée (enregistrement dans les logs, etc.)
            e.printStackTrace();
        }
    }

    public void deleteContactById(int contactId) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CONTACT_BY_ID_QUERY)) {
            preparedStatement.setInt(1, contactId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Contact> getAllContacts() {
        List<Contact> contacts = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(SELECT_ALL_CONTACTS_QUERY)) {
            while (resultSet.next()) {
                Contact contact = new Contact();
                contact.setId(resultSet.getInt("id"));
                contact.setName(resultSet.getString("name"));
                contact.setEmail(resultSet.getString("email"));
                contact.setPhone(resultSet.getString("phone"));
                contact.setMessage(resultSet.getString("message"));
                contacts.add(contact);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return contacts;
    }
}
    

