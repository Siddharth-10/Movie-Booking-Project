package com.Hexaware;

import java.util.Collections;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Threatre {




	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int sid;
	private String showtimings;
	private int showId;
	private int seatStatus;
	private String moviename;


	public Threatre(int sid, String showtimings, int showId, int seatStatus, String moviename) {
		super();
		this.sid = sid;
		this.showtimings = showtimings;
		this.showId = showId;
		this.seatStatus = seatStatus;
		this.moviename = moviename;
		
	}
	

	public Threatre() {

	}

	public int getSeatStatus() {
		return seatStatus;
	}

	public void setSeatStatus(int seatStatus) {
		this.seatStatus = seatStatus;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getShowtimings() {
		return showtimings;
	}

	public void setShowtimings(String showtimings) {
		this.showtimings = showtimings;
	}

	public int getShowId() {
		return showId;
	}

	public void setShowId(int showId) {
		this.showId = showId;
	}

	@Override
	public String toString() {
		return "Threatre [sid=" + sid + ", showtimings=" + showtimings + ", showId=" + showId + ", seatStatus="
				+ seatStatus + ", moviename=" + moviename + "]";
	}

	public String getMoviename() {
		return moviename;
	}

	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}



	
}
