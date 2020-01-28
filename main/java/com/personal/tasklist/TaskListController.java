package com.personal.tasklist;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.personal.tasklist.dao.TaskDao;
import com.personal.tasklist.dao.UserDao;


@Controller
public class TaskListController {
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	TaskDao taskDao;

	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
		
	}
	
	@RequestMapping("/register")
	public ModelAndView showRegistrationForm() {
		return new ModelAndView("register");
	}
	
	@PostMapping("/register")
	public ModelAndView submitRegistrationForm(User user, HttpSession session) {


		userDao.create(user);
		session.setAttribute("user", user);
		System.out.println(user);
		ModelAndView mav = new ModelAndView("redirect:/login");
		return mav;
	}
	@RequestMapping("/login")
	public ModelAndView showLoginForm() {
		return new ModelAndView("login");
		
	}
	@PostMapping("/login")
	// get the username and password from the form when it's submitted.
	public ModelAndView submitLoginForm(@RequestParam("email") String email, 
			@RequestParam("password") String password, HttpSession session, RedirectAttributes redir) { 
		// Find the matching user.
		User user = userDao.findByEmail(email);
		if (user == null || !password.equals(user.getPassword())) {
			// If the user or password don't match, display an error message.
			ModelAndView mav = new ModelAndView("login");
			mav.addObject("message", "Incorrect email or password.");
			return new ModelAndView("redirect:/login");
		} 
		//On successful login, add the user to the session.
		session.setAttribute("user", user);
		redir.addFlashAttribute("message", "Logged in.");
		return new ModelAndView("redirect:/tasklist");
		
	}
	
	@RequestMapping("/add-task")
	public ModelAndView showAddTask() {
		ModelAndView mav = new ModelAndView("add-task");
		return mav;
	}
	
	@PostMapping("/add-task")
	//here we will change the user parameters
	public ModelAndView addTask(@SessionAttribute("user") User user, @RequestParam("taskName") String taskName, @RequestParam("description") String description, 
			@RequestParam("dueDate") String dueDate) {
		
		Task task = new Task();
	//	task.setComplete(complete);
		task.settaskName(taskName);
		task.setDescription(description);
		task.setDueDate(dueDate);
		task.setUser(user);
		
		taskDao.createTask(task);
		return new ModelAndView("redirect:/tasklist");
		
	}
	
	@RequestMapping("/edit/{id}")//make this more like request mapping /add-task
	public ModelAndView updateTask(@PathVariable("id") Long id) {
		//taskDao.editTask(id);
		return new ModelAndView("edit", "id", id);
	}
	
	@RequestMapping("/delete-task/{id}")
	public ModelAndView deleteTask(@PathVariable("id") Long id) {
		taskDao.deleteTask(id);
		return new ModelAndView("redirect:/tasklist");
	}
	
	@RequestMapping("/add-2task")//make this like post mapping add task or like edit{id}
	public ModelAndView submitEditTask(Task task) {
		taskDao.editTask(task);
		return new ModelAndView("redirect:/tasklist");
	}
	
//	@RequestMapping("/complete/{id}")
//	public ModelAndView completeTask(@PathVariable("id") Long id) {
//		Task task = taskDao.findByID(id);
//		task.setComplete(true);
//		taskDao.updateTask(task);
//		ModelAndView mav = new ModelAndView("redirect:/showTasks");
//		return mav;
//	ToDo: if complete then remove from tasklist and add to completed task list.
//	}	
		
	

	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session, RedirectAttributes redir) {
		// invalidate clears the current user session and starts a new one.
		session.invalidate();
		
		// A flash message will only show on the very next page. Then it will go away.
		// It is useful with redirects since you can't add attributes to the mav.
		redir.addFlashAttribute("message", "Logged out.");
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/tasklist")
	public ModelAndView showTaskList(@SessionAttribute("user") User user) {
		List<Task> task = taskDao.findByUser(user);
		ModelAndView mav = new ModelAndView("tasklist");
		mav.addObject("task", task);
		return mav;
	}
}
