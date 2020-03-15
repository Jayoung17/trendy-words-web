package com.yujachan.trendywords.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class twController {
    @GetMapping("/")
    public String index() {
        return "index";
    }

    @PostMapping("/")
    public String postindex() {
        return "postindex";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/trendy-words")
    public String trendyWords() { return "trendy-words"; }

    @GetMapping("/trendy-words/{word}")
    public String learn(@PathVariable("word") String return_word){
        return "learn";
    }

    @PostMapping("/trendy-words")
    public String learn() { return "learn"; }

    @GetMapping("/difficult-words")
    public String difficultWords() {
        return "difficult-words";
    }

}