package com.bus.booking.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bus.booking.entities.Passenger;

public interface PassengerRepository extends JpaRepository <Passenger, Long>{

}
