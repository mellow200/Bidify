package placebids;

public class BidModel {
	
	private int bid;
	private String bidamount;
	private String bidName;
	public BidModel(int bid, String bidamount, String bidName) {
		super();
		this.bid = bid;
		this.bidamount = bidamount;
		this.bidName = bidName;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBidamount() {
		return bidamount;
	}
	public void setBidamount(String bidamount) {
		this.bidamount = bidamount;
	}
	public String getBidName() {
		return bidName;
	}
	public void setBidName(String bidName) {
		this.bidName = bidName;
	}
	



	
	

}
