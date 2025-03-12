package com.nhutnh.Dao;

import com.nhutnh.model.*;
import com.nhutnh.ulti.*;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;

public class UserDAO {
	static EntityManager entityManager = JpaUtil.getEntityManager();
	
	public static User findUserById(String id) {
		User user =entityManager.find(User.class, id);
		return user;
	}
	
	
	public static boolean createUser(User user) {
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            entityManager.persist(user);
            transaction.commit();
            return true;
        } catch (Exception ex) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            ex.printStackTrace();
            return false;
        }
    }
	
	
}
