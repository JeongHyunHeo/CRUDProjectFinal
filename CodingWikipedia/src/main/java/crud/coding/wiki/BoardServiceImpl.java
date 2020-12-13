package crud.coding.wiki;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public int insertBoard(BoardVO vo) {
		return boardDAO.insertBoard(vo);
	}
	
	@Override
	public int deleteBoard(int seq) {
		return boardDAO.deleteBoard(seq);
	}
	
	@Override
	public int updateBoard(BoardVO vo) {
		return boardDAO.updateBoard(vo);
	}
	
	@Override
	public BoardVO getBoard(int seq) {
		return boardDAO.getBoard(seq);
	}
	
	@Override
	public List<BoardVO> getBoardList(){
		return boardDAO.getBoardList();
	}
	
	@Override
	public List<BoardVO> getBoardListC(){
		return boardDAO.getBoardListC();
	}
	
	@Override
	public List<BoardVO> getBoardListPython(){
		return boardDAO.getBoardListPython();
	}
	
	@Override
	public List<BoardVO> getBoardListCsharp(){
		return boardDAO.getBoardListCsharp();
	}
	@Override
	public List<BoardVO> getBoardListCplus(){
		return boardDAO.getBoardListCplus();
	}
	@Override
	public List<BoardVO> getBoardListJava(){
		return boardDAO.getBoardListJava();
	}
	@Override
	public List<BoardVO> getBoardListJS(){
		return boardDAO.getBoardListJS();
	}
	@Override
	public List<BoardVO> getBoardListPHP(){
		return boardDAO.getBoardListPHP();
	}
	@Override
	public List<BoardVO> getBoardListR(){
		return boardDAO.getBoardListR();
	}
	
}
