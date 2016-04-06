import static spark.Spark.*;
import spark.*;
import com.google.gson.Gson;

public class ItemController {

  public ItemController(final ItemService itemService) {

    get("/items", new Route() {
      @Override
      public Object handle(Request request, Response response) {
        // process request
        return new Gson().toJson(itemService.getAllItems());
      }
    });

    // more routes
  }
}

