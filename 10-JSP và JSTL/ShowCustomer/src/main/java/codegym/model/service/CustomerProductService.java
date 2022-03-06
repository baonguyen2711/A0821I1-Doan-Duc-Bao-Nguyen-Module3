package codegym.model.service;

import codegym.model.bean.CustomerProduct;

import java.util.List;

public interface CustomerProductService {
    List<CustomerProduct> findAll();
}
