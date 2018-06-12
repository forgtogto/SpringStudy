<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top "
	id="mainNav">
	<a class="navbar-brand" href="index.jk">TOOMES'HOME</a>
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Dashboard"><a class="nav-link" href="blank.html"> <i
					class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">Dashboard</span>
			</a></li>
			<li class="nav-item " data-toggle="tooltip" data-placement="right"
				title="Charts"><a class="nav-link" href="mybatis_list.jk"> <i
					class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">MBoard</span>
			</a></li>
			<li class="nav-item " data-toggle="tooltip" data-placement="right"
				title="Charts"><a class="nav-link" href="list.jk"> <i
					class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">BBoard</span>
			</a></li>
			<li class="nav-item " data-toggle="tooltip" data-placement="right"
				title="Charts"><a class="nav-link" href="mailForm.jk"> <i
					class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">Send Email</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Example Pages"><a
				class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
				href="#collapseExamplePages" data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-file"></i> <span class="nav-link-text">Paper Test</span></a>
				<ul class="sidenav-second-level collapse" id="collapseExamplePages">
					<li><a href="createTest_view.jk">문제 작성</a></li>
					<li><a href="test_view.jk">문제 보기</a></li>
					<li><a href="paper_view.jk">문제 풀기</a></li>
					<li><a href="#">정답 확인</a></li>
				</ul></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Tables"><a class="nav-link" href="tables.html"> <i
					class="fa fa-fw fa-table"></i> <span class="nav-link-text">Tables</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Components"><a
				class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
				href="#collapseComponents" data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-wrench"></i> <span class="nav-link-text">Components</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseComponents">
					<li><a href="navbar.html">Navbar</a></li>
					<li><a href="cards.html">Cards</a></li>
				</ul></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Example Pages"><a
				class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
				href="#collapseExamplePages" data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-file"></i> <span class="nav-link-text">Example
						Pages</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseExamplePages">
					<li><a href="login.html">Login Page</a></li>
					<li><a href="register.html">Registration Page</a></li>
					<li><a href="forgot-password.html">Forgot Password Page</a></li>
					<li><a href="blank.html">Blank Page</a></li>
				</ul></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Menu Levels"><a
				class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
				href="#collapseMulti" data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-sitemap"></i> <span class="nav-link-text">Menu
						Levels</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseMulti">
					<li><a href="#">Second Level Item</a></li>
					<li><a href="#">Second Level Item</a></li>
					<li><a href="#">Second Level Item</a></li>
					<li><a class="nav-link-collapse collapsed"
						data-toggle="collapse" href="#collapseMulti2">Third Level</a>
						<ul class="sidenav-third-level collapse" id="collapseMulti2">
							<li><a href="#">Third Level Item</a></li>
							<li><a href="#">Third Level Item</a></li>
							<li><a href="#">Third Level Item</a></li>
						</ul></li>
				</ul></li>
		</ul>
		<ul class="navbar-nav sidenav-toggler">
			<li class="nav-item"><a class="nav-link text-center"
				id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
			</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item">
				<form class="form-inline my-2 my-lg-0 mr-lg-2">
					<div class="input-group">
						<input class="form-control" type="text"
							placeholder="Search for..."> 
							<span class="input-group-append">
							<button class="btn btn-primary" type="button"><i class="fa fa-search"></i>
							&nbsp;
							</button>
						</span>
					</div>
				</form>
			</li>	
			<li class="nav-item">
		   		  <s:authentication property="name"/>
         		 <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
            </li>
		</ul>
	</div>
</nav>

<!-- Logout Modal-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
					<s:authentication property="name" />
					로그아웃 하시겠습니까?
				</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">"Logout"버튼을 누르시거나 취소하시려면 "Cancel"하세요.</div>
			<div class="modal-footer">
				<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
				<a href="<c:url value="j_spring_security_logout"/>" target="_self">Logout</a>
			</div>
		</div>
	</div>
</div>


