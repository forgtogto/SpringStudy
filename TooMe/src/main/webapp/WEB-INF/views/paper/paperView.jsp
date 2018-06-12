<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
	<div class="card mb-3">
		<div class="card-header">
			<i class="fa fa-table"></i> 문제 풀기
		</div>
		<form class="form-horizontal" role="form" method="post"
			action="testresult.jk">
			
			<!-- 정답출력을 위해서 셋팅 -->
			<c:set var="ex1" value="${paper_view.test_ex1}" />
			<c:set var="ex2" value="${paper_view.test_ex2}" />
			<c:set var="ex3" value="${paper_view.test_ex3}" />
			<c:set var="ex4" value="${paper_view.test_ex4}" />
			<c:set var="sum" value="${ex1},${ex2},${ex3},${ex4} " />
			
			<!-- 문제를 불러오자  -->
			<c:out value="${paper_view.test_title}"/>


			<div class="form-group">
	
					<!-- 문제를 돌리자 . -->
					<c:forTokens items="${exies_view}" delims="," var="choice" varStatus="num">
						<p>
							<input type="radio" id="${num.count}" name="caUse" class="radio_m" value="${ choice }" /> 
							<label for="${num.count}">${choice}</label> 
							<input type="hidden" value="${ ex4 }" name="ex4" />
						</p>
					</c:forTokens>

			</div>
 
			<input type="submit" value="정답제출" />

			<div class="container-fluid">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#">이전</a></li>
								<li class="page-item"><a class="page-link"
									href="paper_view.jk">1</a></li>
								<li class="page-item"><a class="page-link"
									href="paper_view.jk">2</a></li>
								<li class="page-item"><a class="page-link"
									href="paper_view.jk">3</a></li>
								<li class="page-item"><a class="page-link"
									href="paper_view.jk">4</a></li>
								<li class="page-item"><a class="page-link"
									href="paper_view.jk">5</a></li>
								<li class="page-item"><a class="page-link" href="#">다음</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-md-3"></div>
				</div>
			</div>
		</form>
	</div>
</body>






