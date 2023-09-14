package com.bus.booking.service;

import com.bus.booking.dto.ReservationRequest;
import com.bus.booking.entities.Reservation;

public interface ReservationService {
	
	Reservation bookBus(ReservationRequest request);

}
