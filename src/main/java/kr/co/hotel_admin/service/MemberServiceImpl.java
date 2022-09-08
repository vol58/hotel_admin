package kr.co.hotel_admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.hotel_admin.mapper.MemberMapper;

@Service
@Qualifier("ms")
public class MemberServiceImpl implements MemberService{

	@Autowired
	public MemberMapper mapper;
}
