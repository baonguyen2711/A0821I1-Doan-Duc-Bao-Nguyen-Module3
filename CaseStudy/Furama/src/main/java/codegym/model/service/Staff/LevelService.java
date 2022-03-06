package codegym.model.service.Staff;

import codegym.model.bean.Staff.StaffLevel;

import java.util.List;

public interface LevelService {
    List<StaffLevel> findAll();
}
