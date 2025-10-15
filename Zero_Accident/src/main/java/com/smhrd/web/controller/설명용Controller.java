package com.smhrd.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.web.entity.ExampleEntity;
import com.smhrd.web.service.설명용Service;

@Controller // 이 클래스를 컨트롤러라고 선언
public class 설명용Controller {
	
	@Autowired  // 스프링이 알아서 연결해주는 어노테이션
	private 설명용Service service;
	// 뭘 연결해? ExampleService라는 서비스와 연결하겠다. 그리고 service 라는 이름으로 가져다 쓰겠다.
	
	@GetMapping("/ExampleView2")
	//매핑 : view페이지에서 보낸 신호를 받는 것. 주소창에 "/ExampleView2"라고 온 신호가 들어오면 이하의 메서드를 실행하겠다.
	// GetMapping과 PostMapping이 있다. 둘을 구분 안 하고 RequestMapping으로 쓸 수도 있다.
	
	public String ExampleView(Model model) {
	// Model : 컨트롤러에서 뷰(view.jsp)로 데이터를 전달할 때 쓰는 객체.
	// Model model : Model이라는 객체를 불러와서 model 이라는 이름으로 가져다 쓰겠다.
	// **JSP(JavaServerPage) : 웹페이지를 만드는 것이 HTML이다. 근데 그 HTML에 자바코드까지 섞어쓸 수 있게 해주는 것.
		
		List<ExampleEntity> ExampleDBList = service.getExampleDBList();
		//  service.getExampleDBList() : service 의 getExampleDBList() 메서드를 실행하겠다.
		// List<ExampleEntity> ExampleDBList : 메서드의 반환값은 ExampleEntity 객체들을 담은 List 이며,
		// 그것을 ExampleDBList 라는 이름으로 가져다 쓰겠다.
		
		model.addAttribute("ExampleDBList", ExampleDBList);
		// model에 데이터 ExampleDBList를 담아서 "ExampleDBList"라는 이름으로 담아서 뷰에 전달한다.
		
		return "ExampleView";
		// 이 모든 과정을 한 후 ExampleView.jsp라는 뷰페이지를 띄워라
	}
}
