package at.davl;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * in application.yml should be changed email and password
 * in EmailService in line 20 should be added email
 */


@SpringBootApplication
public class AuthApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(AuthApiApplication.class, args);
	}

}

/*
body -> row
 {
    "name" : "marat",
    "email" : "davl@gmail.com",
    "username" : "nexoc",
    "password" : "12345"
}
 */
