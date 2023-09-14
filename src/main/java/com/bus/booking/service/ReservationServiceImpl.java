package com.bus.booking.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bus.booking.dto.ReservationRequest;
import com.bus.booking.entities.Bus;
import com.bus.booking.entities.Passenger;
import com.bus.booking.entities.Reservation;
import com.bus.booking.repositories.BusRepository;
import com.bus.booking.repositories.PassengerRepository;
import com.bus.booking.repositories.ReservationRepository;
import com.bus.booking.utilities.PDFgenerator;



@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private PassengerRepository passengerRepo;

	@Autowired
	private BusRepository busRepo;

	@Autowired
	private ReservationRepository reservationRepo;
	
	@Autowired
    private PDFgenerator pdfGenerator;
	
	

	@Override
	public Reservation bookBus(ReservationRequest request) {

		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getFirstName());
		passenger.setLastName(request.getLastName());
		passenger.setEmail(request.getEmail());
		passenger.setPhone(request.getPhone());
		passengerRepo.save(passenger); 

		long busId = request.getBusId();
		Optional<Bus> findById = busRepo.findById(busId);
		Bus bus = findById.get();

		Reservation reservation = new Reservation();
		reservation.setBus(bus);
		reservation.setPassenger(passenger);
		reservation.setCheckedIn(false);
		reservationRepo.save(reservation);
		
		String filePath = "D:\\BusBooking\\Bus Tickets\\Bus Tickets" + reservation.getId() + ".pdf";
        pdfGenerator.generatePDF(reservation, filePath); 
		

	

		return reservation;
	}

}
