package com.xianyuhome.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class MainController {

    @GetMapping("/test")
    public String hello(){
        return "你好！这里是待开发的咸鱼之家！，res：0";
    }

    @GetMapping("/")
    public String home(){
        return "main";
    }
}
