package com.dileep.user_registration.dto;

public record UserDTO(
        Long id,
        String name,
        Integer age,
        String sex,
        String address,
        Boolean agree
) {}
