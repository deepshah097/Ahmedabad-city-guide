
package AdminBean;

public class GymBean {
    private int Gym_Id;
    private int Place_Id;
    private String type;

    /**
     * @return the Gym_Id
     */
    public int getGym_Id() {
        return Gym_Id;
    }

    /**
     * @param Gym_Id the Gym_Id to set
     */
    public void setGym_Id(int Gym_Id) {
        this.Gym_Id = Gym_Id;
    }

    /**
     * @return the Place_Id
     */
    public int getPlace_Id() {
        return Place_Id;
    }

    /**
     * @param Place_Id the Place_Id to set
     */
    public void setPlace_Id(int Place_Id) {
        this.Place_Id = Place_Id;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }
}
