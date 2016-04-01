import java.util.HashMap;
import java.util.Map;
import java.util.Date;

import static spark.Spark.get;
import spark.Request;
public class ItemServer {

  public ItemServer(){
 
    getItemInfo();
  }
  public HashMap<String,ItemInfo> CreateSampleData()
  {
    ItemInfo facewash = new ItemInfo("facewash","CLARSONIC","Best seller","All about clean","100","waterproof","yes");
  	ItemInfo lips = new ItemInfo("lips","GIORGIO ARMANI","Make you look different","The 1st matte lacquer","40","peach","no");
  	ItemInfo powders = new ItemInfo("powders","GUERLAIN","Flawless makeup","Silky, lightweight foundation for seamless application","62","no");
    HashMap<String,ItemInfo> itemList = new HashMap<>();
			itemList.put(facewash.getcName(), facewash);
			itemList.put(lips.getcName(), lips);
			itemList.put(powders.getcName(), powders);
      return itemList;
  }


  private void getCountryInfo(){
    get("/api/ItemInfo/:name", (req, res) -> {

      String name = req.params(":name");
      HashMap<String,ItemInfo> itemList = new HashMap<>();
      itemList = CreateSampleData();
      ItemInfo item = new ItemInfo();
       if(!itemList.containsKey(name))
       {

          item = null;
       }
       else
       {
          item = itemList.get(name);

       }

       String xml = "";
      // try {
       if(null != item)
       {
          xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                              "<Item>" +
                                  "<name>"+item.getcName()+"</name>" +
                                  "<brand>"+item.getBrand()+"</brand>" +
                                  "<adtitle>"+item.getAdtitle()+"</adtitle>" +
                                  "<description>"+item.getDescription()+"</description>" +
                                  "<price>"+item.getPrice()+"</price>" +
                                  "<type>"+item.getType()+"</type>" +
                                  "<sensitive>"+item.getSensitive()+"</sensitive>" +
                              "</Item>";
       }
      else
      {
         xml =    "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
                             "<Item>" +
                              "<name>information is not available yet</name>" +

                             "</Item>";
      }
    
      res.type("text/xml");
      return xml;
 });


  }

}
