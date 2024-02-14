package com.example.kube1.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class Kube1Controller  {
	   @RequestMapping("/")
	   public String sayHello() {
	      return "Hello Spring Boot - new deployment ";
	   }
	}

	
	
	
