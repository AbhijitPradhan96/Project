package com.bus.booking.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bus.booking.entities.Bus;
import com.bus.booking.repositories.BusRepository;

@Controller
public class BusController {
	
	@Autowired
	private BusRepository busRepo;
	
	@RequestMapping("/findBus")
	public String findBus(
			@RequestParam("from") String from,
			@RequestParam("to") String to,
			@RequestParam("departureDate") 
			@DateTimeFormat(pattern = "dd-MM-yyyy") Date departureDate,
			ModelMap modelMap) {
		List<Bus> findBus = busRepo.findBus(from, to, departureDate);
		modelMap.addAttribute("findBus", findBus);
		return "displayBus";

	}
	
	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(
			@RequestParam("busId") Long busId, 
			ModelMap modelMap) {
		Optional<Bus> findById = busRepo.findById(busId);
		Bus bus = findById.get();
		modelMap.addAttribute("bus", bus);
		return "showReservation"; 
	}

}
