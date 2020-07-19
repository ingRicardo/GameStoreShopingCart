package com.example.uabc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.example.uabc")
public class SpringBootApp2Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootApp2Application.class, args);
	}

}


//https://dzone.com/articles/creating-a-web-application-with-spring-boot
//https://getbootstrap.com/docs/4.3/components/jumbotron/