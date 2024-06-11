package org.doit.senti.domain.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartDTO {
	
	// insert
	private int memberId;
	private int pdId;
	private int cnt; //수량
	
	//getCart
	private String pdName;
	private String pdImageURL;
	private String brandName;
	private int pdPrice;
	private int pdDiscountRate;
	private String testOption;
	private int deliPay;
	
	//deleteCart
	private int cartId;
}
