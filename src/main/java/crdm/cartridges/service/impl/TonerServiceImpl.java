package crdm.cartridges.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crdm.cartridges.dao.TonerDAO;
import crdm.cartridges.entity.Toner;
import crdm.cartridges.service.TonerService;

@Service
@Transactional
public class TonerServiceImpl  implements TonerService {

	@Autowired
	private TonerDAO tonerDAO;

	public Toner find(Integer id) {

		return tonerDAO.find(id);
	}

	
	public List<Toner> findAll() {

		return tonerDAO.findAll();
	}

	@Override
	public void save(Toner toner) {
		tonerDAO.save(toner);
		
	}

}
