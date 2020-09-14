package com.Hexaware;

import org.springframework.data.repository.CrudRepository;

public interface LoginConnectivity extends CrudRepository<Login, Integer> {

	Login findByUsername(String username);

}
