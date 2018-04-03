
package Beans;

public class SubCategoryBean {
    private int CategoryId;
    private int SubCategoryId;
    private String SubCategoryName;

    /**
     * @return the CategoryName
     */
    public int getCategoryId() {
        return CategoryId;
    }

    /**
     * @param CategoryName the CategoryName to set
     */
    public void setCategoryId(int CategoryId) {
        this.CategoryId = CategoryId;
    }

    /**
     * @return the SubCategoryName
     */
    public String getSubCategoryName() {
        return SubCategoryName;
    }

    /**
     * @param SubCategoryName the SubCategoryName to set
     */
    public void setSubCategoryName(String SubCategoryName) {
        this.SubCategoryName = SubCategoryName;
    }

    /**
     * @return the SubCategoryId
     */
    public int getSubCategoryId() {
        return SubCategoryId;
    }

    /**
     * @param SubCategoryId the SubCategoryId to set
     */
    public void setSubCategoryId(int SubCategoryId) {
        this.SubCategoryId = SubCategoryId;
    }
}
