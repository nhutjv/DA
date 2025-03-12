package com.nhutnh.ulti;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JpaUtil {
static EntityManagerFactory factory;
	
	public static EntityManager getEntityManager() {
		if (factory == null || !factory.isOpen()) {
			factory = Persistence.createEntityManagerFactory("nhutnhpc05876_asm2");
		}
		return factory.createEntityManager();
	}
}
