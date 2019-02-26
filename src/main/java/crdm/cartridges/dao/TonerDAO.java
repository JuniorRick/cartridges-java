package crdm.cartridges.dao;

import java.util.List;

import crdm.cartridges.entity.Toner;

public interface TonerDAO {
	Toner find(Integer id);

	List<Toner> findAll();

	void save(Toner toner);

	void delete(Integer id);
}
