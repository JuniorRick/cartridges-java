package crdm.cartridges.service;

import java.util.List;

import crdm.cartridges.entity.Toner;

public interface TonerService {

	Toner find(Integer id);

	List<Toner> findAll();

	void save(Toner toner);

	void delete(Integer id);
}
