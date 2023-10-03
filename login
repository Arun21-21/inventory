package com.inventory;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class login {
	static WebDriver d;
	public static void main(String[] args) throws InterruptedException {
		System.setProperty("webdriver.chrome.driver","C:\\Chromedriver\\chromedriver.exe");
	    WebDriver d = new ChromeDriver();
	    d.manage().window().maximize();
	    d.manage().timeouts().implicitlyWait(Duration.ofSeconds(2));
	    d.get("http://demo.cdev.co.in/login");
	    Thread.sleep(200);
	    d.findElement(By.xpath("(//input[@type='text'])[1]")).click();  
	    d.findElement(By.xpath("(//input[@type='text'])[1]")).sendKeys("admin@gmail.com");
	    d.findElement(By.xpath("//input[@type='password']")).sendKeys("admin@123");
	    d.findElement(By.xpath("//button[normalize-space()='Login']")).click();

	    
	}

}
