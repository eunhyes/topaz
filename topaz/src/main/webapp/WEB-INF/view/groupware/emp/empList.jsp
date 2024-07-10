<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 
	 * 분류 번호 :  #4 - 전체 직원 조회 페이지
	 * 시작 날짜 : 2024-07-05
	 * 담당자 : 김인수
 -->

<!DOCTYPE html>
<html lang="en">
<head>
	<!-- ======= header <Head> 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/headerHead.jsp"></jsp:include>
    <link rel="stylesheet" href="<c:url value='/css/insuEmpList.css' />"> <!-- CSS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- Jquery -->
</head>
	
<body>
	<!-- ======= header <Body> 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/hearderBody.jsp"></jsp:include>
	
	<!-- ======= sideBar 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/sideBar.jsp"></jsp:include>

	<!-- =============================== Main 메인 시작 부분 ================================ -->
	<main id="main" class="main">
	
		<div class="container">
		
			<div class="colorDiv">
			
				<!-- 제목 -->
				<div class="title">
      				<h1 class="titleH1">직원리스트</h1>
				</div>
			
				<!-- 메인 -->
			     <div class="mainContent">
			     
			     	<form id="searchForm" action="<c:url value='/groupware/emp/empList' />" method="post" >
			     		<div style="margin-bottom: 20px;">
                    		<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empList'">직원정보</button>
                    		<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empLeave'">연월차 조회</button>
                    		<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empAttendance'">근태조회</button>
                    	</div>
				     	<!-- 입사년도 -->
				     	<div class="hireDateDiv">
				     		<label>입사년도</label>
				     		 <div class="dateInput">
                                <input type="date" name="startDate">
                                <span>~</span>
                                <input type="date" name="endDate">
                            </div>
				     	</div>
				     	
				     	<div class="deptYNDiv">
					     	<!-- 재직사항 -->
				     		<div>
					     		<label>재직사항</label>
					     		<select name="useYn">
					     			<option value="">선택해주세요</option>
					     			<option value="Y">재직</option>
					     			<option value="N">퇴사</option>
					     		</select>
				     		</div>
				     		
							<!-- 부서명 -->
							<div>
					     		<label>부서명</label>
					     		<select name="empDept">
					     			<option value="">선택해주세요</option>
					     			<option value="E">인사부</option>
					     			<option value="M">마케팅부</option>
					     			<option value="W">행정부</option>
					     			<option value="C">고객 관리부</option>
					     		</select>
							</div>
				     	</div>
				     	
				     	<div class="gradeNoDiv">
					     	<!-- 직위 -->
					     	<div>
					     		<label>직위</label>
					     		<select name="empGrade">
					     			<option value="">선택해주세요</option>
					     			<option value="1">사원</option>
					     			<option value="2">대리</option>
					     			<option value="3">팀장</option>
					     			<option value="4">부장</option>
					     		</select>
				     		</div>
				     		
							<!-- 사원번호 -->
				     		<div>
								<label>사원번호</label>
					     		<input type="text" name="empNo">
					     	</div>				     	
				     	</div>
				     	
				     	<div class="btn">
					     	<button type="submit">검색</button>
					     	<button type="button" class="resetBtn">초기화</button>
					     	<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empAdd'">직원등록</button>
				     	</div>
			     	</form>
			     	
			     	
			     	<table border="1">
						<thead>
							<tr>
								<th>사원번호</th>
								<th>사원명</th>
								<th>부서명</th>
								<th>직위</th>
								<th>잔여 휴가일</th>
								<th>근무 유무</th>
							</tr>
						</thead>
					  		<tbody id="empListContainer">
                        	</tbody>
					</table>
					
					<!-- 버튼 -->
					<div class="pagination">
                        <a href="" id="prevPage" class="disabled">이전</a>
                        <div id="currentPage" class="currentPage">${currentPage}</div>
                        <a href="" id="nextPage" class="disabled">다음</a>
                    </div>
					
			     </div>			
			</div>
		</div>
	</main><!-- End #main -->
	<!-- =============================== Main 메인 끝 부분 ================================ -->
	
	<!-- ======= footer 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/footer.jsp"></jsp:include>
	<script src="<c:url value='/js/insuEmpSelectAll.js'/>"></script>
</body>
</html>