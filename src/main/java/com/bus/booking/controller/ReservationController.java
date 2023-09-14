package com.bus.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bus.booking.dto.ReservationRequest;
import com.bus.booking.entities.Reservation;
import com.bus.booking.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService; 

	@RequestMapping("/confirmReservation")
	public String confirmReservation(
			ReservationRequest request, 
			ModelMap modelMap) {
		Reservation reservationId = reservationService.bookBus(request);
		modelMap.addAttribute("reservationId", reservationId.getId());
		return "confirmReservation";
	}

}
