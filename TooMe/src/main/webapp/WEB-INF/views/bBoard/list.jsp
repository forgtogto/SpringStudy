<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<!-- Example DataTables Card-->
	<div class="card mb-3">
		<div class="card-header">
			<i class="fa fa-table"></i> BBoard 게시판
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>번호</th> <th>이름</th> <th>제목</th> <th>날짜</th> <th>히트</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="dto">
							<tr>
								<td>${dto.bId}</td>
								<td>${dto.bName}</td>
								<td><c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
									<a href="content_view.jk?bId=${dto.bId}">${dto.bTitle}</a></td>
								<td>${dto.bDate}</td>
								<td>${dto.bHit}</td>
							</tr>
						</c:forEach>
					</tbody>
					<tr>
						<td colspan="5"><a href="write_view.jk">글작성</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>