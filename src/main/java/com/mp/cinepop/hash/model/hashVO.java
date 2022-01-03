package com.mp.cinepop.hash.model;

public class hashVO {

	private String id;
    private String digest;
    private String salt;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDigest() {
		return digest;
	}
	public void setDigest(String digest) {
		this.digest = digest;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	@Override
	public String toString() {
		return "hashVO [id=" + id + ", digest=" + digest + ", salt=" + salt + "]";
	}
	
    
    
}
