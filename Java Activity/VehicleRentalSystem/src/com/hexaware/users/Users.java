package com.hexaware.users;
import com.hexaware.abstractclasses.Vehicle;


import java.util.*;
public class Users {
	private String userName;
	private Vehicle[] rentedVehicle;
	private int vehicleCount;
	
	public Users(String userName,int maxVehicle) {
		this.userName=userName;
		this.rentedVehicle=new Vehicle[maxVehicle];
		this.vehicleCount=0;
	}
	
	//getter Methods
	public String getName() {
		return userName;
	}
	
	public Vehicle[] getRentedVehicle(){
		return rentedVehicle;
	}
	
	//setter methods
	public void setUserName(String userName) {
		this.userName=userName;
	}
	
	public void rentVehicle(Vehicle vehicle) {
		if (vehicleCount < rentedVehicle.length) {
			rentedVehicle[vehicleCount]=vehicle;
			vehicleCount++;
			vehicle.rentVehicle();
		}else {
			System.out.println("Cannot rent more vehicles - Limit reached !");
		}
	}
	
	public void returnVehicle(Vehicle vehicle){
		for(int i=0;i<vehicleCount;i++) {
			if(rentedVehicle[i].equals(vehicle)) {
				rentedVehicle[i]=rentedVehicle[vehicleCount-1];
				rentedVehicle[vehicleCount-1]=null;
				vehicleCount--;
				vehicle.returnVehicle();
				return;
			}
		}
		System.out.println("Vehicle not foun in vehicle list !");
	}
}
