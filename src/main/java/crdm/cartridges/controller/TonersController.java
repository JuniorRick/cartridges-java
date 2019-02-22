package crdm.cartridges.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import crdm.cartridges.entity.Toner;
import crdm.cartridges.service.TonerService;

@Controller
@RequestMapping("/toners")
public class TonersController {

	@Autowired
	private TonerService tonerService;
	
	@GetMapping("")
	public String toners(Model model) {

		List<Toner> toners = tonerService.findAll();
		
		model.addAttribute("toners", toners);
		
		return "toners";
	}
}
