package com.green.chodoori.main.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;

import com.green.chodoori.main.domain.CorporateSignUpMetaDataFormVo;
import com.green.chodoori.main.domain.CorporateSignUpMetaDataFormVoRepo;
import com.green.chodoori.main.domain.IndividualSginUpMetadataFormVo;
import com.green.chodoori.main.domain.IndividualSginUpMetadataFormVoRepo;
import com.green.chodoori.main.domain.UserInfoDto;
import com.green.chodoori.main.domain.UserInfoRepo;
import com.green.chodoori.util.fileUpload.ImgUploadAndGenerateSignUpDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SignUpService {


	@Autowired
	ImgUploadAndGenerateSignUpDto service;
	
	@Autowired
	UserMetaDataSeparatorService separator;
	
	@Autowired
	IndividualSginUpMetadataFormVoRepo individualRepo;
	
	@Autowired
	CorporateSignUpMetaDataFormVoRepo corpRepo;
	
	@Autowired
	UserInfoRepo userRepo;
	
	public void corporateMetaDataService(CorporateSignUpMetaDataFormVo dto) {
	System.out.println("----------------------"+dto.toString()+"------------------------------------");
		
		
		System.out.println(dto.getId());
		String user_id = dto.getId();
		UserInfoDto userDto = userRepo.findById(user_id).get();
		
		System.out.println(userDto.toString());
		
		dto.setUser_info_corp(userDto);
		dto.setId(null);
		corpRepo.save(dto);
		
		
	}
	
	public void individualMetaDataService(MultiValueMap<String,String> map) {
		log.info("들어온 메타데이터 정보 : {}",map);
		IndividualSginUpMetadataFormVo vo = separator.separatorForUserMetadata(map);
		log.info("메타데이터 객체 정보 : {}",vo.toString());
		
		String userId=map.get("id").get(0);
		UserInfoDto userDto = userRepo.findById(userId).get();
		
		log.info("유저 정보 : {}",userDto.toString());
		vo.setUser_info_ind(userDto);
		
		System.out.println(vo.toString());
		
		individualRepo.save(vo);
		
		System.out.println(individualRepo.findById(userId).toString());
		
		System.out.println("완료");
	}
	
	public void signUpProcessor(UserInfoDto dto) {
		userRepo.save(dto);
	}
}
