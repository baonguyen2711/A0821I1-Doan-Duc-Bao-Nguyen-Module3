package codegym.model.repository;

import codegym.model.bean.CustomerProduct;

import java.util.List;

public interface CustomerProductRepository {
    List<CustomerProduct> findAll();
}
