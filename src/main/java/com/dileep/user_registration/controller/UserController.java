package com.dileep.user_registration.controller;

import com.dileep.user_registration.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dileep.user_registration.dto.RegisterDTO;
import com.dileep.user_registration.dto.UserDTO;
import jakarta.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/users")
@RequiredArgsConstructor
@Slf4j
public class UserController {

    private final UserService userService;

    // Show registration form
    @GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("registerDTO", new RegisterDTO("", 18, "", "", false));
        return "register"; // maps to /WEB-INF/views/register.jsp
    }

    // Handle registration
    @PostMapping("/register")
    public String registerUser(@Valid @ModelAttribute("registerDTO") RegisterDTO dto,
                               BindingResult result,
                               Model model) {
    	log.info("User Register Data: {}",dto.toString());
        if (result.hasErrors()) {
            return "register";
        }
        userService.register(dto);
        return "redirect:/users/list";
    }

    // Show all users
    @GetMapping("/list")
    public String listUsers(Model model) {
        model.addAttribute("users", userService.getAll());
        return "user-list";
    }

    // Show update form
    @GetMapping("/edit/{id}")
    public String editUser(@PathVariable Long id, Model model) {
        model.addAttribute("userDTO", userService.getById(id));
        return "update";
    }

    // Handle update
    @PostMapping("/update")
    public String updateUser(@Valid @ModelAttribute("userDTO") UserDTO dto,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "update";
        }
        userService.update(dto);
        return "redirect:/users/list";
    }

    // Delete user
    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        userService.delete(id);
        return "redirect:/users/list";
    }
}

