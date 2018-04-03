
package AdminBean;

public class DoctorBean {
   private int doctor_id;
   private int Place_Id;
   private String Type;

    /**
     * @return the doctor_id
     */
    public int getDoctor_id() {
        return doctor_id;
    }

    /**
     * @param doctor_id the doctor_id to set
     */
    public void setDoctor_id(int doctor_id) {
        this.doctor_id = doctor_id;
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
     * @return the Type
     */
    public String getType() {
        return Type;
    }

    /**
     * @param Type the Type to set
     */
    public void setType(String Type) {
        this.Type = Type;
    }
}
