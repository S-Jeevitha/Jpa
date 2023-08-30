package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.BookImpl;
import dao.IBook;
import dao.IUser;
import dao.UserImpl;

import model.User;

@Controller
public class UserController {

	IUser user = new UserImpl();
	IBook book = new BookImpl();

	@RequestMapping("user")
	public ModelAndView user() {
		return new ModelAndView("userLogin", "u", new User());
	}

	@RequestMapping("userLogin")
	public ModelAndView userHome(@ModelAttribute("u") User u) {
		ModelAndView view = null;
		String s = user.userLoginValidation(u);

		if (s.equals("Success")) {
			view = new ModelAndView("userHome");
			view.addObject("username", u.getUsername());
		} else {
			view = new ModelAndView("userLoginFailed");
		}
		return view;
	}

	@RequestMapping("viewBooks")
	public ModelAndView viewBooks() {
		return new ModelAndView("showBooksUser", "b", book.viewBooks());
	}

	@RequestMapping("addUser")
	public ModelAndView addUser() {
		return new ModelAndView("addUser", "u", new User());
	}

	@RequestMapping("addUsers")
	public ModelAndView addUser(@ModelAttribute("u") User u) {
		ModelAndView view = new ModelAndView("loginSuccess");
		view.addObject("msg", user.addUser(u));
		return view;
	}

	@RequestMapping("viewDetails")
	public ModelAndView viewUserDetails(@RequestParam("username") String username) {
		ModelAndView m = new ModelAndView("showDetails");
		m.addObject("u", user.viewUserDetails(username));
		return m;
	}

	@RequestMapping("updateUserPassword")
	public ModelAndView updateUserPassword(@RequestParam("username") String username) {
		ModelAndView v = new ModelAndView("updateUserPassword");
		v.addObject("username", username);
		v.addObject("u", new User());
		return v;
	}

	@RequestMapping("userPasswordUpdated")
	public ModelAndView userPasswordUpdated(@ModelAttribute("u") User u) {
		ModelAndView v = new ModelAndView("userHome");
		u.setUsername(u.getUsername());
		v.addObject("msg", user.updateUserPassword(u));
		v.addObject("u", new User());
		return v;
	}

}
