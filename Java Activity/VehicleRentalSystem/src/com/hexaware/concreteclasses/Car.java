package com.hexaware.concreteclasses;
import com.hexaware.abstractclasses.Vehicle;

public class Car extends Vehicle {
	
		public Car(String vName, double rentalPrice){
			super(vName,rentalPrice);
		}
		
		public void rentVehicle() {
			System.out.println("Car rented: "+ getName() );
		}
		public void returnVehicle() {
			System.out.println("Car returned: "+ getName() );
		}

	

}
