package com.dileep.user_registration.mapper;

import com.dileep.user_registration.dto.RegisterDTO;
import com.dileep.user_registration.dto.UserDTO;
import com.dileep.user_registration.entity.User;

public class UserMapper {

    private UserMapper(){}

    public static User toEntity(RegisterDTO dto) {
        return User.builder()
                .name(dto.name())
                .age(dto.age())
                .sex(dto.sex())
                .address(dto.address())
                .agree(dto.agree())
                .build();
    }

    public static User toEntity(UserDTO dto) {
        return User.builder()
                .id(dto.id())
                .name(dto.name())
                .age(dto.age())
                .sex(dto.sex())
                .address(dto.address())
                .agree(dto.agree())
                .build();
    }

    public static UserDTO toDTO(User user) {
        return new UserDTO(
                user.getId(),
                user.getName(),
                user.getAge(),
                user.getSex(),
                user.getAddress(),
                user.getAgree()
        );
    }
}
