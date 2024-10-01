package com.hexaware.Mainclass;
import java.util.*;

import com.hexaware.BankAccountsclass.BankAccounts;
import com.hexaware.customexceptions.InvalidAmountException;
import com.hexaware.customexceptions.InvalidChoiceException;
import com.hexaware.customexceptions.InsuffeicentFundException;
public class Main {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		BankAccounts account_1=null;
		
		while(true) {
			System.out.println("1. Create a new bank account.");
			System.out.println("2. Deposit money.");
			System.out.println("3. Withdraw money.");
			System.out.println("4. Check balance.");
			System.out.println("5. Exit.");
			
			int choice=s.nextInt();
			
			try {
				switch(choice) {
				case 1:
					account_1=new BankAccounts();
					System.out.println("New bank account created.");
					break;
				case 2:
					if(account_1 == null) throw new NullPointerException("No account found. Create account First.");
					System.out.println("Enter the amount to be deposited");
					double depositAmount=s.nextDouble();
					account_1.deposit(depositAmount);
					break;
				case 3:
					if(account_1 == null) throw new NullPointerException("No account found. Create account First.");
					System.out.println("Enter the amount to be withdrawn");
					double WithdrawAmount=s.nextDouble();
					account_1.withdraw(WithdrawAmount);
					break;
				case 4:
					if(account_1 == null) throw new NullPointerException("No account found. Create account First.");
					System.out.println("Current balance: "+account_1.getBalance());
					break;
				case 5:
					System.out.println("Exiting...");
					s.close();
					return;
				default:
					throw new InvalidChoiceException("Invalid choice please select a valid option");
				}
			} catch(InvalidAmountException | InsuffeicentFundException | InvalidChoiceException |NullPointerException e){
				System.out.println(e.getMessage());
			}
		}
	}
}
