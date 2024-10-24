# 🍀 TOPAZ 실버타운 그룹웨어 및 고객페이지

## 1. 프로젝트 소개
현대 사회의 고령화로 다양한 형태의 실버타운 그룹웨어 수요가 증가할 것으로 예상하여 실버타운 맞춤형 그룹웨어 개발
- 배포 URL : <http://13.209.193.10/topaz/login>
- 개발 기간 : 2024.06.24 ~ 2024.07.26 (5주)
- [시연 영상 보기](https://youtu.be/wenoEmmYZUw?si=iSa2XPZMTfCxJINv)
<br>
**개발 환경**
<br>
OS : Mac OS <br>
Back-end : Java11 <br> 
Front-end : HTML5, CSS3, BootStrap, JavaScript <br>
Framework : Spring, Mybatis <br>
Library : JQuery, JSTL, Lombok <br>
Database : MariaDB <br>
WAS : Apache Tomcat 10 <br>
IDE : STS4 <br>
Cloud Service : Amazon Web Services <br>
버전관리 : GitHub <br>
<br>

## 2. 팀원 구성
- 김인수 ([@Guinsu](https://github.com/Guinsu))
- 박수지 ([@SSUJIJI](https://github.com/SSUJIJI)) 
- 박혜아 ([@hyeah0526](https://github.com/hyeah0526)) 
- 한은혜 ([@eunhyes](https://github.com/eunhyes))
<br>

## 3. 요구사항명세서
![요구사항명세서](https://github.com/user-attachments/assets/93a18c13-8ce5-43ef-b58f-8ffb450bb1c6)

## 4. ERD
![ERD](https://github.com/user-attachments/assets/84d68ef2-2207-4904-ae0a-100f2a004258)

## 5. WBS, 테이블 정의서
- [WBS](https://docs.google.com/spreadsheets/d/17xLkFZRcWKI7P6DrPTRG9coslae16YAg/edit?gid=2019096728#gid=2019096728)
- [테이블 정의서](https://docs.google.com/spreadsheets/d/1pRGr-6jWC95Qof-Y3daB35SteG2AeWJwrXgm1-QNgTY/edit?gid=619662548#gid=619662548)

## 6. 담당 기능
**[그룹웨어]**<br>
-로그인: 세션 및 필터를 활용하여 접근 권한 제어<br>
-결재 리스트: REST API와 AJAX를 활용해 비동기적 페이징 및 검색 기능 구현<br>
-봉사 일정 관리: Full Calendar를 사용해 봉사 일정을 체계적으로 관리<br>
-봉사 신청 관리: 비동기 페이징 및 검색 기능을 통해 신청 내역을 관리<br>
<br>
**[고객 페이지]**<br>
-회원가입: 구글 SMTP와 Spring Mail 라이브러리를 활용한 이메일 인증, 다음 카카오 주소 API 사용<br>
-로그인: 세션 및 필터를 활용하여 접근 권한 제어<br>
-비밀번호 찾기 및 변경: 임시 비밀번호 발급 및 비밀번호 변경 기능 구현<br>
-봉사 신청: 그룹웨어에서 등록된 봉사 일정을 조회하고 신청, 수용 인원 초과 시 신청 불가 기능<br>






