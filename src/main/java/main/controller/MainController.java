package main.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import item.bean.ItemDTO;
import item.bean.SearchFormPaging;
import item.dao.ItemDAO;

@Component
@Controller
public class MainController {
	@Autowired
	private ItemDAO itemDAO;
	
	@Autowired
	private SearchFormPaging searchFormPaging;
	
	@RequestMapping(value="/main/index.do", method=RequestMethod.GET)
	public ModelAndView index(Model model) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/template/body.jsp");
		mav.setViewName("/main/index");
		return mav;
	}
	
	//마이페이지 메인화면
	@RequestMapping(value="/myPage/mainPage.do",method=RequestMethod.GET)
	public String mainPage(Model model) {
		model.addAttribute("display","/myPage/myPageIndex.jsp");
		return "/main/index";
	}
	
	//마이페이지 위시리스트
	@RequestMapping(value="/myPage/mainPage_wishList.do",method=RequestMethod.GET)
	public String mainPage_wishList(Model model) {
		model.addAttribute("display", "/myPage/wishList.jsp");
		return "/main/index";
	}
	
	//찾기 페이지 이동 
	@RequestMapping(value="/etc/searchForm.do", method=RequestMethod.GET)
	public String searchForm(Model model) {

		model.addAttribute("display","/etc/searchForm.jsp");
		return "/main/index";
	}
	
	//searchForm - list뿌리기 
	@RequestMapping(value="/etc/search.do", method=RequestMethod.POST)
	public ModelAndView getSearchFormList(@RequestParam String name
										, @RequestParam(required=false, defaultValue="1") String pg
										, HttpServletRequest request
										, HttpServletResponse response) throws UnsupportedEncodingException {
		//1페이지당 20개씩..
		int endNum = Integer.parseInt(pg)*20;
		int startNum = endNum-19;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("endNum", endNum+"");
		map.put("startNum", startNum+"");	
		map.put("name", name.toLowerCase());
		
		List<Map<String,String>> list = itemDAO.getSearchFormList(map);
		
		//페이징처리
		int totalA=itemDAO.getSearchFormTotalA(name.toLowerCase());		
		searchFormPaging.setCurrentPage(Integer.parseInt(pg));
		searchFormPaging.setPageBlock(3);
		searchFormPaging.setPageSize(20);
		searchFormPaging.setTotalA(totalA);
		searchFormPaging.makePagingHTML();
		
		//최근검색어
		Cookie recentlyKeyword = WebUtils.getCookie(request, "recentlyKeyword");
		Cookie cookie;
		boolean flag = true;
		
		if(recentlyKeyword!=null) {
			String[] keys = URLDecoder.decode(recentlyKeyword.getValue(),"UTF-8").split(",");
			
			for(String key : keys) {
				if(key.equals(name)) flag=false;
			}
		}
		
		if(flag) {
			cookie = new Cookie("recentlyKeyword", 
					URLEncoder.encode((recentlyKeyword==null ? name : name+","+URLDecoder.decode(recentlyKeyword.getValue(),"UTF-8")),"UTF-8"));
			cookie.setPath("/");
			int amount = 60*60*24*7;
			cookie.setMaxAge(amount); // 단위는 (초)임으로 7일정도로 유효시간을 설정해 준다.
			response.addCookie(cookie);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("searchTotalA",totalA);
		mav.addObject("searchFormPaging", searchFormPaging);
		mav.setViewName("jsonView");
		return mav;
	}
	
	//개인정보취급방침 이동 
	@RequestMapping(value="/etc/privacyPolicy.do", method=RequestMethod.GET)
	public String privacyPolicy(Model model) {
		
		model.addAttribute("display","/etc/privacyPolicy.jsp");
		return "/main/index";
	}
	//이용약관 이동 
	@RequestMapping(value="/etc/termsAndConditions.do", method=RequestMethod.GET)
	public String termsAndConditions(Model model) {
		
		
		model.addAttribute("display","/etc/termsAndConditions.jsp");
		return "/main/index";
	}
	
	//회사소개 이동
	@RequestMapping(value="/etc/introCompany.do", method=RequestMethod.GET)
	public String IntroCompany(Model model) {
		
		model.addAttribute("display", "/etc/introCompany.jsp");
		return "/main/index";
	}
	
	//talkaboutfit 이동
	@RequestMapping(value="/etc/talkaboutfit.do", method=RequestMethod.GET)
	public String talkaboutfit(Model model) {
		
		model.addAttribute("display", "/etc/talkaboutfit.jsp");
		return "/main/index";
	}
	
	//recommendation 아이템 뿌리기 
	@RequestMapping(value="/template/recommend.do", method=RequestMethod.POST)
	public ModelAndView getRecommendation(@RequestParam String main_codename) {
		List<ItemDTO> list = itemDAO.getRecommendation(main_codename);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/main/recentlyKeyword.do")
	public ModelAndView recentlyKeyword(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		ModelAndView mav = new ModelAndView();
		Cookie cookie = WebUtils.getCookie(request, "recentlyKeyword");
		
		if(cookie!=null) {
			String value = URLDecoder.decode(cookie.getValue(),"UTF-8");
			String[] keys = value.split(",");
			List<String> keywordList = new ArrayList<String>();
			
			for(String key : keys) {
				keywordList.add(key);
			}
			mav.addObject("keywordList", keywordList);
		}	
		
		mav.setViewName("jsonView");
		return mav;
	}
	
	//footer에서 faq클릭
	@RequestMapping(value="/cs/footerFaq.do",method=RequestMethod.GET)
	public String footerFaq(@RequestParam(required=false,defaultValue="1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/customerService/customerServiceIndex.jsp");
		model.addAttribute("customerServiceBody", "/customerService/faq.jsp");
		return "/main/index";
	}
	
	//로그인 안한 상태에서 notice클릭
	@RequestMapping(value="/cs/footerNotice.do",method=RequestMethod.GET)
	public String footerNotice(@RequestParam(required=false,defaultValue="1") String pg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/customerService/customerServiceIndex.jsp");
		model.addAttribute("customerServiceBody", "/customerService/notice.jsp");
		return "/main/index";
	}
}