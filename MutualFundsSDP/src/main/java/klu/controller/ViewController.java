package klu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class ViewController
{
	@GetMapping("/")
	public ModelAndView login()
	{
		ModelAndView MV = new ModelAndView();
		MV.setViewName("front");
		return MV;
		
	}
	@GetMapping("/home1")
	public ModelAndView home()
	{
		ModelAndView MV = new ModelAndView();
		MV.setViewName("home1");
		return MV;
		
	}

}
