package kr.or.ddit.member.dao;

import java.util.List;

public class MemberDaoImpl implements MemberDao {
	public static MemberDaoImpl instance = null;

	private MemberDaoImpl getInstance() {
		if (instance == null) {
			instance = new MemberDaoImpl();
		}
		return (MemberDaoImpl) instance;
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
