<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card mb-3">
		<div class="card-header">
			<i class="fa fa-table"></i> BBoard 게시판
		</div>
		<form class="form-horizontal" role="form" method="post"
			action="reply.jk">
			<input type="hidden" name="bId" value="${reply_view.bId}">
			<input type="hidden" name="bGroup" value="${reply_view.bGroup}">
			<input type="hidden" name="bStep" value="${reply_view.bStep}">
			<input type="hidden" name="bIndent" value="${reply_view.bIndent}">

			<div class="form-group">
				<br /> <label for="bName" class="col-sm-4 control-label">
				번호&nbsp;${reply_view.bId} &nbsp;/&nbsp; 히트&nbsp;${reply_view.bHit} </label>
			</div>
			<div class="form-group">
				<br /> <label for="bName" class="col-sm-2 control-label">이름</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="bName" name="bName"
						placeholder="First & Last Name" value="${reply_view.bName}">
				</div>
			</div>
			<div class="form-group">
				<label for="bTitle" class="col-sm-2 control-label">제목</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="bTitle" name="bTitle"
						value="${reply_view.bTitle}">
				</div>
			</div>
			<div class="form-group">
				<label for="bContent" class="col-sm-2 control-label">내용</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="4" name="bContent">${reply_view.bContent}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-10 col-sm-offset-2">
				<input type="submit" value="답변">&nbsp; <a href="list.jk" >목록</a>
				</div>
			</div>
		</form>
	</div>	
</body>
</html>