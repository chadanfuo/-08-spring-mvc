package common;

import java.text.ParseException;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.format.Formatter;

public class MoneyFormatter implements Formatter<Money>{

	@Override
	public String print(Money object, Locale locale) {
		return object.getAmount() + object.getCurrency();
	}

	@Override
	public Money parse(String text, Locale locale) throws ParseException {
		System.out.println("1======================"+text);
		Pattern pattern=Pattern.compile("([0-9]+)([A-Z]{3})");//1000won
		Matcher matcher=pattern.matcher(text);
		System.out.println("11======================"+matcher);
		if(!matcher.matches()){
			System.out.println("2======================");
			throw new IllegalArgumentException("invalid format");
		}
		int amount=Integer.parseInt(matcher.group(1));
		String currency=matcher.group(2);
		System.out.println("3======================");
		return new Money(amount,currency);
	}
	
}
