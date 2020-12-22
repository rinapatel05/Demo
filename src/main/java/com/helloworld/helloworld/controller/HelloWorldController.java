package com.helloworld.helloworld.controller;

import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RestController;  
@RestController  
public class HelloWorldController   
{  
@RequestMapping("/")  
public String hello()   
{  
return "CONTAINER RESTARTED SUCCESSFULLY AGAIN";  
}  
}  
