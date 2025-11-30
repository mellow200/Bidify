package biddingPackage;

public class itemlistmodel {

	//getting the details
	
	private int id;
	private String name;
	private String category;
	private String base_price;
	private String description;
	
	public itemlistmodel(int id, String name, String category, String base_price, String description) {
		
		this.id = id;
		this.name = name;
		this.category = category;
		this.base_price = base_price;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getBase_price() {
		return base_price;
	}

	public void setBase_price(String base_price) {
		this.base_price = base_price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
	
}
