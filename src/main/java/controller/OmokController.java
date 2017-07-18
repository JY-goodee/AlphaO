package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OmokController {
	
	@RequestMapping("omok/main")
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("omok/omok")
	public ModelAndView omok(){
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
}
