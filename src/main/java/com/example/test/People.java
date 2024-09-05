package com.example.test;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class People {

  private final String name;

  public People(  @Value("${name}")String name) {
    this.name = name;
  }

//  @Override
//  public String toString() {
//    return super.toString();
//  }
}
