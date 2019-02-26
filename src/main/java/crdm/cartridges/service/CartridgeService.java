package crdm.cartridges.service;

import java.util.List;

import crdm.cartridges.entity.Cartridge;

public interface CartridgeService {

	Cartridge find(Integer id);

	List<Cartridge> findAll();

	void save(Cartridge cartridge);

	void delete(Integer id);
}
