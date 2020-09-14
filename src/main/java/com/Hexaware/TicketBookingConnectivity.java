package com.Hexaware;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

public interface TicketBookingConnectivity extends CrudRepository<TicketBooking, Integer> {
	TicketBooking findById(int bid);
	
}
