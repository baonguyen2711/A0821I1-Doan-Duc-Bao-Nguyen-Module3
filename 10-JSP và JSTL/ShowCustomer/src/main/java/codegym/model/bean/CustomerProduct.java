package codegym.model.bean;

public class CustomerProduct {
    private int productId;
    private String customerProductName;
    private  int productTypeId;

    public CustomerProduct(String customerProductName, int productTypeId) {
        this.customerProductName = customerProductName;
        this.productTypeId = productTypeId;
    }

    public CustomerProduct(int productId, String customerProductName, int productTypeId) {
        this.productId = productId;
        this.customerProductName = customerProductName;
        this.productTypeId = productTypeId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getCustomerProductName() {
        return customerProductName;
    }

    public void setCustomerProductName(String customerProductName) {
        this.customerProductName = customerProductName;
    }

    public int getProductTypeId() {
        return productTypeId;
    }

    public void setProductTypeId(int productTypeId) {
        this.productTypeId = productTypeId;
    }
}
