package dto;

import java.io.Serializable; // 인터페이스쓸예정

public class Product implements Serializable { 
	
	private static final long serialVersionUID = 1L; //시리얼버전아이디가 객체에 대한 이름
	
	private String productID;	 //상품 아이디
	private String pname;		 //상품명
	private Integer unitPrice;   //상품 가격
	private String description;  //상품 설명
	private String menufacturer; //제조사
	private String category;	 //븐류
	private long unitsInstock;   //재고 수
	private String condition;    //신상 중고 재생
	private String src; 		//이미지파일
	private Integer count;
	
	public Product() {
		super();
	}
	

	
	public Product(String productID, String pname, Integer unitPrice, String description, String menufacturer,
			String category, long unitsInstock, String condition, String src) {
		this.productID = productID;
		this.pname = pname;
		this.unitPrice = unitPrice;
		this.description = description;
		this.menufacturer = menufacturer;
		this.category = category;
		this.unitsInstock = unitsInstock;
		this.condition = condition;
		this.src = src;
	}

	public Product(String productID, String pname, Integer unitPrice) {
		this.productID = productID;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}
	
	public Product(String productID, String pname, Integer unitPrice, Integer count) {
		this.productID = productID;
		this.pname = pname;
		this.unitPrice = unitPrice;
		this.count = count;
	}
	
	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getMenufacturer() {
		return menufacturer;
	}

	public void setMenufacturer(String menufacturer) {
		this.menufacturer = menufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInstock() {
		return unitsInstock;
	}

	public void setUnitsInstock(long unitsInstock) {
		this.unitsInstock = unitsInstock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}


	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}
	
	
	
}
