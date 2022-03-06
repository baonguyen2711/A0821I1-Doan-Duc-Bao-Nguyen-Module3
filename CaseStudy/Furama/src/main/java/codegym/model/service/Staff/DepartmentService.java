package codegym.model.service.Staff;

import codegym.model.bean.Staff.StaffDepartment;
import codegym.model.bean.Staff.StaffPosition;

import java.util.List;

public interface DepartmentService {
    List<StaffDepartment> findAll();
}
