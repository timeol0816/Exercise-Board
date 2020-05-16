package org.spring.project.board.service;

import java.util.List;

import org.spring.project.board.service.impl.BoardVO;
import org.spring.project.board.service.impl.SearchCriteria;

public interface BoardService {
	
	public void insert(BoardVO boardVO) throws Exception;
	public void delete(BoardVO boardVO)throws Exception;
	public void update(BoardVO boardVO)throws Exception;
	public List<BoardVO> selectAll(SearchCriteria scri)throws Exception;
	public BoardVO select(int bno)throws Exception;
	public int listCount(SearchCriteria scri)throws Exception;
	
}
