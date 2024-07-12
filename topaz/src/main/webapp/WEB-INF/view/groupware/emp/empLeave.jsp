<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 
	 * 분류 번호 :  #4 - 전체 휴가 조회 페이지
	 * 시작 날짜 : 2024-07-08
	 * 담당자 : 김인수
 -->

<!DOCTYPE html>
<html lang="en">
<head>
	<!-- ======= header <Head> 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/headerHead.jsp"></jsp:include>
    <link rel="stylesheet" href="/topaz/css/insuEmpList.css"> <!-- CSS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- Jquery -->
</head>
	
<body>
	<!-- ======= header <Body> 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/hearderBody.jsp"></jsp:include>
	
	<!-- ======= sideBar 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/sideBar.jsp"></jsp:include>

	<!-- =============================== Main 메인 시작 부분 ================================ -->
	<main id="main" class="main">
	
		<!-- Title 시작 -->
		<div class="pagetitle">
		   <h1>전체 직원 휴가 목록</h1>
		   <nav>
		     <ol class="breadcrumb">
		       <li class="breadcrumb-item"><a href="/topaz/groupware/empMain">Home</a></li>
		       <li class="breadcrumb-item active">Employee Leave List</li>
		     </ol>
		   </nav>
		</div><!-- Title 종료 -->
		
		<section class="section">
			<div class="card">
				<div class="card-body">
				
					<!-- 메인 -->
				     <div class="mainContent">
				     
				     	<form action="<c:url value='/groupware/emp/empLeave' />" method="get" >
				     		<div style="margin-bottom: 20px;">
	                    		<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empList'">직원정보</button>
	                    		<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empLeave'">연월차 조회</button>
	                    		<button type="button" onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empAttendance'">근무조회</button>
	                    	</div>
					     	<!-- 입사년도 -->
					     	<div class="hireDateDiv">
					     		<label>휴가기간</label>
					     		 <div class="dateInput">
	                                <input type="date" name="startDate">
	                                <span>~</span>
	                                <input type="date" name="endDate">
	                            </div>
					     	</div>
					     	
	
					     	<div class="gradeNoDiv">
						     	<!-- 직위 -->
						     	<div>
						     		<label>사원이름</label>
						     		<input type="text" name="empName">
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
					     	</div>
				     	</form>
				     	
				     	
				     	<table class="table table-hover">
							<tr>
								<th>사원번호</th>
								<th>사원명</th>
								<th>부서명</th>
								<th>직위</th>
								<th>잔여 휴가일</th>
								<th>근무 유무</th>
							</tr>
							<c:forEach var="b" items="${empList}">
								<tr onclick="window.location.href='${pageContext.request.contextPath}/groupware/emp/empDetail?empNo=${b.empNo}'" style="cursor:pointer;">
									<td scope="col">${b.empNo}</td>
									<td scope="col">${b.empName }</td>
									<td scope="col">${b.empDept }</td>
									<td scope="col">${b.empGrade}</td>
									<td scope="col">${b.yearCnt}</td>
									<td scope="col">${b.useYn}</td>
								</tr>
							</c:forEach>
						</table>
						
						<!-- 버튼 -->
						 <div class="pagination">
					     	<c:choose>
						        <c:when test="${currentPage > 1}">
						            <a href="#" onclick="changePage(${currentPage-1})">
						                이전
						            </a>
						        </c:when>
						        <c:otherwise>
						            <a class="disabled">
						                이전
						            </a>
						        </c:otherwise>
						    </c:choose>
						    <div class="currentPage">${currentPage}</div>
						    <c:choose>
						        <c:when test="${currentPage < lastPage}">
						            <a href="#" onclick="changePage(${currentPage+1})">
						                다음
						            </a>
						        </c:when>
						        <c:otherwise>
						            <a class="disabled">
						                다음
						            </a>
						        </c:otherwise>
						    </c:choose>
						</div>
						
				     </div>			
				</div>
			</div>
		</section>
	</main><!-- End #main -->
	<!-- =============================== Main 메인 끝 부분 ================================ -->
	
	<!-- ======= footer 부분 ======= -->
	<jsp:include page="/WEB-INF/view/groupware/inc/footer.jsp"></jsp:include>
	<script>
		 $(document).ready(function() {
	         $('.resetBtn').click(function() {
	             //폼을 초기화
	             $('form')[0].reset();
	
	          	//검색 조건을 제거한 기본 URL로 리다이렉트
	             const baseUrl = window.location.href.split('?')[0];
	             window.location.href = baseUrl;
	         });
	     });
		 
		// 페이지 이동과 동시에 URL 상태를 유지하는 함수
         function changePage(page) {
             const urlParams = new URLSearchParams(window.location.search);
             urlParams.set('currentPage', page);
             window.location.search = urlParams.toString();
         }
	</script>
</body>
</html>