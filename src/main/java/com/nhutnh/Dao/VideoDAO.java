package com.nhutnh.Dao;

import java.util.List;
import com.nhutnh.model.*;
import com.nhutnh.ulti.*;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class VideoDAO {
	static EntityManager entityManager = JpaUtil.getEntityManager();
	
	public static List<Video> findAllVideo() {
		String jpql = "select v from Video v where v.active=true";
		TypedQuery<Video> query = entityManager.createQuery(jpql, Video.class);
		return query.getResultList();
	}
	
	public static Video findVideoById(String id) {
		String jpql = "select v from Video v where v.id=:vid";
		TypedQuery<Video> query = entityManager.createQuery(jpql, Video.class);
		query.setParameter("vid", id);
		return query.getSingleResult();
	}
	public static int insert(Video video) {
	    entityManager.getTransaction().begin();
	    try {
	        entityManager.persist(video);
	        entityManager.getTransaction().commit();
	        return 1;
	    } catch (Exception e) {
	        e.printStackTrace();
	        entityManager.getTransaction().rollback(); // Rollback transaction on error
	        return -1;
	    }
	}

	public static int update(Video video) {
		entityManager.getTransaction().begin();
		try {
			entityManager.merge(video);
			entityManager.getTransaction().commit();
			
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entityManager.close();
			return -1;
		}
	}
	public static int delete(String id) {
		entityManager.getTransaction().begin();
		try {
			Video video = entityManager.find(Video.class, id);
			entityManager.remove(video);
			entityManager.getTransaction().commit();
			
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entityManager.close();
			return -1;
		}
	}
}
