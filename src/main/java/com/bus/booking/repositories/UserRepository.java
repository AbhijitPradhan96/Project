package com.bus.booking.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bus.booking.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String emailId);

}
