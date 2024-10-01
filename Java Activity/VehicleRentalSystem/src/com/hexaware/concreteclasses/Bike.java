package com.hexaware.concreteclasses;

import com.hexaware.abstractclasses.Vehicle;

public class Bike extends Vehicle{
	public Bike(String vName, double rentalPrice){
		super(vName,rentalPrice);
	}
	
	public void rentVehicle() {
		System.out.println("Bike rented: "+ getName() );
	}
	public void returnVehicle() {
		System.out.println("Bike returned: "+ getName() );
	}

}
