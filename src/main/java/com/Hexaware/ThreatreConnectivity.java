package com.Hexaware;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface ThreatreConnectivity extends CrudRepository<Threatre, Integer> {

	@Override
	List<Threatre> findAll();

	List<Threatre> findAllByMovienameAndShowtimings(String moviename,String showtimings);
	
	Threatre findByMovienameAndShowtimingsAndShowId(String moviename,String showtimings,int showId);
	

}
