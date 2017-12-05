package com.breezetest.vo;

public class MemberVo {
	private int idx;
	private String name;
	private int age;
	
	public MemberVo() {}
	
	public MemberVo(int idx, String name, int age) {
		super();
		this.idx = idx;
		this.name = name;
		this.age = age;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "MemberVo [idx=" + idx + ", name=" + name + ", age=" + age + "]";
	}
	
}
