package spring.domain;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
 * FileName : User.java  
 * ㅇ User 의 정보를 갖는 Value Object (도메인객체,비지니스객체)
 * ㅇ USERS TABLE 의 1개의 ROW 의 정보를 갖는다.  
*/ 
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class User implements Serializable {

	///Field
    private String userId; 			// 회원 ID 
    private String userName;		// 회원 이름 
    private String password;     // 비밀번호 
    private Integer age;    			// 나이 :: Integer wrapper class 사용 :: 추후 용도 확인  
    private int grade;    				// 등급 :: int primitive 사용 :: :: 추후 용도 확인 
    private Timestamp regDate	; // 가입일자 
    //private Timestamp regDate	= new Timestamp(new Date().getTime()); // 가입일자
    private boolean active; 
   
}//end of class