package codegym.model.repository;

import codegym.model.bean.Customer;

import java.util.List;

public interface CustomerRepository {
    List<Customer> findAll();
    Customer findById(int customerId);
    boolean save(Customer customer);
    boolean update(int customerId, Customer customer);
    boolean remove(int customerId);
    List<Customer> search(String nameSearch,String emailSearch,String productIdSearch);
}
