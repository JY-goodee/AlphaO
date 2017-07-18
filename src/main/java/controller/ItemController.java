package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.ItemDao;
import logic.Item;

@Controller
public class ItemController {
	@Autowired
	ItemDao itemdao;
	
	@RequestMapping("item/shop")
	public ModelAndView shop(){
		ModelAndView mav = new ModelAndView();
		List<Item> itemList = itemdao.selectAll();
		mav.addObject("itemList", itemList);
		return mav;
	}
	
	@RequestMapping("item/itemcreate")
	public ModelAndView itemcreate(){
		ModelAndView mav = new ModelAndView();
		mav.addObject(new Item());
		return mav;
	}
	
	@RequestMapping("item/register")
	public ModelAndView register(Item item, HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		System.out.println(item.getItem_name());
		itemdao.register(item);
		mav.setViewName("redirect:/item/shop.om");
		return mav;
	}
}
