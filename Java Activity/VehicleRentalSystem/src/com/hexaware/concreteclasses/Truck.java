package com.hexaware.concreteclasses;
import com.hexaware.abstractclasses.Vehicle;

public class Truck extends Vehicle {
	public Truck(String vName, double rentalPrice){
		super(vName,rentalPrice);
	}
	
	public void rentVehicle() {
		System.out.println("Truck rented: "+ getName() );
	}
	public void returnVehicle() {
		System.out.println("Truck returned: "+ getName() );
	}

}
