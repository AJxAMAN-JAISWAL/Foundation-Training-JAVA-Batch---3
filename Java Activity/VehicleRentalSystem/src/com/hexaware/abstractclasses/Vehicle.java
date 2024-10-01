package com.hexaware.abstractclasses;

abstract public class Vehicle {
	private String vName;
	private double rentalPrice;
	
	public Vehicle(String vName, double rentalPrice){
		this.vName=vName;
		this.rentalPrice=rentalPrice;
	}
	
	//getter methods
	public String getName() {
		return vName;
	}
	
	public double getRentPrice() {
		return rentalPrice;
	}
	
	//setter methods
	public void setName(String vName) {
		this.vName=vName;
	}
	
	public void setRentPrice(double rentalPrice) {
		this.rentalPrice=rentalPrice;
	}
	
	//abstract methods
	public abstract void rentVehicle() ;
	public abstract void returnVehicle() ;
	
}
