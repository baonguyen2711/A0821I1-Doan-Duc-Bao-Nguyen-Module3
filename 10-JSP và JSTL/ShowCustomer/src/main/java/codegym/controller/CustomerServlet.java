package codegym.controller;

import codegym.model.bean.Customer;
import codegym.model.bean.CustomerProduct;
import codegym.model.service.CustomerProductService;
import codegym.model.service.CustomerService;
import codegym.model.service.Impl.CustomerProductServiceImpl;
import codegym.model.service.Impl.CustomerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"/customer"})
public class CustomerServlet extends HttpServlet {
    private CustomerService customerService = new CustomerServiceImpl();
    private CustomerProductService customerProductService = new CustomerProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormCreateCustomer(request, response);
                break;
            case "edit":
                showFormEditCustomer(request, response);
                break;
            case "delete":
                showDelete(request, response);
                break;
//            case "search":
//                searchCustomer(request, response);
//                break;
            default:
                listCustomers(request, response);
        }
    }


    private void showDelete(HttpServletRequest request, HttpServletResponse response) {
        List<CustomerProduct> productList = customerProductService.findAll();
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        Customer customer = this.customerService.findById(customerId);
        RequestDispatcher requestDispatcher;
        if (customer == null) {
            requestDispatcher = request.getRequestDispatcher("view/customer/error.jsp");
        } else {
            request.setAttribute("customer", customer);
            request.setAttribute("productList",productList);
            requestDispatcher = request.getRequestDispatcher("view/customer/delete.jsp");
        }
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormEditCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<CustomerProduct> productList = customerProductService.findAll();
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        Customer customer = this.customerService.findById(customerId);
        RequestDispatcher requestDispatcher;
        if (customer == null) {
            requestDispatcher = request.getRequestDispatcher("view/customer/error.jsp");
        } else {
            request.setAttribute("customer", customer);
            request.setAttribute("productList",productList);
            requestDispatcher = request.getRequestDispatcher("view/customer/edit.jsp");
        }
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormCreateCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<CustomerProduct> productList = customerProductService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/create.jsp");
        request.setAttribute("productList",productList);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listCustomers(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.findAll();
        List<CustomerProduct> productList = customerProductService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/listcustomer.jsp");
        request.setAttribute("customerList", customerList);
        request.setAttribute("productList", productList);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                save(request, response);
                break;
            case "edit":
                update(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            case "search":
                searchCustomer(request, response);
                break;
            default:

        }
    }
    private void searchCustomer(HttpServletRequest request, HttpServletResponse response) {
        String nameSearch = request.getParameter("nameSearch");
        String emailSearch = request.getParameter("emailSearch");
        String productIdSearch = request.getParameter("productIdSearch");
        List<Customer> customerList = customerService.search(nameSearch,emailSearch,productIdSearch);
        List<CustomerProduct> productList = customerProductService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/listcustomer.jsp");
        request.setAttribute("customerList", customerList);
        request.setAttribute("productList", productList);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        Customer customer = customerService.findById(customerId);
        RequestDispatcher requestDispatcher;
        if (customer == null) {
            requestDispatcher = request.getRequestDispatcher("view/customer/error.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            boolean check = customerService.remove(customerId);
            String mess = "";
            if (check) {
                mess = "Compelete";
            } else {
                mess = "Not compelete";
            }
            request.setAttribute("mess", mess);
            List<Customer> customerList = customerService.findAll();
            requestDispatcher = request.getRequestDispatcher("view/customer/listcustomer.jsp");
            request.setAttribute("customerList", customerList);
            try {
                try {
                    requestDispatcher.forward(request, response);
                } catch (ServletException e) {
                    e.printStackTrace();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        String name = request.getParameter("name");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
        int productId=Integer.parseInt(request.getParameter("productId"));
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        Customer customer = customerService.findById(customerId);
        RequestDispatcher requestDispatcher;
        if (customer == null) {
            requestDispatcher = request.getRequestDispatcher("view/customer/error.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            customer.setName(name);
            customer.setGender(gender);
            customer.setBirthday(birthday);
            customer.setEmail(email);
            customer.setProductId(productId);
            customer.setAddress(address);
            customer.setPhoneNumber(phoneNumber);
            boolean check = customerService.update(customerId, customer);
            String mess = "";
            if (check) {
                mess = "Compelete";
            } else {
                mess = "Not compelete";
            }
            request.setAttribute("mess", mess);
            List<Customer> customerList = customerService.findAll();
            List<CustomerProduct> productList = customerProductService.findAll();
            requestDispatcher = request.getRequestDispatcher("view/customer/listcustomer.jsp");
            request.setAttribute("customerList", customerList);
            request.setAttribute("productList", productList);
            try {
                try {
                    requestDispatcher.forward(request, response);
                } catch (ServletException e) {
                    e.printStackTrace();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void save(HttpServletRequest request, HttpServletResponse response) {
//        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
        int productId=Integer.parseInt(request.getParameter("productId"));
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        Customer customer = new Customer(name, gender, birthday,email,productId, address, phoneNumber);
        boolean check = customerService.save(customer);
        String mess = "Compelete !!!";
        if (!check) {
            mess = "Not compelete !!!";
        }
        request.setAttribute("mess", mess);
        List<Customer> customerList = customerService.findAll();
        List<CustomerProduct> productList = customerProductService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/listcustomer.jsp");
        request.setAttribute("customerList", customerList);
        request.setAttribute("productList", productList);
        try {
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
