package codegym.model.service.Staff.Impl;

import codegym.model.bean.Staff.StaffDepartment;
import codegym.model.bean.Staff.StaffPosition;
import codegym.model.service.ConnectionDB;
import codegym.model.service.Staff.DepartmentService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DepartmentServiceImpl implements DepartmentService {
    static final String SELECT_ALL_STAFF_DEPARTMENT = "select * from bo_phan;";

    @Override
    public List<StaffDepartment> findAll() {
        List<StaffDepartment> departmentList = new ArrayList<>();
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_STAFF_DEPARTMENT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int departmentId = resultSet.getInt("id_bo_phan");
                String departmentName = resultSet.getString("name_bo_phan");
                StaffDepartment staffDepartment = new StaffDepartment(departmentId, departmentName);
                departmentList.add(staffDepartment);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return departmentList;
    }
}
