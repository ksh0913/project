package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Event_alarmController {

	@GetMapping("/event_alarm")
	public String homepage() {
		return "event_alarm.html";
	}
}