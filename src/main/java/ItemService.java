import java.util.ArrayList;
import java.util.List;

public class ItemService {
	private List<Item> items = new ArrayList<Item>();
	ItemService(){
		items.add(new Item("1","powders"));
		items.add(new Item("2","lips"));
	}
	public List<Item> getAllItems() {
		  return items;
	  }

}
