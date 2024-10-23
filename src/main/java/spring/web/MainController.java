package spring.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/*
 * Welcome Page  : 여러가지 방법중 Controller 로 만듬.
 */
@Controller
public class MainController {
	
	///Constructor
	public MainController(){
		System.out.println("==> MainController default Constructor call.............");
	}

	@GetMapping("/")
	public String index() {
		
		System.out.println("[ MainController.index() start........]");//<== 디버깅용
		//==> web.xml : <welcome-file>~~~.html or ~~.jsp</welcome-fle> : 물리적인 파일이어야 함.
		return "/user/logon.jsp";		//forward 
		//return "/user/logon";		//forward		오류 물리적인 파일이 아니기 때문에?
		
		//forward와 redirect 둘 중 우선순위가 높은 것은 forward
	}
}
