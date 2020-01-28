package com.personal.tasklist.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.personal.tasklist.Task;
import com.personal.tasklist.User;


@Repository
@Transactional
public class TaskDao {

	
	 @PersistenceContext
	private EntityManager em;
	 
	
	public List<Task> findAll(){
		return em.createQuery("FROM Task", Task.class).getResultList();
	}
	
	public Task findByID(Long id) {
		return em.find(Task.class, id);
	}
	
	public void createTask(Task task) {
		em.persist(task);
	}
	public void deleteTask(Long id) {
		Task task = em.getReference(Task.class, id);
		em.remove(task);
		
	}
	public void editTask(Task task) {
		em.merge(task);
	}
	public void tasklist(Task task) {
	}
	public List<Task> findByUser(User user) {
			return em.createQuery("FROM Task WHERE user = :user", Task.class)
					.setParameter("user", user)
					.getResultList();
		
	}

	
}
