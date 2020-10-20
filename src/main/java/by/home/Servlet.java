package by.home;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.Principal;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class Servlet extends HttpServlet {
    private List<User> users;

    @Override
    public void init() throws ServletException {
        users = new CopyOnWriteArrayList<>();
        users.add(new User("Bob", 22));
        users.add(new User("Nicole", 16));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("users", users);
        req.getRequestDispatcher("/seeUsers.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        if (!requestIsValid(req)){
            doGet(req, resp);
        }
        final String name = req.getParameter("name");
        final String age = req.getParameter("age");
        final User user = new User(name, Integer.valueOf(age));
        users.add(user);
        this.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);

    }

    public boolean requestIsValid(final HttpServletRequest req) {
        final String name = req.getParameter("name");
        final String age = req.getParameter("age");
        return name != null && age != null
                && name.length() > 0 && age.length() > 0;
    }
}
