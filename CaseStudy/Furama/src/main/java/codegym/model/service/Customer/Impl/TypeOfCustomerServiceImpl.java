package codegym.model.service.Customer.Impl;

import codegym.model.bean.Customer.TypeOfCustomer;
import codegym.model.bean.Staff.StaffLevel;
import codegym.model.service.ConnectionDB;
import codegym.model.service.Customer.TypeOfCustomerService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeOfCustomerServiceImpl implements TypeOfCustomerService {
    static final String SELECT_ALL_TYPE_OF_CUSTOMER = "select * from loai_khach;";

    @Override
    public List<TypeOfCustomer> findAll() {
        List<TypeOfCustomer> typeOfCustomerList = new ArrayList<>();
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TYPE_OF_CUSTOMER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int typeOfCustomerId = resultSet.getInt("id_loai_khach");
                String typeOfCustomerName = resultSet.getString("name_loai_khach");
                TypeOfCustomer typeOfCustomer = new TypeOfCustomer(typeOfCustomerId, typeOfCustomerName);
                typeOfCustomerList.add(typeOfCustomer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return typeOfCustomerList;
    }
}
