package org.ndt.obs.entity;

public class User 
{

	private String userName;
	private String password;
	private String mailId;
	private String doornum;
	private String street;
	private String city;
	private String state;
	private String pincode;
	private String phonenum;
	
	
	/*public User(String userName, String password, String mailId,String address, String phonenum) 
	{
		super();
		this.userName = userName;
		this.password = password;
		this.mailId = mailId;
		this.address = address;
		this.phonenum = phonenum;
	}


	public User(String userName, String mailId, String address, String phonenum) {
		super();
		this.userName = userName;
		this.mailId = mailId;
		this.address = address;
		this.phonenum = phonenum;
	}*/


	public User(String userName, String password, String mailId,String doornum, String street, String city, String state,String pincode, String phonenum) {
		super();
		this.userName = userName;
		this.password = password;
		this.mailId = mailId;
		this.doornum = doornum;
		this.street = street;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.phonenum = phonenum;
	}

	public User(String userName, String mailId, String doornum, String street,
			String city, String state, String pincode, String phonenum) {
		super();
		this.userName = userName;
		this.mailId = mailId;
		this.doornum = doornum;
		this.street = street;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.phonenum = phonenum;
	}

	public User(String userName, String password)
	{
		super();
		this.userName = userName;
		this.password = password;
	}
	
	public String getUserName() 
	{
		return userName;
	}
	
	
//	public String getAddress() {
//		return address;
//	}
//
//
//	public void setAddress(String address) {
//		this.address = address;
//	}


	public String getPhonenum() 
	{
		return phonenum;
	}

	public String getDoornum() 
	{
		return doornum;
	}

	public void setDoornum(String doornum) 
	{
		this.doornum = doornum;
	}

	public String getStreet() 
	{
		return street;
	}

	public void setStreet(String street)
	{
		this.street = street;
	}

	public String getCity() 
	{
		return city;
	}

	public void setCity(String city) 
	{
		this.city = city;
	}

	public String getState() 
	{
		return state;
	}

	public void setState(String state) 
	{
		this.state = state;
	}

	public String getPincode() 
	{
		return pincode;
	}

	public void setPincode(String pincode)
	{
		this.pincode = pincode;
	}

	public void setPhonenum(String phonenum)
	{
		this.phonenum = phonenum;
	}


	public void setUserName(String userName) 
	{
		this.userName = userName;
	}
	
	public String getPassword() 
	{
		return password;
	}
	
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	public String getMailId() 
	{
		return mailId;
	}
	
	public void setMailId(String mailId)
	{
		this.mailId = mailId;
	}
	
	
}
