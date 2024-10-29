# 🍀 TOPAZ 실버타운 그룹웨어 및 고객페이지

## 1. 프로젝트 소개
현대 사회의 고령화로 다양한 형태의 실버타운 그룹웨어 수요가 증가할 것으로 예상하여 실버타운 맞춤형 그룹웨어 개발
- 배포 URL : <http://13.209.193.10/topaz/login>
- 개발 기간 : 2024.06.24 ~ 2024.07.26 (5주)
- [시연 영상 보기](https://youtu.be/wenoEmmYZUw?si=iSa2XPZMTfCxJINv)
- 개발 환경 <br>
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

## 2. 팀원 구성
- 김인수 ([@Guinsu](https://github.com/Guinsu))
- 박수지 ([@SSUJIJI](https://github.com/SSUJIJI)) 
- 박혜아 ([@hyeah0526](https://github.com/hyeah0526)) 
- 한은혜 ([@eunhyes](https://github.com/eunhyes))
<br>

## 3. 요구사항명세서
![요구사항명세서](https://github.com/user-attachments/assets/93a18c13-8ce5-43ef-b58f-8ffb450bb1c6)

<br>

## 4. ERD
![ERD](https://github.com/user-attachments/assets/84d68ef2-2207-4904-ae0a-100f2a004258)

<br>

## 5. WBS, 테이블 정의서
- [WBS](https://docs.google.com/spreadsheets/d/17xLkFZRcWKI7P6DrPTRG9coslae16YAg/edit?gid=2019096728#gid=2019096728)
- [테이블 정의서](https://docs.google.com/spreadsheets/d/1pRGr-6jWC95Qof-Y3daB35SteG2AeWJwrXgm1-QNgTY/edit?gid=619662548#gid=619662548)
<br><br>

## 6. 담당 기능
### [그룹웨어]<br>
  **1. 로그인**
  - 그룹웨어와 외주업체를 선택하여 로그인하도록 구현<br>
  - 세션 및 필터를 활용하여 접근 권한 제어<br><br>
![TOPAZ_로그인](https://github.com/user-attachments/assets/3991a9c6-bed5-4ca6-80ab-e6a635a0d9d2)

<br>

**2. 결재 목록**
- 카테고리별 결재 목록 조회<br>
- REST API와 AJAX를 활용하여 비동기적 페이징 및 검색 기능 구현<br><br>
![TOPAZ_결재목록](https://github.com/user-attachments/assets/cf860146-3578-4b63-a202-b97a3348689b)

<br>

**3. 봉사 일정 관리** <br>
- Full Calendar API를 사용하여 직관적인 봉사 일정 조회<br>
- 신규 봉사 일정 추가
  - 봉사 일정 추가 버튼 클릭 시 모달 팝업창 활성화<br>
- 봉사 일정 상세 조회, 수정 및 삭제
  - 캘린더의 일정 클릭 시 상세 내용 조회, 수정 및 삭제 버튼으로 기능 동작<br><br>
![TOPAZ_봉사일정관리](https://github.com/user-attachments/assets/a0e07894-ed1d-4402-ab50-f897f46e7486)

<br>

**4. 봉사 신청 관리** <br>
- REST API와 AJAX를 활용한 비동기적 페이징 및 검색 기능 구현<br>
- 목록 클릭 시 모달 팝업창 활성화
  - 봉사 신청 내용 및 해당 봉사에 대한 정보 조회 
  - 수락/거절로 상태 변경시 수용 인원 계산 및 제어 기능 구현 <br><br>
![TOPAZ_봉사신청관리](https://github.com/user-attachments/assets/29ee0ebe-ec30-4abc-adbc-aa59655352ae)

<br>
<br>

### [고객 페이지] <br>
- **회원가입** : 구글 SMTP와 Spring Mail 라이브러리를 활용한 이메일 인증, 다음 카카오 주소 API 사용<br>
- **마이페이지** : 입력한 정보 확인 및 수정, 비밀번호 변경 기능 구현<br>
- **비밀번호 찾기** : 임시 비밀번호 발급 및 비밀번호 변경 기능 구현<br>
- **봉사 신청** : 그룹웨어에서 등록된 봉사 일정을 조회하고 신청, 수용 인원 초과 시 신청 불가 기능<br>






