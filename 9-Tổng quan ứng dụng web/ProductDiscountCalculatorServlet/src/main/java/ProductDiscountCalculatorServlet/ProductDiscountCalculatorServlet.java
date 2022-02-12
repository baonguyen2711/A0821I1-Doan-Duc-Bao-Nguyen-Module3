package ProductDiscountCalculatorServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductDiscountCalculatorServlet", urlPatterns = {"/discount"})
public class ProductDiscountCalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        int price = Integer.parseInt(request.getParameter("price"));
        int discount_percent = Integer.parseInt(request.getParameter("discount_percent"));
        double discountAmount = price * discount_percent * 0.01;
        double discountPrice = price - discountAmount;
        request.setAttribute("discountAmount",discountAmount);
        request.setAttribute("discountPrice",discountPrice);
        request.setAttribute("description",description);
        request.setAttribute("price",price);
        request.setAttribute("discount_percent",discount_percent);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("discount.jsp");
        requestDispatcher.forward(request,response);

    }
}
