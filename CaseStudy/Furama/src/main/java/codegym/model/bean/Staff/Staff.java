package codegym.model.bean.Staff;

public class Staff {
    private int staffId;
    private String staffName;
    private boolean gender;
    private String staffBirthday;
    private int staffCode;
    private double staffSalary;
    private int positionId;
    private int levelId;
    private int departmentId;
    private int staffPhoneNumber;
    private String staffEmail;
    private String staffAddress;

    public Staff(String staffName, boolean gender, String staffBirthday, int staffCode, double staffSalary,
                 int positionId, int levelId, int departmentId, int staffPhoneNumber,
                 String staffEmail, String staffAddress) {
        this.staffName = staffName;
        this.gender = gender;
        this.staffBirthday = staffBirthday;
        this.staffCode = staffCode;
        this.staffSalary = staffSalary;
        this.positionId = positionId;
        this.levelId = levelId;
        this.departmentId = departmentId;
        this.staffPhoneNumber = staffPhoneNumber;
        this.staffEmail = staffEmail;
        this.staffAddress = staffAddress;
    }

    public Staff(int staffId, String staffName, boolean gender, String staffBirthday, int staffCode,
                 double staffSalary, int positionId, int levelId, int departmentId,
                 int staffPhoneNumber, String staffEmail, String staffAddress) {
        this.staffId = staffId;
        this.staffName = staffName;
        this.gender = gender;
        this.staffBirthday = staffBirthday;
        this.staffCode = staffCode;
        this.staffSalary = staffSalary;
        this.positionId = positionId;
        this.levelId = levelId;
        this.departmentId = departmentId;
        this.staffPhoneNumber = staffPhoneNumber;
        this.staffEmail = staffEmail;
        this.staffAddress = staffAddress;
    }

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getStaffBirthday() {
        return staffBirthday;
    }

    public void setStaffBirthday(String staffBirthday) {
        this.staffBirthday = staffBirthday;
    }

    public int getStaffCode() {
        return staffCode;
    }

    public void setStaffCode(int staffCode) {
        this.staffCode = staffCode;
    }

    public double getStaffSalary() {
        return staffSalary;
    }

    public void setStaffSalary(double staffSalary) {
        this.staffSalary = staffSalary;
    }

    public int getStaffPhoneNumber() {
        return staffPhoneNumber;
    }

    public void setStaffPhoneNumber(int staffPhoneNumber) {
        this.staffPhoneNumber = staffPhoneNumber;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }

    public String getStaffAddress() {
        return staffAddress;
    }

    public void setStaffAddress(String staffAddress) {
        this.staffAddress = staffAddress;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }

    public int getLevelId() {
        return levelId;
    }

    public void setLevelId(int levelId) {
        this.levelId = levelId;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }
}
