package org.jsp.bookmycinema.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;


import org.jsp.bookmycinema.dto.User;




public class BMSDao {
		EntityManagerFactory factory=Persistence.createEntityManagerFactory("m7");
		EntityManager manager=factory.createEntityManager();
		EntityTransaction transaction=manager.getTransaction();
		
		public void saveUser(User user) {
			transaction.begin();
			manager.persist(user);
			transaction.commit();
			
		}
		public List<User> findByEmail(String email){
			return manager.createQuery("select x from User x where email=?1").setParameter(1, email).getResultList();
		}
		
		public List<User> findByMobile(long mobile){
			return manager.createQuery("select x from User x where mobile=?1").setParameter(1, mobile).getResultList();
		}
		
		
			
		
		
		
	}