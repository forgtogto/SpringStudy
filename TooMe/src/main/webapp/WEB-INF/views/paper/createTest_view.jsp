<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<body>
	<div class="card mb-3">
		<div class="card-header">
			<i class="fa fa-table"></i> 문제 만들기
		</div>
		<form class="form-horizontal" role="form" method="post"
			action="createTest.jk">
			<div class="form-group">
				<label for="message" class="col-sm-2 control-label">문제 타이틀</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="4" name="test_title"></textarea>
				</div>
			</div>
			
			<div class="form-group">
				<label for="message" class="col-sm-2 control-label">보기 작성 (1)</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3" name="test_ex1"></textarea>
				</div>
			</div>	
			<div class="form-group">
				<label for="message" class="col-sm-2 control-label">보기 작성 (2)</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3" name="test_ex2"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="message" class="col-sm-2 control-label">보기 작성 (3)</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3" name="test_ex3"></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="message" class="col-sm-2 control-label">정답 작성 (4)</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3" name="test_ex4"></textarea>
				</div>
			</div>
			<div>&nbsp;정답은 4번째에 넣고 답을 불러올때 랜덤으로 보기 번호를 다르게하기</div>
			<div class="form-group">
				<div class="col-sm-10 col-sm-offset-2">
					<input type="submit" value="저장하기" class="btn btn-primary">
					&nbsp;&nbsp; <a href="test_view.jk">문제 리스트</a>
				</div>
			</div>
		</form>
	</div>
</body>