package managers;

import java.awt.Color;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import models.Census_section;
import models.Consum;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import utils.DB;

public class ManageSeccion {

    private DB db = null;

    public ManageSeccion() {
        try {
            db = new DB();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void finalize() {
        try {
            db.disconnectBD();
        } catch (Throwable e) {
            e.printStackTrace();
        }
    }

    public String computeColor(int consumption, int maxConsumption) {
        float rangedConsumption = (float) 255 / maxConsumption;

        int r = 255 - Math.round(rangedConsumption * consumption);
        int g = 255 - Math.round(rangedConsumption * consumption);
        int b = 255;

        String hexColor = String.format("#%02x%02x%02x", r, g, b);

        return hexColor;
    }

    public void updateColorJson(List<Census_section> census, String path) throws FileNotFoundException, IOException, ParseException {
        
        System.out.println("Updating JSON...");
        
        JSONParser jsonParser = new JSONParser();

        JSONParser parser = new JSONParser();
        File fil = new File(path);
        // System.out.println(fil.getAbsolutePath());

        try {
            FileReader f = new FileReader(fil);

            Object obj = parser.parse(f);
            JSONObject jsonObject = (JSONObject) obj;
            //for feactures

            JSONArray array = (JSONArray) jsonObject.get("features");
            for (int i = 0; i < array.size(); i++) {
                for (Iterator<Census_section> iterator = census.iterator(); iterator.hasNext();) {
                    JSONObject jsonObject1 = (JSONObject) array.get(i);
                    //Atributos BARRI y SEC_CENS
                    JSONObject properties = (JSONObject) jsonObject1.get("properties");
                    Census_section next = iterator.next();

                    if (properties.get("DISTRICTE").equals(next.getDistrict()) && properties.get("SEC_CENS").equals(next.getCode_censal())) {
                        // Se cambia color mapa segun el distrito y censo
                        properties.put("HEX_COLOR7", next.getColorMap());
                        // System.out.println("DISTRICTE: " + district + " SEC_CENS: " + codeCensal + " Color: " + color);
                    }
                }

            }

            //File file = new File(path);
            FileWriter fileWriter = new FileWriter(fil);
            fileWriter.write(jsonObject.toJSONString());
            fileWriter.flush();
            fileWriter.close();

            f.close();
            System.out.println("JSON updated");
        } catch (FileNotFoundException e) {
             System.out.println("Problem in updating JSON");
        } catch (IOException e) {
            System.out.println("Problem in updating JSON");
        } catch (ParseException e) {
            System.out.println("Problem in updating JSON");
        }
    }

    public List<Census_section> getConsumDay(String dayIni, String dayEnd, String path) throws ParseException, IOException {
        System.out.println("Getting data...");
        String queryMax = "  select max(consum)as maxconsum from (select sum(consumo_seccion_censal.consumo) as consum from consumo_seccion_censal where dia between ? and ? group by seccion_censal)a;";
        int maxConsum = 0;
        try {
            PreparedStatement statementMax = db.prepareStatement(queryMax);
            statementMax.setString(1, dayIni);
            statementMax.setString(2, dayEnd);

            ResultSet rsMax = statementMax.executeQuery();
            while (rsMax.next()) {
                maxConsum = rsMax.getInt("maxconsum");
            }
            System.out.println("Maximo consum: " + maxConsum);
            rsMax.close();
            statementMax.close();
            
        } catch (SQLException e) {
            System.out.println("Problem in executing first query");
            //e.printStackTrace();
        }

        String query = "select sum(consumo_seccion_censal.consumo) as consum, consumo_seccion_censal.seccion_censal,seccion_censal.habitantes, seccion_censal.hab_hombres,seccion_censal.hab_mujeres,seccion_censal.edad_0_a_14,seccion_censal.edad_15_a_24,seccion_censal.edad_25_a_64,seccion_censal.edad_65_a_mas from consumo_seccion_censal JOIN seccion_censal ON consumo_seccion_censal.seccion_censal  = seccion_censal.id_seccion_censal where dia between ? and ? group by seccion_censal order by consumo_seccion_censal.seccion_censal;";

        List<Census_section> l = new ArrayList<Census_section>();

        try {
            PreparedStatement statement = db.prepareStatement(query);
            statement.setString(1, dayIni);
            statement.setString(2, dayEnd);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Census_section sec = new Census_section();//Datos censales

                String idCode = rs.getString("seccion_censal");
                String district = idCode.substring(4, 6);
                String cc = idCode.substring(6, 9);
                sec.setDistrict(district);
                sec.setCode_censal(cc);
                sec.setId_code(rs.getInt("seccion_censal"));
                sec.setPopulation(rs.getInt("habitantes"));
                sec.setPopul_male(rs.getInt("hab_hombres"));
                sec.setPopul_Female(rs.getInt("hab_mujeres"));
                sec.setAge_0_14(rs.getInt("edad_0_a_14"));
                sec.setAge_15_24(rs.getInt("edad_15_a_24"));
                sec.setAge_25_64(rs.getInt("edad_25_a_64"));
                sec.setAge_65_mas(rs.getInt("edad_65_a_mas"));

                Consum con = new Consum();//Consumo por dia
                con.setCensus_code(sec.getId_code());
                con.setDayIni(dayIni);
                con.setDayEnd(dayEnd);
                con.setConsumption(rs.getInt("consum"));

                sec.setConsum(con);
                //Funcion  color map f(maxConsum,sec.getConsumption)
                String colorMap = computeColor(con.getConsumption(), maxConsum);
                sec.setColorMap(colorMap);
                //Funcion change color in json
                //updateColorJson(district, cc, colorMap,path);

                l.add(sec);
            }
            rs.close();
            statement.close();
        } catch (SQLException e) {
            System.out.println("Problem in executing first query");
            //e.printStackTrace();
        }
        
        System.out.println("Data sucessfully retrieved");

        return l;
    }

}
