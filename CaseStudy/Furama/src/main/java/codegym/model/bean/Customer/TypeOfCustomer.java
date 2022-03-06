package codegym.model.bean.Customer;

public class TypeOfCustomer {
    private int typeOfCustomerId;
    private String typeOfCustomerName;

    public TypeOfCustomer(String typeOfCustomerName) {
        this.typeOfCustomerName = typeOfCustomerName;
    }

    public TypeOfCustomer(int typeOfCustomerId, String typeOfCustomerName) {
        this.typeOfCustomerId = typeOfCustomerId;
        this.typeOfCustomerName = typeOfCustomerName;
    }

    public int getTypeOfCustomerId() {
        return typeOfCustomerId;
    }

    public void setTypeOfCustomerId(int typeOfCustomerId) {
        this.typeOfCustomerId = typeOfCustomerId;
    }

    public String getTypeOfCustomerName() {
        return typeOfCustomerName;
    }

    public void setTypeOfCustomerName(String typeOfCustomerName) {
        this.typeOfCustomerName = typeOfCustomerName;
    }
}
