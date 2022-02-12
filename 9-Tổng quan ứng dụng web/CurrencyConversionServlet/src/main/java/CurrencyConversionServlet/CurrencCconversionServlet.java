package CurrencyConversionServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CurrencCconversionServlet", urlPatterns = {"/convert"})
public class CurrencCconversionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd = Float.parseFloat(request.getParameter("usd"));
        float vnd = rate * usd;
        request.setAttribute("rate",rate);
        request.setAttribute("usd",usd);
        request.setAttribute("vnd",vnd);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("convert.jsp");
        requestDispatcher.forward(request,response);
    }
}
