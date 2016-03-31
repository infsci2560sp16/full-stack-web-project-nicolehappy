import com.google.gson.Gson;

import java.util.HashMap;
import java.util.Map;
import java.util.Date;

import static spark.Spark.get;
import spark.Request;

public class SignUpServer {

    Gson gson = new Gson();

    public SignUpServer() {
        checkUser();
    }
  
    String [] userlist = {"a","b","c","d"};

    private void checkUser() {
      get("/api/checkuser/:name", (req, res) -> {
        String result = "true";
      try {
        String username = req.params(":name");
        System.out.println(username);

        for(int i = 0;i < userlist.length; i++)
        {
          if(userlist[i].equals(username))
            result = "false";
        }
      }catch (NullPointerException e) {
            System.out.println("Object=null");
     }
        //return result;
          Map<String, Object> data = new HashMap<>();
          data.put("success", result);
          return data;

      }, gson::toJson);


  }
}
