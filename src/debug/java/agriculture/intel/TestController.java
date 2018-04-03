package debug.java.agriculture.intel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	@Autowired
	private TestDao testDao;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String welcome() {
		return "test/test";
	}
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(Model model) {
//		model.addAttribute("testModel", new TestModel());
		return "test/register";
	}
	@RequestMapping(value="/register", method=RequestMethod.POST)
	// 在这里 貌似@ModelAttribute("testModel") 用与不用皆可
	public String register(TestModel testModel, Model model) {
		model.addAttribute("testModel", testModel);
		testDao.register(testModel);
		System.out.println(testModel.getName() +
					" : " + testModel.getPassword());
		return "test/show";
	}
}
