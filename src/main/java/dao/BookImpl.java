package dao;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import model.Book;
import util.Query;

public class BookImpl implements IBook {

	@Override
	public List<Book> viewBooks() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("hcl");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		@SuppressWarnings("unchecked")
		List<Book> list = manager.createQuery(Query.VIEW_BOOKS).getResultList();
		return list;
	}

	@Override
	public String delete(int bookid) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("hcl");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		Book b = manager.getReference(Book.class, bookid);
		manager.remove(b);
		manager.getTransaction().commit();
		return bookid + " is removed from Book List";
	}

	@Override
	public String update(Book book) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("hcl");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(book);
		manager.getTransaction().commit();
		return book.getBookid() + " is updated sucessfully!";

	}

	@Override
	public String add(Book book) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("hcl");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(book);
		manager.getTransaction().commit();
		return book.getBookid() + " is added sucessfully!";

	}

}
