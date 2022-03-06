package codegym.model.bean.Customer;

public class Customer {
    private int customerId;
    private String customerName;
    private boolean gender;
    private String customerBirthday;
    private int typeOfCustomerId;
    private int customerCode;
    private int customerPhoneNumber;
    private String customerEmail;
    private String customerAddress;


    public Customer(String customerName, boolean gender, String customerBirthday, int typeOfCustomerId, int customerCode,
                    int customerPhoneNumber, String customerEmail, String customerAddress) {
        this.customerName = customerName;
        this.gender = gender;
        this.customerBirthday = customerBirthday;
        this.customerCode = customerCode;
        this.customerPhoneNumber = customerPhoneNumber;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
        this.typeOfCustomerId = typeOfCustomerId;
    }

    public Customer(int customerId, String customerName, boolean gender, String customerBirthday, int typeOfCustomerId
            , int customerCode, int customerPhoneNumber, String customerEmail, String customerAddress) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.gender = gender;
        this.customerBirthday = customerBirthday;
        this.customerCode = customerCode;
        this.customerPhoneNumber = customerPhoneNumber;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
        this.typeOfCustomerId = typeOfCustomerId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getCustomerBirthday() {
        return customerBirthday;
    }

    public void setCustomerBirthday(String customerBirthday) {
        this.customerBirthday = customerBirthday;
    }

    public int getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(int customerCode) {
        this.customerCode = customerCode;
    }

    public int getCustomerPhoneNumber() {
        return customerPhoneNumber;
    }

    public void setCustomerPhoneNumber(int customerPhoneNumber) {
        this.customerPhoneNumber = customerPhoneNumber;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public int getTypeOfCustomerId() {
        return typeOfCustomerId;
    }

    public void setTypeOfCustomerId(int typeOfCustomerId) {
        this.typeOfCustomerId = typeOfCustomerId;
    }
}
