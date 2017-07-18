package dao;

import java.util.List;

import logic.Item;

public interface ItemDao {

	void register(Item item);

	List<Item> selectAll();

}
