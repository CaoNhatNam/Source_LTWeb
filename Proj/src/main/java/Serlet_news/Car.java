package Serlet_news;

public class Car {

	
	String name;
	String image;
	int nam;
	int cost;
	int soluong;
	public Car(String name,String image, int nam, int cost, int soluong) {
		super();
		this.name = name;
		this.image= image;
		this.nam = nam;
		this.cost = cost;
		this.soluong = soluong;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNam() {
		return nam;
	}
	public void setNam(int nam) {
		this.nam = nam;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String toString() {
		return "Car [name=" + name + ", nam=" + nam + ", cost=" + cost + ", soluong=" + soluong + "]";
	}
}
