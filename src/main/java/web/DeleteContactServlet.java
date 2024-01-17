package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ContactDAO;

/**
 * Servlet implementation class DeleteContactServlet
 */
@WebServlet("/DeleteContactServlet")
public class DeleteContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Récupérer l'ID du contact à supprimer depuis le formulaire
        String contactIdString = request.getParameter("contactId");

        // Convertir l'ID en entier
        int contactId = Integer.parseInt(contactIdString);

        // Appeler la méthode de suppression dans le DAO
        ContactDAO contactDAO = new ContactDAO();
        contactDAO.deleteContactById(contactId);

        // Rediriger vers la page de la liste des contacts après la suppression
        response.sendRedirect("contactList.jsp");
    }
}
