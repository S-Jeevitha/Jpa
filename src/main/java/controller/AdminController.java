package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.AdminImpl;
import dao.IAdmin;
import model.Admin;

@Controller
public class AdminController {

	IAdmin admin = new AdminImpl();

	@RequestMapping("home")
	public ModelAndView login() {
		return new ModelAndView("home");
	}

	@RequestMapping("admin")
	public ModelAndView admin() {
		return new ModelAndView("adminLogin", "a", new Admin());
	}

	@RequestMapping("adminLogin")
	public ModelAndView adminHome(@ModelAttribute("a") Admin a) {
		ModelAndView model = null;
		String s = admin.adminLoginValidation(a);

		if (s.equals("Success")) {
			model = new ModelAndView("adminHome");
		} else {
			model = new ModelAndView("adminLoginFailed");
		}
		return model;
	}

	@RequestMapping("viewUsers")
	public ModelAndView viewUser() {
		return new ModelAndView("showUsers", "u", admin.viewUsers());
	}

	@RequestMapping("updateAdminPassword")
	public ModelAndView updateAdminPassword(@RequestParam("username") String username) {
		ModelAndView v = new ModelAndView("updateAdminPassword");
		v.addObject("username", username);
		v.addObject("a", new Admin());
		return v;
	}

	@RequestMapping("adminPasswordUpdated")
	public ModelAndView adminPasswordUpdated(@ModelAttribute("a") Admin a) {
		ModelAndView v = new ModelAndView("adminHome");
		a.setUsername(a.getUsername());
		v.addObject("msg", admin.updateAdminPassword(a));
		v.addObject("a", new Admin());
		return v;
	}

//	@RequestMapping("viewOrders")
//	public ModelAndView viewOrders() {
//		return new ModelAndView("showOrders", "o", admin.viewOrders());
//	}

}
