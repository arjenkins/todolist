package com.personal.tasklist.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.personal.tasklist.User;

@Repository
@Transactional
public class UserDao {

	@PersistenceContext
	private EntityManager em;

	public List<User> findAll() {
		return em.createQuery("FROM User", User.class).getResultList();

	}

	public User findById(Long id) {
			return em.find(User.class, id);
		
	}

	public void update(User user) {
		em.merge(user);
	}

	
	public void create(User user) {
		em.persist(user);
	}

	public  User findByEmail(String email) {
		return em.createQuery("FROM User WHERE email =:email", User.class).setParameter("email",email).getSingleResult();
	}
	

}
