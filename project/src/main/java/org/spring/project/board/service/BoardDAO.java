package org.spring.project.board.service;

import java.util.List;

import org.spring.project.board.service.impl.BoardVO;
import org.spring.project.board.service.impl.SearchCriteria;



public interface BoardDAO {
	public int insert(BoardVO boardVO)throws Exception;
	public int delete(BoardVO boardVO)throws Exception;
	public int update(BoardVO boardVO)throws Exception;
	public List<BoardVO> selectAll(SearchCriteria scri)throws Exception;
	public BoardVO select(int bno) throws Exception;
	public int listCount(SearchCriteria scri) throws Exception;
	public void boardHit(int bno) throws Exception;
	

}
