
package AdminBean;

public class ServiceCenterBean {
    private int sc_id;
   private int Place_Id;
   private String Type;

    /**
     * @return the sc_id
     */
    public int getSc_id() {
        return sc_id;
    }

    /**
     * @param sc_id the sc_id to set
     */
    public void setSc_id(int sc_id) {
        this.sc_id = sc_id;
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
