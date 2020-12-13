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
	
	//FrontPage Request Mapping
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		return "frontPage";
	}
	
	//MainPage Request Mapping
	@RequestMapping(value="/main", method = RequestMethod.GET)
	public String main(Model model){
		model.addAttribute("list", boardService.getBoardList());
		
		return "mainPage";
	}
	@RequestMapping(value = "/C", method = RequestMethod.GET)
	public String c(Model model) {
		model.addAttribute("list", boardService.getBoardListC());
		
		return "mainPage";
	}
	@RequestMapping(value = "/Python", method = RequestMethod.GET)
	public String python(Model model) {
		model.addAttribute("list", boardService.getBoardListPython());
		
		return "mainPage";
	}
	@RequestMapping(value = "/Cplus", method = RequestMethod.GET)
	public String cplus(Model model) {
		model.addAttribute("list", boardService.getBoardListCplus());
		
		return "mainPage";
	}
	@RequestMapping(value = "/Csharp", method = RequestMethod.GET)
	public String csharp(Model model) {
		model.addAttribute("list", boardService.getBoardListCsharp());
		
		return "mainPage";
	}
	@RequestMapping(value = "/Java", method = RequestMethod.GET)
	public String java(Model model) {
		model.addAttribute("list", boardService.getBoardListJava());
		
		return "mainPage";
	}
	@RequestMapping(value = "/JS", method = RequestMethod.GET)
	public String js(Model model) {
		model.addAttribute("list", boardService.getBoardListJS());
		
		return "mainPage";
	}
	@RequestMapping(value = "/php", method = RequestMethod.GET)
	public String php(Model model) {
		model.addAttribute("list", boardService.getBoardListPHP());
		
		return "mainPage";
	}
	@RequestMapping(value = "/R", method = RequestMethod.GET)
	public String R(Model model) {
		model.addAttribute("list", boardService.getBoardListR());
		
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
		
		return "redirect:/main";
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
	
	
	//Editting Page
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("each", boardVO);
		return "editPage";
	}
	
	@RequestMapping(value = "/edit/editok", method = RequestMethod.POST)
	public String editPostOk(BoardVO vo) {
		if(boardService.updateBoard(vo) == 0)
			System.out.println("데이터 수정 실패!");
		else
			System.out.println("데이터 수정 성공!");
		
		return "redirect:/";
	
	}
}