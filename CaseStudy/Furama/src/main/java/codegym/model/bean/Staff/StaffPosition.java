package codegym.model.bean.Staff;

public class StaffPosition {
    private int positionId;
    private String positionName;

    public StaffPosition(String positionName) {
        this.positionName = positionName;
    }

    public StaffPosition(int positionId, String positionName) {
        this.positionId = positionId;
        this.positionName = positionName;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }
}
