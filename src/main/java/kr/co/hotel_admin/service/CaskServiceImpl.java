package kr.co.hotel_admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.hotel_admin.mapper.CaskMapper;

@Service
@Qualifier("cs")
public class CaskServiceImpl implements CaskService {

	@Autowired
	public CaskMapper mapper;
}
