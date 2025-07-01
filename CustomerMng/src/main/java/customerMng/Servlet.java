package customerMng;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet("/")
public class Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ServicesDAO DAO; 

    public Servlet() {
        this.DAO = new ServicesDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();

        switch (action) {
            case "/new":
                showNewForm(request, response);
                break;
            case "/insert":
                insertService(request, response);
                break;
            case "/edit":
                showEditForm(request, response);
                break;
            case "/update":
                updateService(request, response);
                break;
            case "/delete":
                deleteService(request, response);
                break;
            default:
                listview(request, response);
                break;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void listview(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Model> listview = DAO.getAll();
        request.setAttribute("listview", listview);
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("addform.jsp").forward(request, response);
    }

    private void insertService(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String sex = request.getParameter("sex");

        Model newService = new Model(0, name,uname,password,phone, email,sex);
        DAO.insert(newService);

        response.sendRedirect(".");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Model existingProfile = DAO.get(id);
        request.setAttribute("service", existingProfile);
        request.getRequestDispatcher("update-edit-form.jsp").forward(request, response);
    }

    private void updateService(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String sex = request.getParameter("sex");
        
        Model updatedProfile = new Model(id, name,uname,password,phone, email,sex);
        DAO.update(updatedProfile);
        response.sendRedirect(".");
    }

    private void deleteService(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        DAO.delete(id);
        response.sendRedirect(".");
    }
}

