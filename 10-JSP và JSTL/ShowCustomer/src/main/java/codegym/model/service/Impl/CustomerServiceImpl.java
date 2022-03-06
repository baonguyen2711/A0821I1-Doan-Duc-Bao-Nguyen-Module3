package codegym.model.service.Impl;

import codegym.model.bean.Customer;
import codegym.model.service.CustomerService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerServiceImpl implements CustomerService {

    static ArrayList<Customer> customerList = new ArrayList<>();
    static final String SELECT_ALL_CUSTOMER = "select * from Customer;";
    static final String ADD_CUSTOMER = "insert into Customer(`name_customer`,gender,birthday,email,id_product" +
            ",`address_customer`" +
            ",`phone_customer`)" + "values(?,?,?,?,?,?,?);";
    static final String UPDATE_CUSTOMER = "update Customer set `name_customer`= ?,gender= ?,birthday= ?" +
            ",email= ?,id_product=?,`address_customer`= ?,`phone_customer`= ? where id_customer= ?; ";
    static final String FIND_BY_ID = "select `name_customer`,gender,birthday,email,id_product,`address_customer`," +
            "`phone_customer`from Customer where id_customer=?;";
    static final String DELETE_CUSTOMER = "delete from Customer where id_customer = ?;";
    static final String SEARCH_CUSTOMER = "SELECT * FROM Customer where `name_customer` like ? and email like ? and" +
            " id_product like  ?;";

//    static {
//        customerList.add(new Customer(1, "Tom", true, "1992-11-27", "Đà Nẵng", "0702770099"));
//        customerList.add(new Customer(2, "Tim", true, "1991-10-11", "Đà Nẵng", "0707123123"));
//        customerList.add(new Customer(3, "Tem", false, "1990-02-04", "Đà Nẵng", "0702456456"));
//        customerList.add(new Customer(4, "Tum", true, "1995-03-21", "Đà Nẵng", "0702789789"));
//        customerList.add(new Customer(5, "Tam", false, "1989-05-17", "Đà Nẵng", "0702111222"));
//    }

    @Override
    public List<Customer> findAll() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId = resultSet.getInt("id_customer");
                String name = resultSet.getString("name_customer");
                boolean gender = resultSet.getBoolean("gender");
                String birthday = resultSet.getString("birthday");
                String email = resultSet.getString("email");
                int productId = resultSet.getInt("id_product");
                String address = resultSet.getString("address_customer");
                String phoneNumber = resultSet.getString("phone_customer");
                Customer customer = new Customer(customerId, name, gender, birthday,email,productId, address, phoneNumber);
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
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, customerId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name_customer");
                boolean gender = resultSet.getBoolean("gender");
                String birthday = resultSet.getString("birthday");
                String email = resultSet.getString("email");
                int productId = resultSet.getInt("id_product");
                String address = resultSet.getString("address_customer");
                String phoneNumber = resultSet.getString("phone_customer");
                customer = new Customer(customerId, name, gender, birthday,email,productId, address, phoneNumber);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }

    @Override
    public boolean save(Customer customer) {
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_CUSTOMER);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setBoolean(2, customer.isGender());
            preparedStatement.setDate(3, Date.valueOf(customer.getBirthday()));
            preparedStatement.setString(4, customer.getEmail());
            preparedStatement.setInt(5,customer.getProductId());
            preparedStatement.setString(6, customer.getAddress());
            preparedStatement.setString(7, customer.getPhoneNumber());
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
    public boolean update(int customerId, Customer customer) {
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setBoolean(2, customer.isGender());
            preparedStatement.setDate(3, Date.valueOf(customer.getBirthday()));
            preparedStatement.setString(4, customer.getEmail());
            preparedStatement.setInt(5,customer.getProductId());
            preparedStatement.setString(6, customer.getAddress());
            preparedStatement.setString(7, customer.getPhoneNumber());
            preparedStatement.setInt(8, customer.getCustomerId());
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
    public boolean remove(int customerId) {
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

    public List<Customer> search(String nameSearch,String emailSearch,String productIdSearch) {
        Connection connection = ConnectionDB.getConnection();
        List<Customer> customers = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_CUSTOMER);
            preparedStatement.setString(1, "%"+nameSearch+"%");
            preparedStatement.setString(2, "%"+emailSearch+"%");
            preparedStatement.setString(3, "%"+productIdSearch+"%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId = resultSet.getInt("id_customer");
                String name = resultSet.getString("name_customer");
                boolean gender = resultSet.getBoolean("gender");
                String birthday = resultSet.getString("birthday");
                String email = resultSet.getString("email");
                int productId = resultSet.getInt("id_product");
                String address = resultSet.getString("address_customer");
                String phoneNumber = resultSet.getString("phone_customer");
                Customer customer = new Customer(customerId,name,gender,birthday,email,productId,address,phoneNumber);
                customers.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }
}
