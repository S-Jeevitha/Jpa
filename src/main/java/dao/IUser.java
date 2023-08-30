package dao;

import java.util.List;

import model.User;

public interface IUser {

	public String userLoginValidation(User user);

	public String addUser(User user);

	public List<User> viewUserDetails(String username);

	public String updateUserPassword(User user);

}
