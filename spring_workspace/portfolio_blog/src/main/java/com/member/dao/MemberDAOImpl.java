package com.member.dao;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.member.vo.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject SqlSession sql;
	// �쉶�썝媛��엯

	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert("memberMapper.register", vo);
	}
	
	//濡쒓렇�씤
	@Override
	public MemberVO login(MemberVO vo)throws Exception{
		System.out.println("멤버DAO에서 vo 출력 : "+ vo);
		System.out.println("멤버 DAO 출력 확인 : "+sql.selectOne("memberMapper.login", vo));
		return sql.selectOne("memberMapper.login", vo);
	}
}