package com.dileep.user_registration.service;

import com.dileep.user_registration.dto.RegisterDTO;
import com.dileep.user_registration.dto.UserDTO;
import com.dileep.user_registration.entity.User;
import com.dileep.user_registration.mapper.UserMapper;
import com.dileep.user_registration.repository.IUserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {
  
    private final IUserRepository userRepository;


    @Transactional(rollbackFor = Exception.class)
    public UserDTO register(RegisterDTO dto) {
        User user = UserMapper.toEntity(dto);
        return UserMapper.toDTO(userRepository.save(user));
    }

    @Transactional(rollbackFor = Exception.class)
    public UserDTO update(UserDTO dto) {
        User user = UserMapper.toEntity(dto);
        return UserMapper.toDTO(userRepository.save(user));
    }
    @Transactional(rollbackFor = Exception.class)
    public void delete(Long id) {
        userRepository.deleteById(id);
    }

    @Transactional(readOnly = true)
    public UserDTO getById(Long id) {
        return userRepository.findById(id)
                .map(UserMapper::toDTO)
                .orElseThrow(() -> new RuntimeException("User not found"));
    }

    @Transactional(readOnly = true)
    public List<UserDTO> getAll() {
        return userRepository.findAll().stream()
                .map(UserMapper::toDTO)
                .toList();
    }
}

