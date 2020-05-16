package org.spring.project.board.service.impl;

import java.util.List;

import org.spring.project.board.service.BoardDAO;
import org.spring.project.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	
	@Override
	public void insert(BoardVO boardVO) throws Exception {
		int result = boardDAO.insert(boardVO);
		if(result == 0) {
			throw new Exception("insert �� ����");
		}
	}

	@Override
	public void delete(BoardVO boardVO) throws Exception{
		int result2 = boardDAO.delete(boardVO);
		if(result2 == 0) {
			throw new Exception("delete �� ����");
		}
	}

	@Override
	public void update(BoardVO boardVO) throws Exception{
		int result = boardDAO.update(boardVO);
		if(result == 0) {
			throw new Exception("update �� ����");
		}
	}

	@Override
	public List<BoardVO> selectAll(SearchCriteria scri) throws Exception{
		List<BoardVO> list = boardDAO.selectAll(scri);
		return list;
	}
	
	@Override
	public BoardVO select(int bno) throws Exception {
		
		
		return boardDAO.select(bno);
	}

	
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.listCount(scri);
	}
	
	
	
	
	
	
}