package crdm.cartridges.dao.impl;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import crdm.cartridges.dao.TonerDAO;
import crdm.cartridges.entity.Toner;


@Repository
public class TonerDAOImpl implements TonerDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public Toner find(Integer id) {
		Session session = getSession();
		
		return session.find(Toner.class, id);
	}
	
	@Override
	public List<Toner> findAll() {
		Session session = getSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Toner> cq = cb.createQuery(Toner.class);
		Root<Toner> root = cq.from(Toner.class);
		CriteriaQuery<Toner> all = cq.select(root);
		
		TypedQuery<Toner> allQuery = session.createQuery(all);
		
		return allQuery.getResultList();
		
	}
	
	public void save(Toner toner) {
		 getSession().saveOrUpdate(toner);
	}
	

}
