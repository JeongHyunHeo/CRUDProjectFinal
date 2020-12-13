package crud.coding.wiki;

import java.util.List;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public int deleteBoard(int seq);
	public int updateBoard(BoardVO vo);
	public BoardVO getBoard(int seq);
	public List<BoardVO> getBoardList();
	public List<BoardVO> getBoardListC();
	public List<BoardVO> getBoardListPython();
	public List<BoardVO> getBoardListCsharp();
	public List<BoardVO> getBoardListCplus();
	public List<BoardVO> getBoardListJava();
	public List<BoardVO> getBoardListJS();
	public List<BoardVO> getBoardListPHP();
	public List<BoardVO> getBoardListR();
}
