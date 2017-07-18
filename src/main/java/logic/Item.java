package logic;

import java.io.Serializable;

import org.hibernate.validator.constraints.NotEmpty;

public class Item implements Serializable{

	private Integer Item_id;
	
	//@NotEmpty(message="아이템명을 입력하세요")
	private String Item_name;
	
	//@NotEmpty(message="아이템 가격을 입력하세요")
	private Integer Item_price;
	
	//@NotEmpty(message="아이템 설명을 입력하세요")
	private String Item_description;
	
//	@NotEmpty(message="아이템 이미지를 입력하세요")
	private String Item_pictureUrl;

	
	public Integer getItem_id() {
		return Item_id;
	}

	public void setItem_id(Integer item_id) {
		Item_id = item_id;
	}

	public String getItem_name() {
		return Item_name;
	}

	public void setItem_name(String item_name) {
		Item_name = item_name;
	}

	public Integer getItem_price() {
		return Item_price;
	}

	public void setItem_price(Integer item_price) {
		Item_price = item_price;
	}

	public String getItem_description() {
		return Item_description;
	}

	public void setItem_description(String item_description) {
		Item_description = item_description;
	}

	public String getItem_pictureUrl() {
		return Item_pictureUrl;
	}

	public void setItem_pictureUrl(String item_pictureUrl) {
		Item_pictureUrl = item_pictureUrl;
	}

	
	
	
	
	
	

}
