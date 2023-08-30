package dao;

import java.util.List;

import model.Book;

public interface IBook {
	public List<Book> viewBooks();

	public String delete(int bookid);

	public String update(Book book);

	public String add(Book book);

}
