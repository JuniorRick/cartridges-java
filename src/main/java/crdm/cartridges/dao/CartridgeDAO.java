package crdm.cartridges.dao;

import java.util.List;

import crdm.cartridges.entity.Cartridge;

public interface CartridgeDAO {
	Cartridge find(Integer id);

	List<Cartridge> findAll();

	void save(Cartridge cartridge);

	void delete(Integer id);
}
