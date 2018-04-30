package com.capstone.config;

import java.nio.charset.Charset;

import javax.servlet.Filter;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * 
 *
 * @filename DispatcherServletConfg.java
 * @date 2018. 04. 30.
 * @author yoonah park
 */
@Configuration
@ComponentScan(basePackages = "com.capstone", excludeFilters = @ComponentScan.Filter(Configuration.class))
@PropertySource(value = { "classpath:config.properties" })
public class DispatcherServletConfig extends WebMvcConfigurerAdapter {

	@Bean
	public DispatcherServlet dispatcherServlet() {
		return new DispatcherServlet();
	}

	/**
	 * ViewResolver(InternalResourceViewResolver) 
	 *
	 * @author yoonah park
	 * @date 2018. 04. 30.
	 */
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	/**
	 * @see org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter#addResourceHandlers(org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry)
	 *
	 *      <resources mapping="/resources/**" location="/resources/" /> 
	 * @author yoonah park
	 * @date 2018. 04. 30.
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("/css/").setCachePeriod(0);
		registry.addResourceHandler("/images/**").addResourceLocations("/images/").setCachePeriod(0);
		registry.addResourceHandler("/js/**").addResourceLocations("/js/").setCachePeriod(0);
		registry.addResourceHandler("/views/**").addResourceLocations("/views/").setCachePeriod(0);
		super.addResourceHandlers(registry);
	}

	@Bean
	public Filter characterEncodingFilter() {
		CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
		characterEncodingFilter.setEncoding("UTF-8");
		characterEncodingFilter.setForceEncoding(true);
		return characterEncodingFilter;
	}

	

	@Bean
	public HttpMessageConverter<String> responseBodyConverter() {
		StringHttpMessageConverter stringHttpMessageConverter = new StringHttpMessageConverter(Charset.forName("UTF-8"));
		return stringHttpMessageConverter;
	}

	@Bean
	public static PropertySourcesPlaceholderConfigurer propertyConfigIn() {
		PropertySourcesPlaceholderConfigurer prop = new PropertySourcesPlaceholderConfigurer();
		return prop;
	}

}
