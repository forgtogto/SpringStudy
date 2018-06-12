<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<br />
<div class="container">
	<h2>전체 문제 보기</h2>
	<p>손수 만드신 문제를 올려놓았습니다. &nbsp;&nbsp;<a href="createTest_view.jk"> 또 문제 만들기 </a></p>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>문제 타이틀</th>
				<th>보기 (1)</th>
				<th>보기 (2)</th>
				<th>보기 (3)</th>
				<th>보기 (4) 및 정답</th>
				<th>등록일자</th>
				<th>etc</th>
			</tr>
		</thead>
		<c:forEach var="item" items="${test_view}">
			<tr>
				<td>${item.test_title}</td>
				<td>${item.test_ex1}</td>
				<td>${item.test_ex2}</td>
				<td>${item.test_ex3}</td>
				<td><font color=red>${item.test_ex4}</font></td>
				<td>${item.test_date}</td>
				<td><a href="modifyTest_view.jk?test_no=${item.test_no}">수정</a>
					<a href="deleteTest.jk?test_no=${item.test_no}">삭제</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>