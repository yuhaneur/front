package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.dao.MemberDao;
import kr.or.ddit.member.dao.MemberDaoImpl;

public class MemberServiceImpl implements MemberService {

	public static MemberServiceImpl instance = null;

	private MemberServiceImpl getInstance() {
		if (instance == null) {
			instance = new MemberServiceImpl();
		}
		return (MemberServiceImpl) instance;
	}
	
	
	@Override
	public int Idcheck() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<String> a() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int submit() {
		// TODO Auto-generated method stub
		return 0;
	}

}
