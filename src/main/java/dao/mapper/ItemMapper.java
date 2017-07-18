package dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Item;

public interface ItemMapper {

	@Select("select ifnull(max(Item_id),0) from Item")
	int idmax();

	@Insert("insert into Item values(#{Item_id},#{Item_name},#{Item_price},#{Item_description},#{Item_pictureUrl})")
	void register(Item item);

	@Select("select * from Item")
	List<Item> selectAll();

}
