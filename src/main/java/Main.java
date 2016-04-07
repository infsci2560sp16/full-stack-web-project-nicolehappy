import com.google.gson.Gson;
import org.json.JSONObject;
import java.sql.*;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;

import java.net.URI;
import java.net.URISyntaxException;

import static spark.Spark.*;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import static spark.Spark.get;

import com.heroku.sdk.jdbc.DatabaseUrl;

public class Main {

  public static void main(String[] args) {

    port(Integer.valueOf(System.getenv("PORT")));
    staticFileLocation("/public");
    Object r1 = new DefaultServer();

    Gson gson = new Gson();

    new ItemController(new ItemService());

    get("/like", (req, res) -> {

          Connection connection = null;
          // res.type("application/xml"); //Return as XML

          Map<String, Object> attributes = new HashMap<>();
          try {


              String xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>";
              xml += "<Like>";

                  xml += "<Branch>";
                  xml += "<Name>fash wash</Name>";
                  xml += "<Brand>CLARISONIC</Brand>";
                  xml += "<Category>Skin Care</Category>";
                  xml += "<Price>100</Price>";
                  xml += "<Sensitive>no</Sensitive>";
                  xml += "<Review>4</Review>";
                  xml += "<Newin>no</Newin>";
                  xml += "<Phone>111-222-3333</Phone>";
                  xml += "<Email>yul134@pitt.edu</Email>";
                  xml += "<Address>4 Bayard Road</Address>";
                  xml += "</Branch>";

              xml += "</Like>";
              res.type("text/xml");
              return xml;

          } catch (Exception e) {
              attributes.put("message", "There was an error: " + e);
              return attributes;
          } finally {
              if (connection != null) try{connection.close();} catch(SQLException e){}
          }
      });


  post("/aboutme", (req, res) -> {
           Connection connection = null;
              try {
                  connection = DatabaseUrl.extract().getConnection();
                  JSONObject obj = new JSONObject(req.body());
                  String username = obj.getString("username");
                  String password = obj.getString("password");
                  String cpassword = obj.getString("cpassword");

                  String sql = "INSERT INTO User(username, email, password) VALUES ('"
                                + username + "','" + password1 + "','" + password2 + "')";

                  connection = DatabaseUrl.extract().getConnection();
                  Statement stmt = connection.createStatement();
                  stmt.executeUpdate("CREATE TABLE IF NOT EXISTS User");
                  stmt.executeUpdate(sql);

                 return req.body();
                } catch (Exception e) {
                  return e.getMessage();
                } finally {

                }
              });
   
    get("/userinfo", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("message", "Hello World!");

            return new ModelAndView(attributes, "userinfo.ftl");
        }, new FreeMarkerEngine());

    get("/hello", (req, res) -> "Hello World");

    

    get("/db", (req, res) -> {
      Connection connection = null;
      Map<String, Object> attributes = new HashMap<>();
      try {
        connection = DatabaseUrl.extract().getConnection();

        Statement stmt = connection.createStatement();
        stmt.executeUpdate("CREATE TABLE IF NOT EXISTS ticks (tick timestamp)");
        stmt.executeUpdate("INSERT INTO ticks VALUES (now())");
        ResultSet rs = stmt.executeQuery("SELECT tick FROM ticks");

        ArrayList<String> output = new ArrayList<String>();
        while (rs.next()) {
          output.add( "Read from DB: " + rs.getTimestamp("tick"));
        }

        attributes.put("results", output);
        return new ModelAndView(attributes, "db.ftl");
      } catch (Exception e) {
        attributes.put("message", "There was an error: " + e);
        return new ModelAndView(attributes, "error.ftl");
      } finally {
        if (connection != null) try{connection.close();} catch(SQLException e){}
      }
    }, new FreeMarkerEngine());


    

  }

}
