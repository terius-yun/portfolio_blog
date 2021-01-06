package com.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.member.dao.MemberDAO;
import com.member.dao.MemberDAOImpl;
import com.member.vo.MemberVO;



@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject MemberDAO dao;
	
	@Override
	public void register(MemberVO vo) throws Exception {	
		dao.register(vo);
	}
	
	public MemberVO login(MemberVO vo)throws Exception{
		System.out.println("멤버서비스임플에서 vo 출력 : "+ vo);
		return dao.login(vo);
	}
}
