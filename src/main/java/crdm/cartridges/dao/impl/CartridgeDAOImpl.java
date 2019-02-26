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

import crdm.cartridges.dao.CartridgeDAO;
import crdm.cartridges.entity.Cartridge;


@Repository
public class CartridgeDAOImpl implements CartridgeDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public Cartridge find(Integer id) {
		Session session = getSession();
		
		return session.find(Cartridge.class, id);
	}
	
	@Override
	public List<Cartridge> findAll() {
		Session session = getSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Cartridge> cq = cb.createQuery(Cartridge.class);
		Root<Cartridge> root = cq.from(Cartridge.class);
		CriteriaQuery<Cartridge> all = cq.select(root);
		
		TypedQuery<Cartridge> allQuery = session.createQuery(all);
		
		return allQuery.getResultList();
		
	}
	
	public void save(Cartridge cartridge) {
		 getSession().saveOrUpdate(cartridge);
	}

	@Override
	public void delete(Integer id) {
		Session session = getSession();
		Cartridge cartridge = getSession().find(Cartridge.class, id);
		session.delete(cartridge);
		
	}
	

}
