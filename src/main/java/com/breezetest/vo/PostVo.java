package com.breezetest.vo;

public class PostVo {
	private long idx;
	private String userId;
	private String postDateTime;
	private String tripDate;
	private String photo;
	private String content;
	private String location;
	private double lat;
	private double lot;
	private long tourIdx;
	private String category;
	private double price;
	private double score;
	private long like;
	
	public PostVo() {
	}
	
	public PostVo(long idx, String userId, String postDateTime, String tripDate, String photo, String content, String location,
			double lat, double lot, long tourIdx, String category, double price, double score, long like) {
		this.idx = idx;
		this.userId = userId;
		this.postDateTime = postDateTime;
		this.tripDate = tripDate;
		this.photo = photo;
		this.content = content;
		this.location = location;
		this.lat = lat;
		this.lot = lot;
		this.tourIdx = tourIdx;
		this.category = category;
		this.price = price;
		this.score = score;
		this.like = like;
	}

	public long getIdx() {
		return idx;
	}

	public void setIdx(long idx) {
		this.idx = idx;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPostDateTime() {
		return postDateTime;
	}

	public void setPostDateTime(String postDateTime) {
		this.postDateTime = postDateTime;
	}

	public String getTripDate() {
		return tripDate;
	}

	public void setTripDate(String tripDate) {
		this.tripDate = tripDate;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLot() {
		return lot;
	}

	public void setLot(double lot) {
		this.lot = lot;
	}

	public long getTourIdx() {
		return tourIdx;
	}

	public void setTourIdx(long tourIdx) {
		this.tourIdx = tourIdx;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public long getLike() {
		return like;
	}

	public void setLike(long like) {
		this.like = like;
	}

	@Override
	public String toString() {
		return "PostVo [idx=" + idx + ", userId=" + userId + ", postDateTime=" + postDateTime + ", tripDate=" + tripDate
				+ ", photo=" + photo + ", content=" + content + ", location=" + location + ", lat=" + lat + ", lot="
				+ lot + ", tourIdx=" + tourIdx + ", category=" + category + ", price=" + price + ", score=" + score
				+ ", like=" + like + "]";
	}

}
