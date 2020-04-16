package com.personal.tasklist;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "task")
public class Task {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
 	@ManyToOne
	User user;
	String taskName;
	String description;
	String dueDate;
	

	public Task(Long id, User user, String taskName, String description, String dueDate) {
		super();
		this.id = id;
		this.user = user;
		this.taskName = taskName;
		this.description = description;
		this.dueDate = dueDate;
		
	}

	public Task() {
		
	}

	public String gettaskName() {
		return taskName;
	}

	public void settaskName(String taskName) {
		this.taskName = taskName;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDueDate() {
		return dueDate;
	}

	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}


	@Override
	public String toString() {
		return "Task [id=" + id + ", user=" + user + ", taskName=" + taskName + ", description=" + description
				+ ", dueDate=" + dueDate + "]";
	}

}
