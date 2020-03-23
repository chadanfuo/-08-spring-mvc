package common;

public class Money {
	private int amount;
	private String currency;
	
	public Money(int amount, String currency) {
		
		this.amount = amount;
		this.currency = currency;
		System.out.println(this);
	}

	public int getAmount() {
		return amount;
	}

	public String getCurrency() {
		return currency;
	}

	@Override
	public String toString() {
		return "Money [amount=" + amount + ", currency=" + currency + "]";
	}
	
	
}
