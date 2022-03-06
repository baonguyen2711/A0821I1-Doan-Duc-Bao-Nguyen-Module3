package codegym.controller.home;

import codegym.model.bean.Customer.Customer;
import codegym.model.bean.Customer.TypeOfCustomer;
import codegym.model.bean.Staff.Staff;
import codegym.model.bean.Staff.StaffDepartment;
import codegym.model.bean.Staff.StaffLevel;
import codegym.model.bean.Staff.StaffPosition;
import codegym.model.service.Customer.CustomerService;
import codegym.model.service.Customer.Impl.CustomerServiceImpl;
import codegym.model.service.Customer.Impl.TypeOfCustomerServiceImpl;
import codegym.model.service.Customer.TypeOfCustomerService;
import codegym.model.service.Staff.DepartmentService;
import codegym.model.service.Staff.Impl.DepartmentServiceImpl;
import codegym.model.service.Staff.Impl.LevelServiceImpl;
import codegym.model.service.Staff.Impl.PositionServiceImpl;
import codegym.model.service.Staff.Impl.StaffServiceImpl;
import codegym.model.service.Staff.LevelService;
import codegym.model.service.Staff.PositionService;
import codegym.model.service.Staff.StaffService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {
    private StaffService staffService = new StaffServiceImpl();
    private LevelService levelService = new LevelServiceImpl();
    private DepartmentService departmentService = new DepartmentServiceImpl();
    private PositionService positionService = new PositionServiceImpl();
    private CustomerService customerService = new CustomerServiceImpl();
    private TypeOfCustomerService typeOfCustomerService = new TypeOfCustomerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "addStaff":
                showFormAddStaff(request, response);
                break;
            case "addCustomer":
                showFormAddCustomer(request, response);
                break;
            case "editStaff":
                showFormEditStaff(request, response);
                break;
            case "editCustomer":
                showFormEditCustomer(request, response);
                break;
            case "deleteStaff":
                showFormDeleteStaff(request, response);
                break;
            case "deleteCustomer":
                showFormDeleteCustomer(request, response);
                break;
            case "showStaff":
                staffList(request, response);
                break;
            case "showCustomer":
                customerList(request, response);
                break;
            case "viewRoom":
                viewRoom(request, response);
                break;
                case "viewCulinary":
                viewCulinary(request, response);
                break;
            default:
                home(request, response);
        }
    }

    private void viewCulinary(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/culinary.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void viewRoom(HttpServletRequest request, HttpServletResponse response) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/room.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }


    private void showFormDeleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<TypeOfCustomer> typeOfCustomerList = typeOfCustomerService.findAll();
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        Customer customer = this.customerService.findById(customerId);
        RequestDispatcher requestDispatcher;
        if (customer == null) {
            requestDispatcher = request.getRequestDispatcher("view/error.jsp");
        } else {
            request.setAttribute("customer", customer);
            request.setAttribute("typeOfCustomerList", typeOfCustomerList);
            requestDispatcher = request.getRequestDispatcher("view/Furama/Customer/deletecustomer.jsp");
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
        List<TypeOfCustomer> typeOfCustomerList = typeOfCustomerService.findAll();
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        Customer customer = this.customerService.findById(customerId);
        RequestDispatcher requestDispatcher;
        if (customer == null) {
            requestDispatcher = request.getRequestDispatcher("view/error.jsp");
        } else {
            request.setAttribute("customer", customer);
            request.setAttribute("typeOfCustomerList", typeOfCustomerList);
            requestDispatcher = request.getRequestDispatcher("view/Furama/Customer/editcustomer.jsp");
        }
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormDeleteStaff(HttpServletRequest request, HttpServletResponse response) {
        List<StaffLevel> levelList = levelService.findAll();
        List<StaffPosition> positionList = positionService.findAll();
        List<StaffDepartment> departmentList = departmentService.findAll();
        int staffId = Integer.parseInt(request.getParameter("staffId"));
        Staff staff = this.staffService.findById(staffId);
        RequestDispatcher requestDispatcher;
        if (staff == null) {
            requestDispatcher = request.getRequestDispatcher("view/error.jsp");
        } else {
            request.setAttribute("staff", staff);
            request.setAttribute("levelList", levelList);
            request.setAttribute("positionList", positionList);
            request.setAttribute("departmentList", departmentList);
            requestDispatcher = request.getRequestDispatcher("view/Furama/Staff/deletestaff.jsp");
        }
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormEditStaff(HttpServletRequest request, HttpServletResponse response) {

        List<StaffLevel> levelList = levelService.findAll();
        List<StaffPosition> positionList = positionService.findAll();
        List<StaffDepartment> departmentList = departmentService.findAll();
        int staffId = Integer.parseInt(request.getParameter("staffId"));
        Staff staff = this.staffService.findById(staffId);
        RequestDispatcher requestDispatcher;
        if (staff == null) {
            requestDispatcher = request.getRequestDispatcher("view/error.jsp");
        } else {
            request.setAttribute("staff", staff);
            request.setAttribute("levelList", levelList);
            request.setAttribute("positionList", positionList);
            request.setAttribute("departmentList", departmentList);
            requestDispatcher = request.getRequestDispatcher("view/Furama/Staff/editstaff.jsp");
        }
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormAddCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<TypeOfCustomer> typeOfCustomerList = typeOfCustomerService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/Customer/createcustomer.jsp");
        request.setAttribute("typeOfCustomerList", typeOfCustomerList);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void customerList(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.findAll();
        List<TypeOfCustomer> typeOfCustomerList = typeOfCustomerService.findAll();

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/Customer/customerlist.jsp");
        request.setAttribute("customerList", customerList);
        request.setAttribute("typeOfCustomerList", typeOfCustomerList);

        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormAddStaff(HttpServletRequest request, HttpServletResponse response) {
        List<StaffPosition> positionList = positionService.findAll();
        List<StaffLevel> levelList = levelService.findAll();
        List<StaffDepartment> departmentList = departmentService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/Staff/createstaff.jsp");
        request.setAttribute("positionList", positionList);
        request.setAttribute("levelList", levelList);
        request.setAttribute("departmentList", departmentList);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void home(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/home.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void staffList(HttpServletRequest request, HttpServletResponse response) {
        List<Staff> staffList = staffService.findAll();
        List<StaffLevel> levelList = levelService.findAll();
        List<StaffPosition> positionList = positionService.findAll();
        List<StaffDepartment> departmentList = departmentService.findAll();

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/Staff/stafflist.jsp");
        request.setAttribute("staffList", staffList);
        request.setAttribute("levelList", levelList);
        request.setAttribute("positionList", positionList);
        request.setAttribute("departmentList", departmentList);
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
            case "addStaff":
                addStaff(request, response);
                break;
            case "addCustomer":
                addCustomer(request, response);
                break;
            case "editStaff":
                editStaff(request, response);
                break;
            case "editCustomer":
                editCustomer(request, response);
                break;
            case "deleteStaff":
                deleteStaff(request, response);
                break;
            case "deleteCustomer":
                deleteCustomer(request, response);
                break;
            case "searchStaff":
                searchStaff(request, response);
                break;
            case "searchCustomer":
                searchCustomer(request, response);
                break;
            default:

        }
    }

    private void searchCustomer(HttpServletRequest request, HttpServletResponse response) {
        String customerNameSearch = request.getParameter("customerNameSearch");
        String customerEmailSearch = request.getParameter("customerEmailSearch");
        List<Customer> customerList = customerService.search(customerNameSearch, customerEmailSearch);
        List<TypeOfCustomer> typeOfCustomerList = typeOfCustomerService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/Customer/customerlist.jsp");
        request.setAttribute("customerList", customerList);
        request.setAttribute("typeOfCustomerList", typeOfCustomerList);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void searchStaff(HttpServletRequest request, HttpServletResponse response) {
        String staffNameSearch = request.getParameter("staffNameSearch");
        String staffEmailSearch = request.getParameter("staffEmailSearch");
        List<Staff> staffList = staffService.search(staffNameSearch, staffEmailSearch);
        List<StaffLevel> levelList = levelService.findAll();
        List<StaffPosition> positionList = positionService.findAll();
        List<StaffDepartment> departmentList = departmentService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/Staff/stafflist.jsp");
        request.setAttribute("staffList", staffList);
        request.setAttribute("levelList", levelList);
        request.setAttribute("positionList", positionList);
        request.setAttribute("departmentList", departmentList);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        Customer customer = customerService.findById(customerId);
        RequestDispatcher requestDispatcher;
        if (customer == null) {
            requestDispatcher = request.getRequestDispatcher("view/error.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            boolean check = customerService.deleteCustomer(customerId);
            String mess = "";
            if (check) {
                mess = "Compelete";
            } else {
                mess = "Not compelete";
            }
            request.setAttribute("mess", mess);
            List<Customer> customerList = customerService.findAll();
            List<TypeOfCustomer> typeOfCustomerList = typeOfCustomerService.findAll();
            requestDispatcher = request.getRequestDispatcher("view/Furama/Customer/customerlist.jsp");
            request.setAttribute("customerList", customerList);
            request.setAttribute("typeOfCustomerList", typeOfCustomerList);
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

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        String customerName = request.getParameter("customerName");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String customerBirthday = request.getParameter("customerBirthday");
        int typeOfCustomerId = Integer.parseInt(request.getParameter("typeOfCustomerId"));
        int customerCode = Integer.parseInt(request.getParameter("customerCode"));
        int customerPhoneNumber = Integer.parseInt(request.getParameter("customerPhoneNumber"));
        String customerEmail = request.getParameter("customerEmail");
        String customerAddress = request.getParameter("customerAddress");
        Customer customer = customerService.findById(customerId);
        RequestDispatcher requestDispatcher;
        if (customer == null) {
            requestDispatcher = request.getRequestDispatcher("view/error.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            customer.setCustomerName(customerName);
            customer.setGender(gender);
            customer.setCustomerBirthday(customerBirthday);
            customer.setTypeOfCustomerId(typeOfCustomerId);
            customer.setCustomerCode(customerCode);

            customer.setCustomerPhoneNumber(customerPhoneNumber);
            customer.setCustomerEmail(customerEmail);
            customer.setCustomerAddress(customerAddress);
            boolean check = customerService.editCustomer(customerId, customer);
            String mess = "";
            if (check) {
                mess = "Compelete";
            } else {
                mess = "Not compelete";
            }
            request.setAttribute("mess", mess);
            List<Customer> customerList = customerService.findAll();
            List<TypeOfCustomer> typeOfCustomerList = typeOfCustomerService.findAll();

            requestDispatcher = request.getRequestDispatcher("view/Furama/Customer/customerlist.jsp");
            request.setAttribute("customerList", customerList);
            request.setAttribute("typeOfCustomerList", typeOfCustomerList);

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

    private void deleteStaff(HttpServletRequest request, HttpServletResponse response) {
        int staffId = Integer.parseInt(request.getParameter("staffId"));
        Staff staff = staffService.findById(staffId);
        RequestDispatcher requestDispatcher;
        if (staff == null) {
            requestDispatcher = request.getRequestDispatcher("view/error.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            boolean check = staffService.deleteStaff(staffId);
            String mess = "";
            if (check) {
                mess = "Compelete";
            } else {
                mess = "Not compelete";
            }
            request.setAttribute("mess", mess);
            List<Staff> staffList = staffService.findAll();
            List<StaffLevel> levelList = levelService.findAll();
            List<StaffPosition> positionList = positionService.findAll();
            List<StaffDepartment> departmentList = departmentService.findAll();
            requestDispatcher = request.getRequestDispatcher("view/Furama/Staff/stafflist.jsp");
            request.setAttribute("staffList", staffList);
            request.setAttribute("levelList", levelList);
            request.setAttribute("positionList", positionList);
            request.setAttribute("departmentList", departmentList);
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

    private void editStaff(HttpServletRequest request, HttpServletResponse response) {
        int staffId = Integer.parseInt(request.getParameter("staffId"));
        String staffName = request.getParameter("staffName");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String staffBirthday = request.getParameter("staffBirthday");
        int staffCode = Integer.parseInt(request.getParameter("staffCode"));
        double staffSalary = Double.parseDouble(request.getParameter("staffSalary"));
        int positionId = Integer.parseInt(request.getParameter("positionId"));
        int levelId = Integer.parseInt(request.getParameter("levelId"));
        int departmentId = Integer.parseInt(request.getParameter("departmentId"));

        int staffPhoneNumber = Integer.parseInt(request.getParameter("staffPhoneNumber"));
        String staffEmail = request.getParameter("staffEmail");
        String staffAddress = request.getParameter("staffAddress");
        Staff staff = staffService.findById(staffId);
        RequestDispatcher requestDispatcher;
        if (staff == null) {
            requestDispatcher = request.getRequestDispatcher("view/error.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            staff.setStaffName(staffName);
            staff.setGender(gender);
            staff.setStaffBirthday(staffBirthday);
            staff.setStaffCode(staffCode);
            staff.setStaffSalary(staffSalary);
            staff.setPositionId(positionId);
            staff.setLevelId(levelId);
            staff.setDepartmentId(departmentId);
            staff.setStaffPhoneNumber(staffPhoneNumber);
            staff.setStaffEmail(staffEmail);
            staff.setStaffAddress(staffAddress);
            boolean check = staffService.editStaff(staffId, staff);
            String mess = "";
            if (check) {
                mess = "Compelete";
            } else {
                mess = "Not compelete";
            }
            request.setAttribute("mess", mess);
            List<Staff> staffList = staffService.findAll();
            List<StaffLevel> levelList = levelService.findAll();
            List<StaffPosition> positionList = positionService.findAll();
            List<StaffDepartment> departmentList = departmentService.findAll();
            requestDispatcher = request.getRequestDispatcher("view/Furama/Staff/stafflist.jsp");
            request.setAttribute("staffList", staffList);
            request.setAttribute("levelList", levelList);
            request.setAttribute("positionList", positionList);
            request.setAttribute("departmentList", departmentList);
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

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {
        String customerName = request.getParameter("customerName");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String customerBirthday = request.getParameter("customerBirthday");
        int typeOfCustomerId = Integer.parseInt(request.getParameter("typeOfCustomerId"));
        int customerCode = Integer.parseInt(request.getParameter("customerCode"));
        int customerPhoneNumber = Integer.parseInt(request.getParameter("customerPhoneNumber"));
        String customerEmail = request.getParameter("customerEmail");
        String customerAddress = request.getParameter("customerAddress");
        Customer customer = new Customer(customerName, gender, customerBirthday, typeOfCustomerId, customerCode,
                customerPhoneNumber, customerEmail, customerAddress);
        boolean check = customerService.addCustomer(customer);
        String mess = "Compelete !!!";
        if (!check) {
            mess = "Not compelete !!!";
        }
        request.setAttribute("mess", mess);
        List<Customer> customerList = customerService.findAll();
        List<TypeOfCustomer> typeOfCustomerList = typeOfCustomerService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/Customer/customerlist.jsp");
        request.setAttribute("customerList", customerList);
        request.setAttribute("typeOfCustomerList", typeOfCustomerList);
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

    private void addStaff(HttpServletRequest request, HttpServletResponse response) {
        String staffName = request.getParameter("staffName");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String staffBirthday = request.getParameter("staffBirthday");
        int staffCode = Integer.parseInt(request.getParameter("staffCode"));
        double staffSalary = Double.parseDouble(request.getParameter("staffSalary"));
        int positionId = Integer.parseInt(request.getParameter("positionId"));
        int levelId = Integer.parseInt(request.getParameter("levelId"));
        int departmentId = Integer.parseInt(request.getParameter("departmentId"));
        int staffPhoneNumber = Integer.parseInt(request.getParameter("staffPhoneNumber"));
        String staffEmail = request.getParameter("staffEmail");
        String staffAddress = request.getParameter("staffAddress");
        Staff staff = new Staff(staffName, gender, staffBirthday, staffCode, staffSalary, positionId, levelId, departmentId,
                staffPhoneNumber, staffEmail, staffAddress);
        boolean check = staffService.addStaff(staff);
        String mess = "Compelete !!!";
        if (!check) {
            mess = "Not compelete !!!";
        }
        request.setAttribute("mess", mess);
        List<Staff> staffList = staffService.findAll();
        List<StaffLevel> levelList = levelService.findAll();
        List<StaffPosition> positionList = positionService.findAll();
        List<StaffDepartment> departmentList = departmentService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/Furama/Staff/stafflist.jsp");
        request.setAttribute("staffList", staffList);
        request.setAttribute("levelList", levelList);
        request.setAttribute("positionList", positionList);
        request.setAttribute("departmentList", departmentList);
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
