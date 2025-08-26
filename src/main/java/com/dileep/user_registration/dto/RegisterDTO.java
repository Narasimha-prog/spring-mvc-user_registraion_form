package com.dileep.user_registration.dto;

import jakarta.validation.constraints.*;

public record RegisterDTO(@NotBlank(message = "Name is required")
                          String name,

                          @NotNull(message = "Age is required")
                          @Min(value = 18, message = "Age must be at least 18")
                          @Max(value = 100, message = "Age must be less than 100")
                          Integer age,

                          @NotBlank(message = "Sex is required")
                          String sex,

                          @NotBlank(message = "Address is required")
                          String address,

                          @AssertTrue(message = "You must agree to the terms")
                          Boolean agree) {
}
