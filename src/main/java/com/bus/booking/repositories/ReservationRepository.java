package com.bus.booking.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bus.booking.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
