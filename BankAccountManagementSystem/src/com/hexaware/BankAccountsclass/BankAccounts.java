package com.hexaware.BankAccountsclass;

import com.hexaware.customexceptions.InsuffeicentFundException;
import com.hexaware.customexceptions.InvalidAmountException;

public class BankAccounts {
	private double balance=0.0;
	
	public BankAccounts() {
		this.balance=0.0;
	}
	
	public void deposit(double amount) throws InvalidAmountException{
		if( amount < 0) {
			throw new InvalidAmountException("Invalid amount. The deposit amount must be positive");
		}
		balance+=amount;
		System.out.println("Deposited: "+amount);
	}
	
	public void withdraw(double amount) throws InvalidAmountException, InsuffeicentFundException{
		if (amount <= 0) {
			throw new InvalidAmountException("Invalid Amount. Withdrawal amount be positive");
		}
		if(amount > balance) {
			throw new InsuffeicentFundException("Insufficient Fund, cannot withdraw more than the current balance");
		}
		balance-=amount;
		System.out.println("Withdrew "+amount);
	}
	
	public double getBalance() {
		return balance;
	}
}
