package com.bus.booking.entities;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Entity;


@Entity
public class Bus extends Abstract{
	
	private String busNumber;
	private String busName;
	private String departureCity;
	private String arrivalCity;
	private Date dateOfDeparture;
	private Timestamp estimatedDuration;
	
	public String getBusNumber() {
		return busNumber;
	}
	public void setBusNumber(String busNumber) {
		this.busNumber = busNumber;
	}
	public String getBusName() {
		return busName;
	}
	public void setBusName(String busName) {
		this.busName = busName;
	}
	public String getDepartureCity() {
		return departureCity;
	}
	public void setDepartureCity(String departureCity) {
		this.departureCity = departureCity;
	}
	public String getArrivalCity() {
		return arrivalCity;
	}
	public void setArrivalCity(String arrivalCity) {
		this.arrivalCity = arrivalCity;
	}
	public Date getDateOfDeparture() {
		return dateOfDeparture;
	}
	public void setDateOfDeparture(Date dateOfDeparture) {
		this.dateOfDeparture = dateOfDeparture;
	}
	public Timestamp getEstimatedDuration() {
		return estimatedDuration;
	}
	public void setEstimatedDuration(Timestamp estimatedDuration) {
		this.estimatedDuration = estimatedDuration;
	}
	
	
	

}
