package com.dileep.user_registration.repository;

import com.dileep.user_registration.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IUserRepository extends JpaRepository<User,Long> {
}
