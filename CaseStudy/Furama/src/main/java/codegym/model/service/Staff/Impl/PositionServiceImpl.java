package codegym.model.service.Staff.Impl;

import codegym.model.bean.Staff.StaffLevel;
import codegym.model.bean.Staff.StaffPosition;
import codegym.model.service.ConnectionDB;
import codegym.model.service.Staff.PositionService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PositionServiceImpl implements PositionService {
    static final String SELECT_ALL_STAFF_POSITION = "select * from vi_tri;";

    @Override
    public List<StaffPosition> findAll() {
        List<StaffPosition> positionList = new ArrayList<>();
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_STAFF_POSITION);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int positionId = resultSet.getInt("id_vi_tri");
                String positionName = resultSet.getString("name_vi_tri");
                StaffPosition staffPosition = new StaffPosition(positionId, positionName);
                positionList.add(staffPosition);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return positionList;
    }
}
