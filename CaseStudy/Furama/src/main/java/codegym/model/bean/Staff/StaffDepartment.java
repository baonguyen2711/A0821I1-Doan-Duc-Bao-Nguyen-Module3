package codegym.model.bean.Staff;

public class StaffDepartment {
    private int departmentId;
    private String departmentName;

    public StaffDepartment(String departmentName) {
        this.departmentName = departmentName;
    }

    public StaffDepartment(int departmentId, String departmentName) {
        this.departmentId = departmentId;
        this.departmentName = departmentName;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }
}
