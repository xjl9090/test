package com.example.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/orders")
public class HelloWorldController {

  @Autowired
  private People people;

  @GetMapping("/{id}")
  public People getOrderById(@PathVariable int id) {
    System.out.println(people);
    return people;
  }
}
