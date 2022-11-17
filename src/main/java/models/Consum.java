/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author mingo
 */
public class Consum {

    private int census_code;
    private String dayIni;
    private String dayEnd;
    private int consumption;

    public Consum(int census_code, String dayIni, String dayEnd, int consumption) {
        this.census_code = census_code;
        this.dayIni = dayIni;
        this.dayEnd = dayEnd;
        this.consumption = consumption;
    }

    public Consum() {
    }
    

    public int getCensus_code() {
        return census_code;
    }

    public void setCensus_code(int census_code) {
        this.census_code = census_code;
    }

    public String getDayIni() {
        return dayIni;
    }

    public void setDayIni(String dayIni) {
        this.dayIni = dayIni;
    }

    public String getDayEnd() {
        return dayEnd;
    }

    public void setDayEnd(String dayEnd) {
        this.dayEnd = dayEnd;
    }

    public int getConsumption() {
        return consumption;
    }

    public void setConsumption(int consumption) {
        this.consumption = consumption;
    }

  
  

}
