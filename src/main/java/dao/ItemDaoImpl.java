package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import dao.mapper.ItemMapper;
import logic.Item;

@Service
public class ItemDaoImpl implements ItemDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NS="dao.mapper.ItemMapper.";
	
	@Override
	public void register(Item item) {
		int id = sqlSession.getMapper(ItemMapper.class).idmax();
		id++;
		item.setItem_id(id);
		sqlSession.getMapper(ItemMapper.class).register(item);
	}

	@Override
	public List<Item> selectAll() {
		return sqlSession.getMapper(ItemMapper.class).selectAll();
	}

}
