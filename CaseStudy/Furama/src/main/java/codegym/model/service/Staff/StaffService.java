package codegym.model.service.Staff;

import codegym.model.bean.Staff.Staff;

import java.util.List;

public interface StaffService {
    List<Staff> findAll();
    Staff findById(int staffId);
    boolean addStaff(Staff staff);
    boolean editStaff(int staffId, Staff staff);
    boolean deleteStaff(int staffId);
    List<Staff> search(String staffNameSearch,String staffEmailSearch);
}
