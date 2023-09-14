package com.bus.booking.entities;

import javax.persistence.Entity;

import javax.persistence.OneToOne;

@Entity
public class Reservation extends Abstract{
	

	private boolean checkedIn;
	
	@OneToOne
	private Passenger passenger; 
	
	@OneToOne
	private Bus bus;

	
	public boolean isCheckedIn() {
		return checkedIn;
	}

	public void setCheckedIn(boolean checkedIn) {
		this.checkedIn = checkedIn;
	}

	public Passenger getPassenger() {
		return passenger;
	}

	public void setPassenger(Passenger passenger) {
		this.passenger = passenger;
	}

	public Bus getBus() {
		return bus;
	}

	public void setBus(Bus bus) {
		this.bus = bus;
	}

	
}
