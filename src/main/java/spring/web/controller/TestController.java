package spring.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import spring.domain.User;

@RestController
@RequestMapping("/test")
public class TestController {
	
	///Field
	
	//Controller
	public TestController() {
		System.out.println("TestController.....");
	}
	
	///Method
	@GetMapping("/hello")
	public String hello() {
		System.out.println("TestController.hello().....");
		return "TestController.hello().....";
	}
	
	@GetMapping("/getUser")
	public User getUser() {
		System.out.println("TestController.getUser().....");
		
		//==> 빌더이용 상태값 설정 / 생성자 사용 / 세터 사용
		User user = User.builder()
							.age(10)
							.userId("홍길동")
							.password("1234")
							.build();
		return user;
		
//		return User.builder()
//							.age(10)
//							.userId("홍길동")
//							.password("1234")
//							.build();
	}
}