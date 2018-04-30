package com.capstone;

import java.nio.charset.Charset;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.embedded.EmbeddedServletContainerFactory;
import org.springframework.boot.context.embedded.tomcat.TomcatEmbeddedServletContainerFactory;
import org.springframework.context.annotation.Bean;


	
@SpringBootApplication
public class CapstoneApplication {

	public static void main(String[] args) {
		SpringApplication.run(CapstoneApplication.class, args);
	}

	/**
	 * Tomcat 
	 *
	 *
	 * @Method : servletContainer
	 * @return : EmbeddedServletContainerFactory
	 * @author : yoonah park
	 * @since : 2018. 04. 30.
	 */
	@Bean
	public EmbeddedServletContainerFactory servletContainer() {
		TomcatEmbeddedServletContainerFactory tomcat = new TomcatEmbeddedServletContainerFactory();
		tomcat.setPort(8080);
		tomcat.setUriEncoding(Charset.forName("UTF-8"));
		tomcat.setSessionTimeout(60*24);

		return tomcat;
	}
}


