package com.Airline_Tickets.models;

import java.util.ArrayList;
import java.util.UUID;

public class Transaction {
	  public static String generateUUIDTransactionCode() {
	        return UUID.randomUUID().toString().toUpperCase();
	    }
	    public static void main(String[] args) {
	       
	        ArrayList<String> transactionCodes = new ArrayList<>();
	        for (int i = 0; i < 10; i++) {
	            String code = generateUUIDTransactionCode();
	            transactionCodes.add(code);
	        }
	        System.out.println("Generated Transaction Codes:");
	        for (String code : transactionCodes) {
	            System.out.println(code);
	        }
	    }
}
