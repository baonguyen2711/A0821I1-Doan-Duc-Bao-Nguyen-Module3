package codegym;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CustomerServlet", urlPatterns = {"/customer"})
public class CustomerServlet extends HttpServlet {
    static ArrayList<Customer> list = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        list.add(new Customer("Tom", true, "27/11/1992", "Đà Nẵng", "0702770099"));
        list.add(new Customer("Tim", true, "11/10/1991", "Đà Nẵng", "0707123123"));
        list.add(new Customer("Tem", false, "04/02/1990", "Đà Nẵng", "0702456456"));
        list.add(new Customer("Tum", true, "23/01/1995", "Đà Nẵng", "0702789789"));
        list.add(new Customer("Tam", false, "17/05/1989", "Đà Nẵng", "0702111222"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/listcustomer.jsp");
        request.setAttribute("list", list);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
