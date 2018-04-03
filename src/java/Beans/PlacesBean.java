/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;


public class PlacesBean {

   

    
    
    private int place_id;
    private int subcategory_id;
    private String  Email_id;
    private String website_name;
    private long contact_no;
    private int area_id;
    private String address;
    private String place_name;
    private String description;
    private String[] place_image=new String[5];
    

    /**
     * @return the place_id
     */
    public int getPlace_id() {
        return place_id;
    }

    /**
     * @param place_id the place_id to set
     */
    public void setPlace_id(int place_id) {
        this.place_id = place_id;
    }

    /**
     * @return the subcategory_id
     */
    public int getSubcategory_id() {
        return subcategory_id;
    }

    /**
     * @param subcategory_id the subcategory_id to set
     */
    public void setSubcategory_id(int subcategory_id) {
        this.subcategory_id = subcategory_id;
    }

    /**
     * @return the user_id
     */
    public String getEmail_id() {
        return Email_id;
    }

    /**
     * @param user_id the user_id to set
     */
    public void setEmail_id(String Email_id) {
        this.Email_id = Email_id;
    }

    /**
     * @return the website_name
     */
    public String getWebsite_name() {
        return website_name;
    }

    /**
     * @param website_name the website_name to set
     */
    public void setWebsite_name(String website_name) {
        this.website_name = website_name;
    }

    /**
     * @return the contact_no
     */
    public long getContact_no() {
        return contact_no;
    }

    /**
     * @param contact_no the contact_no to set
     */
    public void setContact_no(long contact_no) {
        this.contact_no = contact_no;
    }

    /**
     * @return the area_id
     */
    public int getArea_id() {
        return area_id;
    }

    /**
     * @param area_id the area_id to set
     */
    public void setArea_id(int area_id) {
        this.area_id = area_id;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the place_name
     */
    public String getPlace_name() {
        return place_name;
    }

    /**
     * @param place_name the place_name to set
     */
    public void setPlace_name(String place_name) {
        this.place_name = place_name;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the place_image
     */
   
 /**
     * @return the place_image
     */
    public String[] getPlace_image() {
        return place_image;
    }

    /**
     * @param place_image the place_image to set
     */
    public void setPlace_image(String[] place_image) {
        this.place_image = place_image;
    }
    
    
}
