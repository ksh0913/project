package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class One_oneController {

	@GetMapping("/one_one")
	public String homepage() {
		return "one_one.jsp";
	}
}