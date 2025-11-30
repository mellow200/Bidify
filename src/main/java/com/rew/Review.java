package com.rew;

import com.user.User;

public class Review extends User{
	private int reviewID;
	private int rating;
	private String reviewText;
	public Review(int reviewID,int UID,String name, int rating, String reviewText) {
		super(UID,name);
		this.reviewID = reviewID;
		this.rating = rating;
		this.reviewText = reviewText;
	}
	
	public int getReviewID() {
		return reviewID;
	}
	public int getRating() {
		return rating;
	}
	public String getReviewText() {
		return reviewText;
	}
	
	
	
	
}
