package codegym.model.service.Impl;

import codegym.model.bean.CustomerProduct;
import codegym.model.service.CustomerProductService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerProductServiceImpl implements CustomerProductService {
    static final String SELECT_ALL_PRODUCT = "select * from Product;";

    @Override
    public List<CustomerProduct> findAll() {
        List<CustomerProduct> productList = new ArrayList<>();
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int productId = resultSet.getInt("id_product");
                String name = resultSet.getString("name_product");
                int classTypeId = resultSet.getInt("product_Type_Id");
                CustomerProduct customerProduct = new CustomerProduct(productId, name, classTypeId);
                productList.add(customerProduct);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return productList;
    }
}
