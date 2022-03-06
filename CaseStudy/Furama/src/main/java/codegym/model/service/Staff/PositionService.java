package codegym.model.service.Staff;

import codegym.model.bean.Staff.StaffLevel;
import codegym.model.bean.Staff.StaffPosition;

import java.util.List;

public interface PositionService {
    List<StaffPosition> findAll();
}
