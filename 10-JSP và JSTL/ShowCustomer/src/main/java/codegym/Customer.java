package codegym;

public class Customer {
    private int id;
    private static int idTemp;
    private String name;
    private boolean gender;
    private String birthday;
    private String address;
    private String sdt;
    public Customer() {

    }

    public Customer(String name, boolean gender, String birthday, String address, String sdt) {
        this.id = ++idTemp;
        this.name = name;
        this.gender = gender;
        this.birthday = birthday;
        this.address = address;
        this.sdt = sdt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }
}
