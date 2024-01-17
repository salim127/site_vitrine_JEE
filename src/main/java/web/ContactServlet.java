package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ContactDAO;
import modal.Contact;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // R�cup�rer les param�tres du formulaire
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

        // Cr�er un objet Contact
        Contact contact = new Contact();
        contact.setName(name);
        contact.setEmail(email);
        contact.setPhone(phone);
        contact.setMessage(message);

        // Ajouter le contact � la base de donn�es
        ContactDAO contactDAO = new ContactDAO();
        contactDAO.addContact(contact);

        // Rediriger vers une page de confirmation ou afficher la liste des contacts
        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // G�rer les requ�tes GET si n�cessaire
    }
}

