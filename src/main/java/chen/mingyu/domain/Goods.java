package chen.mingyu.domain;

import java.util.List;

//��Ʒ
public class Goods {
	private String g_id;
	//����
	private String g_title;
	//����
	private String g_detail;
	//�۸�
	private String g_price;
	//Ʒ����
	private String g_brand;
	//�������
	private int g_number;
	//���
	private int g_inventory;
	//ϲ����
	private int g_like;
	//��Ʒ״̬
	private String g_status;
	
	private List<Images> ltMage;
	
	
	
	public String getG_status() {
		return g_status;
	}
	public void setG_status(String g_status) {
		this.g_status = g_status;
	}
	public int getG_like() {
		return g_like;
	}
	public void setG_like(int g_like) {
		this.g_like = g_like;
	}
	public String getG_id() {
		return g_id;
	}
	public void setG_id(String g_id) {
		this.g_id = g_id;
	}
	public String getG_title() {
		return g_title;
	}
	public void setG_title(String g_title) {
		this.g_title = g_title;
	}
	public String getG_detail() {
		return g_detail;
	}
	public void setG_detail(String g_detail) {
		this.g_detail = g_detail;
	}
	public String getG_price() {
		return g_price;
	}
	public void setG_price(String g_price) {
		this.g_price = g_price;
	}
	public String getG_brand() {
		return g_brand;
	}
	public void setG_brand(String g_brand) {
		this.g_brand = g_brand;
	}
	public int getG_number() {
		return g_number;
	}
	public void setG_number(int g_number) {
		this.g_number = g_number;
	}
	public int getG_inventory() {
		return g_inventory;
	}
	public void setG_inventory(int g_inventory) {
		this.g_inventory = g_inventory;
	}
	public List<Images> getLtMage() {
		return ltMage;
	}
	public void setLtMage(List<Images> ltMage) {
		this.ltMage = ltMage;
	}
	
	
}
