package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CenterController {

	@GetMapping("/center")
	public String homepage() {
		return "center.html";
	}
}