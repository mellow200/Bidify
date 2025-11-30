package BidifyPackage;

public class PaymentModel {
	private int id ;
	private String name;
	private String card_number;
	private String expiry_date;
	private String cvv;
	
	
	public PaymentModel(int id, String name, String card_number, String expiry_date, String cvv) {
		super();
		this.id = id;
		this.name = name;
		this.card_number = card_number;
		this.expiry_date = expiry_date;
		this.cvv = cvv;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int paymentId) {
		this.id = paymentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCard_number() {
		return card_number;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}

	public String getExpiry_date() {
		return expiry_date;
	}

	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	

}
