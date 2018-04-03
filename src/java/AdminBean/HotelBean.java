
package AdminBean;

public class HotelBean {
    private int Hotel_id;
    private int Place_id;
    private int type;

    public int getHotel_id() {
        return Hotel_id;
    }

    /**
     * @param Hotel_id the Hotel_id to set
     */
    public void setHotel_id(int Hotel_id) {
        this.Hotel_id = Hotel_id;
    }

    /**
     * @return the Place_id
     */
    public int getPlace_id() {
        return Place_id;
    }

    /**
     * @param Place_id the Place_id to set
     */
    public void setPlace_id(int Place_id) {
        this.Place_id = Place_id;
    }

    /**
     * @return the type
     */
    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

}
