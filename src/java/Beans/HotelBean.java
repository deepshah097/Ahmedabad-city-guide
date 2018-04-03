
package Beans;

public class HotelBean {
    private int Hotel_id;
    private int Place_id;
    private String Hotel_image;
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

    /**
     * @param type the type to set
     */
    public void setType(int type) {
        this.type = type;
    }

    /**
     * @return the Hotel_image
     */
    public String getHotel_image() {
        return Hotel_image;
    }

    /**
     * @param Hotel_image the Hotel_image to set
     */
    public void setHotel_image(String Hotel_image) {
        this.Hotel_image = Hotel_image;
    }
}
