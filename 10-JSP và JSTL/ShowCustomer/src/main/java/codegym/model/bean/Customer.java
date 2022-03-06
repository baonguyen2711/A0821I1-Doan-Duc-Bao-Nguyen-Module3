package codegym.model.bean;

public class Customer {
    private int customerId;
    private String name;
    private boolean gender;
    private String birthday;
    private String address;
    private String phoneNumber;
    private String email;
    private int productId;
    public Customer(String name, boolean gender, String birthday,String email,int productId, String address, String phoneNumber) {
        this.name = name;
        this.gender = gender;
        this.birthday = birthday;
        this.email = email;
        this.productId = productId;
        this.address = address;
        this.phoneNumber = phoneNumber;
    }

    public Customer(int customerId,String name, boolean gender, String birthday,String email,int productId, String address, String phoneNumber) {
        this.customerId = customerId;
        this.name = name;
        this.gender = gender;
        this.birthday = birthday;
        this.email = email;
        this.productId = productId;
        this.address = address;
        this.phoneNumber = phoneNumber;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
