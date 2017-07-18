package controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Member;
import logic.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	@RequestMapping("member/memberJoinForm")
	public ModelAndView userEntryForm(){
		ModelAndView mav = new ModelAndView("member/memberJoin");
		mav.addObject(new Member());
		return mav;
	}
	
	@RequestMapping("member/memberJoin")
	public ModelAndView userSubmit(@Valid Member member, BindingResult bindingResult,HttpSession session)
													throws Exception{
		ModelAndView mav = new ModelAndView();
		if(bindingResult.hasErrors()){
			mav.getModel().putAll(bindingResult.getModel());
			return mav;
		}
		try{
			memberService.createMember(member);
			mav.setViewName("member/login");
			mav.addObject("member",member);
			//�ߺ� ����
		}catch(DataIntegrityViolationException e){
			bindingResult.reject("error.duplicate.user");
		}
		//�ߺ� ����
		return mav;
	}
	@RequestMapping("member/loginForm")
	public ModelAndView loginForm(){
		ModelAndView mav = new ModelAndView("member/login");
		Member member = new Member();
		member.setMember_name("�ǹ̾��� �̸�");
		member.setMember_nick("�ǹ̾��� �̸�");
		member.setMember_question("�ǹ̾��� �̸�");
		member.setMember_answer("�ǹ̾��� �̸�");
		mav.addObject(member);
		return mav;
	}
	@RequestMapping("member/login")
	public ModelAndView loginSubmit(@Valid Member member,BindingResult bindingResult, HttpSession session){
		ModelAndView mav = new ModelAndView("member/login");
		
		if(bindingResult.hasErrors()){
			bindingResult.reject("error.input.member");
			mav.getModel().putAll(bindingResult.getModel());
			return mav;
		}

		Member member2 = memberService.getMemberById(member.getMember_id());
		if(member2 != null){
			System.out.println(member2.getMember_pw());
		}
		Member memberLogin = memberService.getUserByIdAndPw(member.getMember_id(),member.getMember_pw());
		if(memberLogin == null){
			bindingResult.reject("error.login.id");
			mav.getModel().putAll(bindingResult.getModel());
			return mav;
		}
			//loginUser �����Ͱ� �����ϴ� ���
		session.setAttribute("USER_KEY", memberLogin);
		mav.setViewName("user/loginSuccess");
		mav.addObject("memberLogin",memberLogin);
		return mav;
	}
	@RequestMapping("member/logout")
	public String logout(HttpSession session){
		session.removeAttribute("USER_KEY");
		return "redirect:/member/main.om";
	}
}
