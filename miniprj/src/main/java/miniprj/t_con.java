package miniprj;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class t_con {
	
	@GetMapping("/test.do")
	public void test(Model m) {
		
	}
}
