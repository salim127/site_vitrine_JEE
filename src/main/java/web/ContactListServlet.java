package web;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ContactDAO;
import modal.Contact;

@WebServlet("/ContactListServlet")
public class ContactListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // R�cup�rer la liste des contacts depuis la base de donn�es
        ContactDAO contactDAO = new ContactDAO();
        List<Contact> contacts = contactDAO.getAllContacts();

        // Passer la liste des contacts � la vue (JSP)
        request.setAttribute("contacts", contacts);

        // Dispatcher vers la page JSP pour afficher la liste des contacts
        RequestDispatcher dispatcher = request.getRequestDispatcher("contactList.jsp");
        dispatcher.forward(request, response);
    }
}
