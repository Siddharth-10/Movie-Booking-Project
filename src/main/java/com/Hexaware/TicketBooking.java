package com.Hexaware;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class TicketBooking {
	


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bid;
	private String username;
	private String moviename;
	private String seattype;
	private String showtimings;
	private String bookingdate;
	private int price;
	private int noofseats;
	private String seatlocation;
	
	public TicketBooking(int bid, String username, String moviename, String seattype, String showtimings,
			String bookingdate, int price, int noofseats, String seatlocation) {
		super();
		this.bid = bid;
		this.username = username;
		this.moviename = moviename;
		this.seattype = seattype;
		this.showtimings = showtimings;
		this.bookingdate = bookingdate;
		this.price = price;
		this.noofseats = noofseats;
		this.seatlocation = seatlocation;
	}

	
	
	


	
	public TicketBooking() {

	}
	

	



	
	
	
	@Override
	public String toString() {
		return "TicketBooking [bid=" + bid + ", username=" + username + ", moviename=" + moviename + ", seattype="
				+ seattype + ", showtimings=" + showtimings + ", bookingdate=" + bookingdate + ", price=" + price
				+ ", noofseats=" + noofseats + ", seatlocation=" + seatlocation + "]";
	}



	public int getBid() {
		return bid;
	}



	public void setBid(int bid) {
		this.bid = bid;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getMoviename() {
		return moviename;
	}



	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}



	public String getSeattype() {
		return seattype;
	}



	public void setSeattype(String seattype) {
		this.seattype = seattype;
	}



	public String getShowtimings() {
		return showtimings;
	}



	public void setShowtimings(String showtimings) {
		this.showtimings = showtimings;
	}



	public String getBookingdate() {
		return bookingdate;
	}



	public void setBookingdate(String bookingdate) {
		this.bookingdate = bookingdate;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public int getNoofseats() {
		return noofseats;
	}



	public void setNoofseats(int noofseats) {
		this.noofseats = noofseats;
	}



	public String getSeatlocation() {
		return seatlocation;
	}



	public void setSeatlocation(String seatlocation) {
		this.seatlocation = seatlocation;
	}





	
}
