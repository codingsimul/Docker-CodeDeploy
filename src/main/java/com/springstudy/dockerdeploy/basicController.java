package com.springstudy.dockerdeploy;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class basicController {

    @GetMapping("/")
    public String home() {
        return "Hello World";
    }
}
