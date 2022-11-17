package models;



public class Census_section implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    private int id_code;
    private String district;
    private String code_censal;
    private int population;
    private int popul_male;
    private int popul_Female;
    private int age_0_14;
    private int age_15_24;
    private int age_25_64;
    private int age_65_mas;
    private String colorMap;
    private Consum consum;

    public Census_section() {
    }



    public String getColorMap() {
        return colorMap;
    }

    public void setColorMap(String colorMap) {
        this.colorMap = colorMap;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCode_censal() {
        return code_censal;
    }

    public void setCode_censal(String code_censal) {
        this.code_censal = code_censal;
    }

    public Consum getConsum() {
        return consum;
    }

    public void setConsum(Consum consum) {
        this.consum = consum;
    }

    public int getId_code() {
        return id_code;
    }

    public void setId_code(int id_code) {
        this.id_code = id_code;
    }

    public int getPopulation() {
        return population;
    }

    public void setPopulation(int population) {
        this.population = population;
    }

    public int getPopul_male() {
        return popul_male;
    }

    public void setPopul_male(int popul_male) {
        this.popul_male = popul_male;
    }

    public int getPopul_Female() {
        return popul_Female;
    }

    public void setPopul_Female(int popul_Female) {
        this.popul_Female = popul_Female;
    }

    public int getAge_0_14() {
        return age_0_14;
    }

    public void setAge_0_14(int age_0_14) {
        this.age_0_14 = age_0_14;
    }

    public int getAge_15_24() {
        return age_15_24;
    }

    public void setAge_15_24(int age_15_24) {
        this.age_15_24 = age_15_24;
    }

    public int getAge_25_64() {
        return age_25_64;
    }

    public void setAge_25_64(int age_25_64) {
        this.age_25_64 = age_25_64;
    }

    public int getAge_65_mas() {
        return age_65_mas;
    }

    public void setAge_65_mas(int age_65_mas) {
        this.age_65_mas = age_65_mas;
    }

}
