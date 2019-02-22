package crdm.cartridges.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

	
	@GetMapping("/add")
	public String add(@ModelAttribute("toner") Toner toner, Model model) {
		
		if(toner.getId() == null) {
			toner = new Toner();
		}
		
		model.addAttribute("toner", toner);
		
		return "add-toner";
	}
	
	@PostMapping("/save")
	public String save(@ModelAttribute("toner") Toner toner) {
		
		tonerService.save(toner);
		
		return "toners";
	}
	
	@GetMapping("/update")
	public String update(@RequestParam("Id") Integer id, final RedirectAttributes redirectAttributes) {
		
		Toner toner = tonerService.find(id);
		
		redirectAttributes.addAttribute("toner", toner);
		
		return "redirect:/toners/add";
	}
	
	
}
