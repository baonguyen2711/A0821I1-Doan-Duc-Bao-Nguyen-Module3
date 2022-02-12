package SimpleDictionaryServlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "SimpleDictionaryServlet", urlPatterns = {"/translate"})
public class SimpleDictionaryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("book", "Quyển vở");
        dictionary.put("computer", "Máy tính");
        String search = request.getParameter("txtSearch");
        String result = dictionary.get(search);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("translate.jsp");
        if (result != null) {
            request.setAttribute("search",search);
            request.setAttribute("result",result);
            requestDispatcher.forward(request,response);
        }
        else {
String message = "Not Found";
request.setAttribute("notfound",message);
        }
        requestDispatcher.forward(request,response);
    }
}
