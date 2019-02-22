package crdm.cartridges.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import crdm.cartridges.entity.Toner;
import crdm.cartridges.service.TonerService;

@Controller
public class HomeController {

	@Autowired
	private TonerService tonerService;
	
	@GetMapping("/")
	public String index(Model model) {

		List<Toner> toners = tonerService.findAll();
		
		
		
		model.addAttribute("toners", toners);
		
		return "index";
	}
}
