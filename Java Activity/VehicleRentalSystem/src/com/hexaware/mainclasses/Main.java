package com.hexaware.mainclasses;

import com.hexaware.abstractclasses.Vehicle;
import com.hexaware.concreteclasses.Bike;
import com.hexaware.concreteclasses.Car;
import com.hexaware.concreteclasses.Truck;
import com.hexaware.users.Users;
import java.util.*;

public class Main {
	public static void main(String[] args) {
		Scanner s=new Scanner(System.in);
		System.out.println("Enter the username and maximum vehicle allowed for the user");
		int maxvehicleno=s.nextInt();
		String uName=s.nextLine();
		Users user=new Users(uName,maxvehicleno);
		
		 Vehicle car = new Car("Toyota", 1000);
	     Vehicle bike = new Bike("Yamaha", 500);
	     Vehicle truck = new Truck("Volvo", 15000);
	     
	     while(true) {
	    	 System.out.println("1. Rent a vehicle");
	    	 System.out.println("2. Return a vehicle");
	    	 System.out.println("3. View rented vehicles");
	    	 System.out.println("4. Exit");
	    	 
	    	 int choice=s.nextInt();
	    	 
	    	 switch(choice) {
	    	 case 1:
	    		 System.out.println("Choose a vehicle to rent: 1. Car 2. Bike 3. Truck");
                 int vehicleChoice = s.nextInt();
                 switch (vehicleChoice) {
                     case 1:
                         user.rentVehicle(car);
                         break;
                     case 2:
                         user.rentVehicle(bike);
                         break;
                     case 3:
                         user.rentVehicle(truck);
                         break;
                 }
                 break;
                 
	    	 case 2:
	    		 System.out.println("Choose a vehicle to return: 1. Car 2. Bike 3. Truck");
                 vehicleChoice = s.nextInt();
                 switch (vehicleChoice) {
                     case 1:
                         user.returnVehicle(car);
                         break;
                     case 2:
                         user.returnVehicle(bike);
                         break;
                     case 3:
                         user.returnVehicle(truck);
                         break;
                 }
                 break;
             case 3:
                 System.out.println("Rented vehicles:");
                 for (int i = 0; i < user.getRentedVehicle().length; i++) {
                     if (user.getRentedVehicle()[i] != null) {
                         System.out.println(user.getRentedVehicle()[i].getName());
                     }
                 }
                 break;
             case 4:
                 System.out.println("Exiting...");
                 s.close();
                 return;
	    	 }
	     }
	}
}
