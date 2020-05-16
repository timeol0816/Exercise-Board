package org.spring.project.board.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.spring.project.board.service.BoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;




@Repository
public class BoardDAOImpl implements BoardDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	
	@Override
	public int insert(BoardVO boardVO) throws Exception{ 
		return sqlSessionTemplate.insert("Board.insert",boardVO);
	}

	@Override
	public int delete(BoardVO boardVO) throws Exception{
		return sqlSessionTemplate.delete("Board.delete",boardVO);
	}

	@Override
	public int update(BoardVO boardVO) throws Exception{
		
		return sqlSessionTemplate.update("Board.update",boardVO);
	}

	@Override
	public List<BoardVO> selectAll(SearchCriteria scri) throws Exception{
		
		return sqlSessionTemplate.selectList("Board.selectAll", scri);
	}

	@Override
	public BoardVO select(int bno) throws Exception{
		System.out.println("BoardDAOImpl: "+bno);
		return sqlSessionTemplate.selectOne("Board.select",bno);
		
	}


	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		
		return sqlSessionTemplate.selectOne("Board.listCount",scri);
	}
	@Override
	public void boardHit(int bno) throws Exception {
		// TODO Auto-generated method stub
		sqlSessionTemplate.update("Board.boardHit", bno);
	}
	
	

}