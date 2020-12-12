package crud.coding.wiki;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	BoardService boardService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("mainPage", boardService.getBoardList());
		
		return "mainPage";
	}
	
	//Connects to the Add page
	@RequestMapping(value = "/addPage", method = RequestMethod.GET)
	public String addPage() {
		
		return "addPage";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String addPostOK(BoardVO vo) {
		if(boardService.insertBoard(vo) == 0)
			System.out.println("데이터 추가 실패!");
		else
			System.out.println("데이터 추가 성공!");
		
		return "redirect:/";
	}
	
	//Deleting Page
	@RequestMapping(value = "/delete/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		if(boardService.deleteBoard(id) ==0)
			System.out.println("데이터 삭제 실패!");
		else
			System.out.println("데이터 삭제 성공!");
		return "redirect:/";
	}
}