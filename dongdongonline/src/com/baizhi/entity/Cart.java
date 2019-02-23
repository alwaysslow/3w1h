package com.baizhi.entity;

import java.util.HashMap;
import java.util.Map;

public class Cart {
	//想要从map中判断是否含有指定的key值 不能为空 需要new出来一个
	private Map<Integer,Item> addmap=new HashMap<>();
	private Map<Integer,Item> removemap =new HashMap<>();
	private Double totalprice;
	private Double totalsave;
	public Map<Integer, Item> getRemovemap() {
		return removemap;
	}
	public void setRemovemap(Map<Integer, Item> removemap) {
		this.removemap = removemap;
	}
	public Double getTotalsave() {
		return totalsave;
	}
	public void setTotalsave(Double totalsave) {
		this.totalsave = totalsave;
	}
	public Map<Integer, Item> getAddmap() {
		return addmap;
	}
	public void setAddmap(Map<Integer, Item> addmap) {
		this.addmap = addmap;
	}
	public Double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(Double totalprice) {
		this.totalprice = totalprice;
	}
	@Override
	public String toString() {
		return "Cart [addmap=" + addmap + ", totalprice=" + totalprice + "]";
	}
	
}
