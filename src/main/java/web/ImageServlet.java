package web;

import DAO.ImageDAO;
import modal.Image;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/")
public class ImageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ImageDAO imageDAO;

    public void init() {
        imageDAO = new ImageDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                	insertImage(request, response);;
                    break;
                case "/delete":
                    deleteImage(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateImage(request, response);
                    break;
                default:
                    listImages(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listImages(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Image> listImages = imageDAO.selectAllImages();
        request.setAttribute("listImages", listImages);
        RequestDispatcher dispatcher = request.getRequestDispatcher("image-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("image-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Image existingImage = imageDAO.selectImage(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("image-form.jsp");
        request.setAttribute("image", existingImage);
        dispatcher.forward(request, response);
    }

    private void insertImage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String nom = request.getParameter("nom");
            String description = request.getParameter("description");
            String cheminImage = request.getParameter("cheminImage");
            Image newImage = new Image(nom, description, cheminImage);
            imageDAO.insertImage(newImage);
            response.sendRedirect(request.getContextPath() + "/image-list");
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        }
    }


    private void updateImage(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        try {
            String idParameter = request.getParameter("id");
            
            // Check if the id parameter is not empty before parsing
            if (idParameter != null && !idParameter.isEmpty()) {
                int id = Integer.parseInt(idParameter);
                String nom = request.getParameter("nom");
                String description = request.getParameter("description");
                String cheminImage = request.getParameter("cheminImage");

                Image image = new Image(id, nom, description, cheminImage);
                imageDAO.updateImage(image);
                response.sendRedirect("list");
            } else {
                // Handle the case where id is empty
                // You may redirect or show an error message
            }
        } catch (NumberFormatException e) {
            e.printStackTrace(); // Handle the exception appropriately
            // You may redirect or show an error message
        }
    }
    private void deleteImage(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        imageDAO.deleteImage(id);
        response.sendRedirect("list");
    }
}
