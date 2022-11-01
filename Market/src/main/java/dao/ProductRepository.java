package dao;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

import javax.print.attribute.Size2DSyntax;

//import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;

import dto.Product; 


public class ProductRepository {
	//listOfProducts에 product타입의 arraylist
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private ArrayList<Product> cart = new ArrayList<Product>();

	
	public ProductRepository() {
		
		Product phone = new Product("P1", "iPhone 6s", 800000);//객체3개만듬
		
		phone.setCategory("Smart Phone");
		phone.setCondition("New");
		phone.setDescription("4.7-inch,1334X750 Retina HD display, 8-megapixel iSlight Camera");
		phone.setMenufacturer("Apple");
		phone.setUnitsInstock(1000);
		phone.setSrc("아이폰.jpg");
		
		Product notebook = new Product("P2", "LG PC 그램", 1500000);
		notebook.setCategory("Notebook");
		notebook.setCondition("New");
		notebook.setDescription("13.3-inch, IPS SED display, 5rd Generation Intel Core processors");
		notebook.setMenufacturer("LG");
		notebook.setUnitsInstock(1000);
		notebook.setSrc("그램.png");
		
		Product tablet = new Product("P3", "Galaxy Tab s", 900000);
		tablet.setCategory("Tablet");
		tablet.setCondition("New");
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		tablet.setMenufacturer("Samsung");
		tablet.setUnitsInstock(1000);
		tablet.setSrc("갤탭.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts(){//arraylist getter만듬 
		return listOfProducts; //나중에 만들어질 3개상품들
	}

	
	public void addProduct(String productID, String pname, Integer unitPrice, String description, String menufacturer, String category, long unitsInstock, String condition, String src){
		Product pd = new Product(productID, pname, unitPrice, description, menufacturer, category,unitsInstock, condition,src);
		
		listOfProducts.add(pd);		
	}
	
	public Product getProdouctById(String productId) {
		Product product = null; 
		for(int i=0;i<listOfProducts.size();i++) {
			if(listOfProducts.get(i).getProductID().equals(productId)) {
				product = listOfProducts.get(i);
			} //listOfProducts에 있는 arraylist배열에 있는 3개만큼 돈다
			// productID(아이폰,노트북,태블릿이름과 일치하면 product객체에 저장
		}
		return product;
	}	
	
	// 아이폰, P1, 200000
	public void setCart(String ProductID, String Pname, Integer UnitPrice, Integer count) {
		
		// 중복이면 +1 아니면 list에 추가
		
		// 아 갤 그 아
		for (int i = 0; i < cart.size() ; i++) {
			if (ProductID.equals(cart.get(i).getProductID())) {
				cart.get(i).setCount(cart.get(i).getCount()+1);
				return;
			}
		}
		
		// p1 아이폰 230000 1
		Product pd = new Product(ProductID, Pname, UnitPrice, count);
		cart.add(pd);
	}	
	
	public ArrayList<Product> getCart(){ // 이 클래스가 아닌 다른 곳에서 cart의 정보가 필요할때
		return cart;
	}
	
	
}
