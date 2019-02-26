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

import crdm.cartridges.entity.Cartridge;
import crdm.cartridges.entity.Info;
import crdm.cartridges.service.CartridgeService;

@Controller
@RequestMapping("/cartridges")
public class CartridgeController {

	@Autowired
	private CartridgeService cartridgeService;

	@GetMapping("")
	public String cartridges(Model model) {

		List<Cartridge> cartridges = cartridgeService.findAll();

		model.addAttribute("cartridges", cartridges);

		return "cartridges";
	}

	@GetMapping("/add")
	public String add(@ModelAttribute("cartridge") Cartridge cartridge, Model model) {

		if (cartridge.getId() == null) {
			cartridge = new Cartridge();
		}

		model.addAttribute("cartridge", cartridge);

		return "add-cartridge";
	}

	@PostMapping("/save")
	public String save(@ModelAttribute("cartridge") Cartridge cartridge) {

		cartridgeService.save(cartridge);

		return "redirect:/cartridges";
	}

	@GetMapping("/update")
	public String update(@RequestParam("id") Integer id, final RedirectAttributes redirectAttributes) {

		Cartridge cartridge = cartridgeService.find(id);

		redirectAttributes.addFlashAttribute("cartridge", cartridge);

		return "redirect:/cartridges/add";
	}

	@GetMapping("/info")
	public String save(@RequestParam("id") Integer id, Model model) {

		Cartridge cartridge = cartridgeService.find(id);
		List<Info> infos = cartridge.getInfos();
		System.out.println(infos.get(0).getToner().getModel());
		model.addAttribute("infos", infos);

		return "infos";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("id") Integer id) {
		cartridgeService.delete(id);

		return "redirect:/cartridges";
	}

}
