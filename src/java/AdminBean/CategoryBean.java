/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminBean;

/**
 *
 * @author jeet2
 */
public class CategoryBean {
    private String CategoryName;
    private int CategoryId;
    /**
     * @return the CategoryName
     */
    public String getCategoryName() {
        return CategoryName;
    }

    /**
     * @param CategoryName the CategoryName to set
     */
    public void setCategoryName(String CategoryName) {
        this.CategoryName = CategoryName;
    }

    /**
     * @return the CategoryId
     */
    public int getCategoryId() {
        return CategoryId;
    }

    /**
     * @param CategoryId the CategoryId to set
     */
    public void setCategoryId(int CategoryId) {
        this.CategoryId = CategoryId;
    }
}
