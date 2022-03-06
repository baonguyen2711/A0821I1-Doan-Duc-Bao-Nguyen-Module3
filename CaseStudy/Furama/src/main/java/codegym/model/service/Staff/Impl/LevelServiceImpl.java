package codegym.model.service.Staff.Impl;

import codegym.model.bean.Staff.StaffLevel;
import codegym.model.service.ConnectionDB;
import codegym.model.service.Staff.LevelService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LevelServiceImpl implements LevelService {
    static final String SELECT_ALL_STAFF_LEVEL = "select * from trinh_do;";

    @Override
    public List<StaffLevel> findAll() {
        List<StaffLevel> levelList = new ArrayList<>();
        Connection connection = ConnectionDB.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_STAFF_LEVEL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int levelId = resultSet.getInt("id_trinh_do");
                String levelName = resultSet.getString("name_trinh_do");
                StaffLevel staffLevel = new StaffLevel(levelId, levelName);
                levelList.add(staffLevel);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return levelList;
    }
}
