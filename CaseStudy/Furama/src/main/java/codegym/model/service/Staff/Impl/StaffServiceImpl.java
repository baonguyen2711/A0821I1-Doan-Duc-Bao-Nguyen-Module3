package codegym.model.service.Staff.Impl;

import codegym.model.bean.Customer.Customer;
import codegym.model.bean.Staff.Staff;
import codegym.model.service.ConnectionDB;
import codegym.model.service.Staff.StaffService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StaffServiceImpl implements StaffService {
    static final String SELECT_ALL_STAFF = "select * from nhan_vien";
    static final String ADD_NEW_STAFF = "insert into nhan_vien (`name_nhan_vien`,gioi_tinh,ngay_sinh_nhan_vien,so_cmnd," +
            "luong,id_vi_tri,id_trinh_do,id_bo_phan,so_dien_thoai_nhan_vien,email_nhan_vien,dia_chi_nhan_vien)" +
            " values(?,?,?,?,?,?,?,?,?,?,?);";
    static final String EDIT_STAFF = "update nhan_vien set `name_nhan_vien`=?,gioi_tinh=?,ngay_sinh_nhan_vien=?," +
            "so_cmnd=?,luong=?,id_vi_tri=?,id_trinh_do=?,id_bo_phan=?,so_dien_thoai_nhan_vien=?,email_nhan_vien=?," +
            "dia_chi_nhan_vien=? where id_nhan_vien =?";
    static final String FIND_STAFF_BY_ID = "select * from nhan_vien where id_nhan_vien=? ";
    static final String DELETE_STAFF = "delete from nhan_vien where id_nhan_vien=? ";
    static final String SEARCH_STAFF = "SELECT * FROM nhan_vien where `name_nhan_vien` like ? and email_nhan_vien like ?;";
    @Override
    public List<Staff> findAll() {
        List<Staff> staffs = new ArrayList<>();
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_STAFF);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int staffId = resultSet.getInt("id_nhan_vien");
                String staffName = resultSet.getString("name_nhan_vien");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String staffBirthday = resultSet.getString("ngay_sinh_nhan_vien");
                int staffCode = resultSet.getInt("so_cmnd");
                double staffSalary = resultSet.getDouble("luong");
                int staffPositionId = resultSet.getInt("id_vi_tri");
                int staffLevelId = resultSet.getInt("id_trinh_do");
                int staffDepartmentId = resultSet.getInt("id_bo_phan");
                int staffPhoneNumber = resultSet.getInt("so_dien_thoai_nhan_vien");
                String staffEmail = resultSet.getString("email_nhan_vien");
                String staffAddress = resultSet.getString("dia_chi_nhan_vien");

                Staff staff = new Staff(staffId, staffName, gender, staffBirthday, staffCode, staffSalary,
                        staffPositionId, staffLevelId, staffDepartmentId, staffPhoneNumber, staffEmail, staffAddress);
                staffs.add(staff);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return staffs;
    }

    @Override
    public Staff findById(int staffId) {
        Staff staff=null;
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_STAFF_BY_ID);
            preparedStatement.setInt(1, staffId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String staffName = resultSet.getString("name_nhan_vien");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String staffBirthday = resultSet.getString("ngay_sinh_nhan_vien");
                int staffCode = resultSet.getInt("so_cmnd");
                double staffSalary = resultSet.getDouble("luong");
                int staffPositionId = resultSet.getInt("id_vi_tri");
                int staffLevelId = resultSet.getInt("id_trinh_do");
                int staffDepartmentId = resultSet.getInt("id_bo_phan");
                int staffPhoneNumber = resultSet.getInt("so_dien_thoai_nhan_vien");
                String staffEmail = resultSet.getString("email_nhan_vien");
                String staffAddress = resultSet.getString("dia_chi_nhan_vien");
                staff = new Staff(staffId, staffName, gender, staffBirthday, staffCode, staffSalary,
                        staffPositionId, staffLevelId, staffDepartmentId, staffPhoneNumber, staffEmail, staffAddress);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return staff;
    }

    @Override
    public boolean addStaff(Staff staff) {
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_NEW_STAFF);
            preparedStatement.setString(1, staff.getStaffName());
            preparedStatement.setBoolean(2, staff.isGender());
            preparedStatement.setDate(3, Date.valueOf(staff.getStaffBirthday()));
            preparedStatement.setInt(4, staff.getStaffCode());
            preparedStatement.setDouble(5, staff.getStaffSalary());
            preparedStatement.setInt(6, staff.getPositionId());
            preparedStatement.setInt(7, staff.getLevelId());
            preparedStatement.setInt(8, staff.getDepartmentId());
            preparedStatement.setInt(9, staff.getStaffPhoneNumber());
            preparedStatement.setString(10, staff.getStaffEmail());
            preparedStatement.setString(11, staff.getStaffAddress());

            int check = preparedStatement.executeUpdate();
            if (check != 0) {
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean editStaff(int staffId, Staff staff) {
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT_STAFF);
            preparedStatement.setString(1, staff.getStaffName());
            preparedStatement.setBoolean(2, staff.isGender());
            preparedStatement.setDate(3, Date.valueOf(staff.getStaffBirthday()));
            preparedStatement.setInt(4, staff.getStaffCode());
            preparedStatement.setDouble(5, staff.getStaffSalary());
            preparedStatement.setInt(6, staff.getPositionId());
            preparedStatement.setInt(7, staff.getLevelId());
            preparedStatement.setInt(8, staff.getDepartmentId());
            preparedStatement.setInt(9, staff.getStaffPhoneNumber());
            preparedStatement.setString(10, staff.getStaffEmail());
            preparedStatement.setString(11, staff.getStaffAddress());
            preparedStatement.setInt(12, staff.getStaffId());
            int check = preparedStatement.executeUpdate();
            if (check != 0) {
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteStaff(int staffId) {
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_STAFF);
            preparedStatement.setInt(1, staffId);
            int check = preparedStatement.executeUpdate();
            if (check != 0) {
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Staff> search(String staffNameSearch,String staffEmailSearch) {
        Connection connection = ConnectionDB.getConnection();
        List<Staff> staffs = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_STAFF);
            preparedStatement.setString(1, "%" + staffNameSearch + "%");
            preparedStatement.setString(2, "%" + staffEmailSearch + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int staffId = resultSet.getInt("id_nhan_vien");
                String staffName = resultSet.getString("name_nhan_vien");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String staffBirthday = resultSet.getString("ngay_sinh_nhan_vien");
                int staffCode = resultSet.getInt("so_cmnd");
                double staffSalary = resultSet.getDouble("luong");
                int staffPositionId = resultSet.getInt("id_vi_tri");
                int staffLevelId = resultSet.getInt("id_trinh_do");
                int staffDepartmentId = resultSet.getInt("id_bo_phan");
                int staffPhoneNumber = resultSet.getInt("so_dien_thoai_nhan_vien");
                String staffEmail = resultSet.getString("email_nhan_vien");
                String staffAddress = resultSet.getString("dia_chi_nhan_vien");

                Staff staff = new Staff(staffId, staffName, gender, staffBirthday, staffCode, staffSalary,
                        staffPositionId, staffLevelId, staffDepartmentId, staffPhoneNumber, staffEmail, staffAddress);
                staffs.add(staff);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return staffs;
    }
}
