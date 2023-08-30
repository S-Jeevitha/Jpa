package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.BookImpl;
import dao.IBook;
import model.Book;

@Controller
public class BookController {
	IBook book = new BookImpl();


	@RequestMapping("view")
	public ModelAndView viewBooks() {
		return new ModelAndView("showBooks", "b", book.viewBooks());
	}

	@RequestMapping("delete")
	public ModelAndView delete(@RequestParam("bookid") int bookid) {
		ModelAndView view = new ModelAndView("showBooks");
		view.addObject("msg", book.delete(bookid));
		view.addObject("b", book.viewBooks());
		return view;
	}

	@RequestMapping("update")
	public ModelAndView update(@RequestParam("bookid") int bookid, @RequestParam("bookname") String bookname,
			@RequestParam("author") String author, @RequestParam("publisher") String publisher,
			@RequestParam("publishedyear") Integer publishedyear, @RequestParam("language") String language) {
		ModelAndView view = new ModelAndView("update");
		view.addObject("bookid", bookid);
		view.addObject("bookname", bookname);
		view.addObject("author", author);
		view.addObject("publisher", publisher);
		view.addObject("publishedyear", publishedyear);
		view.addObject("language", language);
		view.addObject("b", new Book());
		return view;
	}

	@RequestMapping("updatedValue")
	public ModelAndView updatedValue(@ModelAttribute("b") Book b) {
		ModelAndView view = new ModelAndView("showBooks");
		view.addObject("msg", book.update(b));
		view.addObject("b", book.viewBooks());
		return view;

	}

	@RequestMapping("add")
	public ModelAndView add() {
		return new ModelAndView("add", "b", new Book());
	}

	@RequestMapping("addBook")
	public ModelAndView addBook(@ModelAttribute("b") Book b) {
		ModelAndView view = new ModelAndView("showBooks");
		view.addObject("msg", book.add(b));
		view.addObject("b", book.viewBooks());
		return view;
	}

}
