package chen.mingyu.domain;

import java.util.Date;
import java.util.List;

public class News {

 private String n_Id;
 //���±���
 private String n_title;
 //��������
 private String n_detal;
 //��������
 private String n_author;
 //�����Ķ�����
 private int n_number;
 //���·���ʱ��
 private Date n_dateTime;
 //�����е�ͼƬ
 private List<Images> ltMage;
	public String getN_Id() {
		return n_Id;
	}
	public void setN_Id(String n_Id) {
		this.n_Id = n_Id;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_detal() {
		return n_detal;
	}
	public void setN_detal(String n_detal) {
		this.n_detal = n_detal;
	}
	public String getN_author() {
		return n_author;
	}
	public void setN_author(String n_author) {
		this.n_author = n_author;
	}
	public int getN_number() {
		return n_number;
	}
	public void setN_number(int n_number) {
		this.n_number = n_number;
	}
	public Date getN_dateTime() {
		return n_dateTime;
	}
	public void setN_dateTime(Date n_dateTime) {
		this.n_dateTime = n_dateTime;
	}
	public List<Images> getLtMage() {
		return ltMage;
	}
	public void setLtMage(List<Images> ltMage) {
		this.ltMage = ltMage;
	}
 
 
 
 
 
}
