package codegym.model.service.Customer;

import codegym.model.bean.Customer.Customer;
import codegym.model.bean.Staff.Staff;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();
    Customer findById(int customerId);
    boolean addCustomer(Customer customer);
    boolean editCustomer(int customerId, Customer customer);
    boolean deleteCustomer(int customerId);
    List<Customer> search(String customerNameSearch,String customerEmailSearch);
}
