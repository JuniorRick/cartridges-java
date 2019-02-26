package crdm.cartridges.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crdm.cartridges.dao.CartridgeDAO;
import crdm.cartridges.entity.Cartridge;
import crdm.cartridges.service.CartridgeService;

@Service
@Transactional
public class CartridgeServiceImpl  implements CartridgeService {

	@Autowired
	private CartridgeDAO cartridgeDAO;

	public Cartridge find(Integer id) {

		return cartridgeDAO.find(id);
	}

	public List<Cartridge> findAll() {

		return cartridgeDAO.findAll();
	}

	@Override
	public void save(Cartridge cartridge) {
		cartridgeDAO.save(cartridge);
		
	}

	@Override
	public void delete(Integer id) {
		cartridgeDAO.delete(id);
	}

}
