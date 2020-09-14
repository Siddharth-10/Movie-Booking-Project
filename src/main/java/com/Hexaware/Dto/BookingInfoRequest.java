package com.Hexaware.Dto;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

public class BookingInfoRequest {

	
	
	private String username;
	private String moviename;
	private String seattype;
	private String showtimings;
	private String bookingdate;

	public BookingInfoRequest( String username, String moviename, String seattype, String showtimings,
			String bookingdate) {
		super();
		
		this.username = username;
		this.moviename = moviename;
		this.seattype = seattype;
		this.showtimings = showtimings;
		this.bookingdate = bookingdate;
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

	@Override
	public String toString() {
		return "BookingInfoRequest [ username=" + username + ", moviename=" + moviename + ", seattype="
				+ seattype + ", showtimings=" + showtimings + ", bookingdate=" + bookingdate + "]";
	}

}
