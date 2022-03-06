package codegym.model.service.Customer.Impl;

import codegym.model.bean.Customer.Customer;
import codegym.model.bean.Staff.Staff;
import codegym.model.service.ConnectionDB;
import codegym.model.service.Customer.CustomerService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    static final String SELECT_ALL_CUSTOMER = "select * from khach_hang;";
    static final String ADD_NEW_CUSTOMER = "insert into khach_hang (`name_khach_hang`,gioi_tinh,ngay_sinh_khach_hang," +
            "id_loai_khach,so_cmnd_khach_hang,so_dien_thoai_khach_hang,email_khach_hang,dia_chi_khach_hang)" +
            "values (?,?,?,?,?,?,?,?);";
    static final String FIND_CUSTOMER_BY_ID = "select * from khach_hang where id_khach_hang=?; ";
    static final String EDIT_CUSTOMER = "update khach_hang set `name_khach_hang`=?,gioi_tinh=?,ngay_sinh_khach_hang=?," +
            "id_loai_khach=?,so_cmnd_khach_hang=?,so_dien_thoai_khach_hang=?,email_khach_hang=?,dia_chi_khach_hang=?" +
            "where id_khach_hang=?;";
    static final String DELETE_CUSTOMER = "delete from khach_hang where id_khach_hang=? ";
    static final String SEARCH_CUSTOMER = "SELECT * FROM khach_hang where `name_khach_hang` like ? and email_khach_hang like ?;";

    @Override
    public List<Customer> findAll() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId = resultSet.getInt("id_khach_hang");
                String customerName = resultSet.getString("name_khach_hang");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String customerBirthday = resultSet.getString("ngay_sinh_khach_hang");
                int customerCode = resultSet.getInt("so_cmnd_khach_hang");
                int customerPhoneNumber = resultSet.getInt("so_dien_thoai_khach_hang");
                String customerEmail = resultSet.getString("email_khach_hang");
                String customerAddress = resultSet.getString("dia_chi_khach_hang");
                int typeOfCustomerId = resultSet.getInt("id_loai_khach");
                Customer customer = new Customer(customerId, customerName, gender, customerBirthday, typeOfCustomerId,
                        customerCode, customerPhoneNumber, customerEmail, customerAddress);
                customers.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }

    @Override
    public Customer findById(int customerId) {
        Customer customer = null;
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_CUSTOMER_BY_ID);
            preparedStatement.setInt(1, customerId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String customerName = resultSet.getString("name_khach_hang");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String customerBirthday = resultSet.getString("ngay_sinh_khach_hang");
                int typeOfCustomerId = resultSet.getInt("id_loai_khach");
                int customerCode = resultSet.getInt("so_cmnd_khach_hang");
                int customerPhoneNumber = resultSet.getInt("so_dien_thoai_khach_hang");
                String customerEmail = resultSet.getString("email_khach_hang");
                String customerAddress = resultSet.getString("dia_chi_khach_hang");
                customer = new Customer(customerId, customerName, gender, customerBirthday, typeOfCustomerId, customerCode,
                        customerPhoneNumber, customerEmail, customerAddress);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }

    @Override
    public boolean addCustomer(Customer customer) {
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_NEW_CUSTOMER);
            preparedStatement.setString(1, customer.getCustomerName());
            preparedStatement.setBoolean(2, customer.isGender());
            preparedStatement.setDate(3, Date.valueOf(customer.getCustomerBirthday()));
            preparedStatement.setInt(4, customer.getTypeOfCustomerId());
            preparedStatement.setInt(5, customer.getCustomerCode());
            preparedStatement.setInt(6, customer.getCustomerPhoneNumber());
            preparedStatement.setString(7, customer.getCustomerEmail());
            preparedStatement.setString(8, customer.getCustomerAddress());

            int check = preparedStatement.executeUpdate();
            if (check != 0) {
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean editCustomer(int customerId, Customer customer) {
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT_CUSTOMER);
            preparedStatement.setString(1, customer.getCustomerName());
            preparedStatement.setBoolean(2, customer.isGender());
            preparedStatement.setDate(3, Date.valueOf(customer.getCustomerBirthday()));
            preparedStatement.setInt(4, customer.getTypeOfCustomerId());
            preparedStatement.setInt(5, customer.getCustomerCode());
            preparedStatement.setInt(6, customer.getCustomerPhoneNumber());
            preparedStatement.setString(7, customer.getCustomerEmail());
            preparedStatement.setString(8, customer.getCustomerAddress());
            preparedStatement.setInt(9, customer.getCustomerId());
            int check = preparedStatement.executeUpdate();
            if (check != 0) {
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteCustomer(int customerId) {
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CUSTOMER);
            preparedStatement.setInt(1, customerId);
            int check = preparedStatement.executeUpdate();
            if (check != 0) {
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Customer> search(String customerNameSearch, String customerEmailSearch) {
        Connection connection = ConnectionDB.getConnection();
        List<Customer> customers = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_CUSTOMER);
            preparedStatement.setString(1, "%" + customerNameSearch + "%");
            preparedStatement.setString(2, "%" + customerEmailSearch + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId = resultSet.getInt("id_khach_hang");
                String customerName = resultSet.getString("name_khach_hang");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String customerBirthday = resultSet.getString("ngay_sinh_khach_hang");
                int customerCode = resultSet.getInt("so_cmnd_khach_hang");
                int customerPhoneNumber = resultSet.getInt("so_dien_thoai_khach_hang");
                String customerEmail = resultSet.getString("email_khach_hang");
                String customerAddress = resultSet.getString("dia_chi_khach_hang");
                int typeOfCustomerId = resultSet.getInt("id_loai_khach");
                Customer customer = new Customer(customerId, customerName, gender, customerBirthday, typeOfCustomerId,
                        customerCode, customerPhoneNumber, customerEmail, customerAddress);
                customers.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }
}
