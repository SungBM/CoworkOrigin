<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
		
        <meta charset="utf-8" />
        <jsp:include page="../main/header.jsp"/>
        <title>Chat</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/assets/images/favicon.ico">

        <!-- Bootstrap Css -->
    <link href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="${pageContext.request.contextPath }/resources/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="${pageContext.request.contextPath }/resources/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath }/resources/assets/js/member/jquery-3.6.3.js"></script>
	<style>
	h5{font-weight:bold}
	</style>
    </head>

  <!-- <body data-sidebar="dark" data-layout-mode="light"> -->   
	
    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

            

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->

            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">Chat</h4>



                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="d-lg-flex">
                            <div class="chat-leftsidebar me-lg-4">
                                <div class="">
                                    <div class="py-4 border-bottom">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 align-self-center me-3">
                                                <img src="assets/images/users/avatar-1.jpg" class="avatar-xs rounded-circle" alt="">
                                            </div>
                                            <div class="flex-grow-1">
                                                <h5 class="font-size-15 mb-1">${u.user_name }</h5>
                                                <p class="text-muted mb-0"><i class="mdi mdi-circle text-success align-middle me-1"></i> Active</p>
                                            </div>

                                            <div>
                                                <div class="dropdown chat-noti-dropdown active">
                                                    <button class="btn" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="bx bx-bell bx-tada"></i>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-end">
                                                      <a class="dropdown-item" href="#">Action</a>
                                                      <a class="dropdown-item" href="#">Another action</a>
                                                      <a class="dropdown-item" href="#">Something else here</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="search-box chat-search-box py-4">
                                        <div class="position-relative">
                                            <input type="text" class="form-control" placeholder="Search...">
                                            <i class="bx bx-search-alt search-icon"></i>
                                        </div>
                                    </div>

                                    <div class="chat-leftsidebar-nav">
                                        <ul class="nav nav-pills nav-justified">
                                            <li class="nav-item">
                                                <a href="#chat" data-bs-toggle="tab" aria-expanded="true" class="nav-link active">
                                                    <i class="bx bx-chat font-size-20 d-sm-none"></i>
                                                    <span class="d-none d-sm-block">멤버</span>
                                                </a>
                                            </li>
                                           
                                        </ul>
                                        <div class="tab-content py-4">
                                            <div class="tab-pane show active" id="chat">
                                                <div>
                                                    <ul class="list-unstyled chat-list" data-simplebar style="max-height: 410px;">
	                                                        <li class="active">
			                                                    <c:forEach var = "m" items="${userlist }">
	                                                            <a href="javascript: void(0);">
	                                                                <div class="d-flex">
	                                                                    <div class="flex-shrink-0 align-self-center me-3">
	                                                                        <i class="mdi mdi-circle font-size-10"></i>
	                                                                    </div>
	                                                                    <div class="flex-shrink-0 align-self-center me-3">
	                                                                        <img src="assets/images/users/avatar-2.jpg" class="rounded-circle avatar-xs" alt="">
	                                                                    </div>
	                                                                    
	                                                                    <div class="flex-grow-1 overflow-hidden">
	                                                                    
	                                                                        <h5 class="text-truncate font-size-14 mb-1">${m.USER_NAME }</h5>
	                                                                        <p class="text-truncate mb-0">Hey! there I'm available</p>
	                                                                    <div class="font-size-11">05 min</div>
	                                                                	</div>
	                                                                </div>
	                                                            </a>
			 													</c:forEach>
	                                                        </li>
                                                        <li>
	                                                 <c:forEach var = "m" items="${userinfoservice }">   <!-- 컨트롤러에서 U로 담은애 적기 -->
                                                            <a href="javascript: void(0);">
                                                                <div class="d-flex">
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <i class="mdi mdi-circle text-success font-size-10"></i>
                                                                    </div>
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <img src="assets/images/users/avatar-3.jpg" class="rounded-circle avatar-xs" alt="">
                                                                    </div>

                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-1">${u.USER_NAME }, ${u.USER_DEPT }</h5>
                                                                        <p class="text-truncate mb-0">tjdqls@hta.com</p>
                                                                    </div>
                                                                    <div class="font-size-11">12 min</div>
                                                                </div>
                                                            </a>
                                                     </c:forEach>
                                                        </li>

                                                        <li>
                                                            <a href="javascript: void(0);">
                                                                <div class="d-flex">
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <i class="mdi mdi-circle text-success font-size-10"></i>
                                                                    </div>
                                                                    <div class="avatar-xs align-self-center me-3">
                                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                            K
                                                                        </span>
                                                                    </div>
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-1">안덕균</h5>
                                                                        <p class="text-truncate mb-0">ejrrbs@naver.com</p>
                                                                    </div>
                                                                    <div class="font-size-11">24 min</div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="javascript: void(0);">
                                                                <div class="d-flex">
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <i class="mdi mdi-circle text-warning font-size-10"></i>
                                                                    </div>
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <img src="assets/images/users/avatar-4.jpg" class="rounded-circle avatar-xs" alt="">
                                                                    </div>
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-1">유용천</h5>
                                                                        <p class="text-truncate mb-0">dydcjs@gmail.com</p>
                                                                    </div>
                                                                    <div class="font-size-11">1 hr</div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="javascript: void(0);">
                                                                <div class="d-flex">
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <i class="mdi mdi-circle font-size-10"></i>
                                                                    </div>

                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <div class="avatar-xs">
                                                                            <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                                M
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-1">이다빈</h5>
                                                                        <p class="text-truncate mb-0">dabin2507@hanmail.net</p>
                                                                    </div>
                                                                    <div class="font-size-11">3 hrs</div>
                                                                </div>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="javascript: void(0);">
                                                                <div class="d-flex">
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <i class="mdi mdi-circle text-success font-size-10"></i>
                                                                    </div>
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <img src="assets/images/users/avatar-6.jpg" class="rounded-circle avatar-xs" alt="">
                                                                    </div>
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-1">최자영</h5>
                                                                        <p class="text-truncate mb-0">wkdud123@naver.com</p>
                                                                    </div>
                                                                    <div class="font-size-11">5hrs</div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript: void(0);">
                                                                <div class="d-flex">
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <i class="mdi mdi-circle text-success font-size-10"></i>
                                                                    </div>
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <div class="avatar-xs">
                                                                            <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                                K
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-1">Adam</h5>
                                                                        <p class="text-truncate mb-0">adam123@gmail.com</p>
                                                                    </div>
                                                                    <div class="font-size-11">24 min</div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        
                                                        
                                                        <li>
                                                            <a href="javascript: void(0);">
                                                                <div class="d-flex">
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <i class="mdi mdi-circle text-success font-size-10"></i>
                                                                    </div>
                                                                    <div class="flex-shrink-0 align-self-center me-3">
                                                                        <div class="avatar-xs">
                                                                            <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                                K
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <div class="flex-grow-1 overflow-hidden">
                                                                        <h5 class="text-truncate font-size-14 mb-1">Scott</h5>
                                                                        <p class="text-truncate mb-0">imscott@gmail.com</p>
                                                                    </div>
                                                                    <div class="font-size-11">24 min</div>
                                                                </div>
                                                            </a>
                                                        </li>
                                                        
                                                        
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="tab-pane" id="groups">
                                                <h5 class="font-size-14 mb-3">Groups</h5>
                                                <ul class="list-unstyled chat-list" data-simplebar style="max-height: 410px;">
                                                    <li>
                                                        <a href="javascript: void(0);">
                                                            <div class="d-flex align-items-center">
                                                                <div class="flex-shrink-0 me-3">
                                                                    <div class="avatar-xs">
                                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                            G
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="flex-grow-1">
                                                                    <h5 class="font-size-14 mb-0">General</h5>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="javascript: void(0);">
                                                            <div class="d-flex align-items-center">
                                                                <div class="flex-shrink-0 me-3">
                                                                    <div class="avatar-xs">
                                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                            R
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="flex-grow-1">
                                                                    <h5 class="font-size-14 mb-0">Reporting</h5>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="javascript: void(0);">
                                                            <div class="d-flex align-items-center">
                                                                <div class="flex-shrink-0 me-3">
                                                                    <div class="avatar-xs">
                                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                            M
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="flex-grow-1">
                                                                    <h5 class="font-size-14 mb-0">Meeting</h5>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="javascript: void(0);">
                                                            <div class="d-flex align-items-center">
                                                                <div class="flex-shrink-0 me-3">
                                                                    <div class="avatar-xs">
                                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                            A
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="flex-grow-1">
                                                                    <h5 class="font-size-14 mb-0">Project A</h5>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="javascript: void(0);">
                                                            <div class="d-flex align-items-center">
                                                                <div class="flex-shrink-0 me-3">
                                                                    <div class="avatar-xs">
                                                                        <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                            B
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="flex-grow-1">
                                                                    <h5 class="font-size-14 mb-0">Project B</h5>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="tab-pane" id="contacts">
                                                <h5 class="font-size-14 mb-3">Contacts</h5>

                                                <div  data-simplebar style="max-height: 410px;">
                                                    <div>
                                                        <div class="avatar-xs mb-3">
                                                            <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                A
                                                            </span>
                                                        </div>
    
                                                        <ul class="list-unstyled chat-list">
                                                            <li>
                                                                <a href="javascript: void(0);">
                                                                    <h5 class="font-size-14 mb-0">Adam Miller</h5>
                                                                </a>
                                                            </li>
        
                                                            <li>
                                                                <a href="javascript: void(0);">
                                                                    <h5 class="font-size-14 mb-0">Alfonso Fisher</h5>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    <div class="mt-4">
                                                        <div class="avatar-xs mb-3">
                                                            <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                B
                                                            </span>
                                                        </div>
    
                                                        <ul class="list-unstyled chat-list">
                                                            <li>
                                                                <a href="javascript: void(0);">
                                                                    <h5 class="font-size-14 mb-0">Bonnie Harney</h5>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    <div class="mt-4">
                                                        <div class="avatar-xs mb-3">
                                                            <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                C
                                                            </span>
                                                        </div>
    
                                                        <ul class="list-unstyled chat-list">
                                                            <li>
                                                                <a href="javascript: void(0);">
                                                                    <h5 class="font-size-14 mb-0">Charles Brown</h5>
                                                                </a>
                                                                <a href="javascript: void(0);">
                                                                    <h5 class="font-size-14 mb-0">Carmella Jones</h5>
                                                                </a>
                                                                <a href="javascript: void(0);">
                                                                    <h5 class="font-size-14 mb-0">Carrie Williams</h5>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    <div class="mt-4">
                                                        <div class="avatar-xs mb-3">
                                                            <span class="avatar-title rounded-circle bg-primary bg-soft text-primary">
                                                                D
                                                            </span>
                                                        </div>
    
                                                        <ul class="list-unstyled chat-list">
                                                            <li>
                                                                <a href="javascript: void(0);">
                                                                    <h5 class="font-size-14 mb-0">Dolores Minter</h5>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                            <div class="w-100 user-chat">
                                <div class="card">
                                    <div class="p-4 border-bottom ">
                                        <div class="row">
                                            <div class="col-md-4 col-9">
                                                <h5 class="font-size-15 mb-1">채팅</h5>
                                            </div>
                                            <div class="col-md-8 col-3">
                                                <ul class="list-inline user-chat-nav text-end mb-0">
                                                    <li class="list-inline-item d-none d-sm-inline-block">
                                                        <div class="dropdown">
                                                            <button class="btn nav-btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="bx bx-search-alt-2"></i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end dropdown-menu-md">
                                                                <form class="p-3">
                                                                    <div class="form-group m-0">
                                                                        <div class="input-group">
                                                                            <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                                                                            
                                                                            <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="list-inline-item  d-none d-sm-inline-block">
                                                        <div class="dropdown">
                                                            <button class="btn nav-btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="bx bx-cog"></i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <a class="dropdown-item" href="#">View Profile</a>
                                                                <a class="dropdown-item" href="#">Clear chat</a>
                                                                <a class="dropdown-item" href="#">Muted</a>
                                                                <a class="dropdown-item" href="#">Delete</a>
                                                            </div>
                                                        </div>
                                                    </li>
    
                                                    <li class="list-inline-item">
                                                        <div class="dropdown">
                                                            <button class="btn nav-btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="bx bx-dots-horizontal-rounded"></i>
                                                            </button>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <a class="dropdown-item" href="#">Action</a>
                                                                <a class="dropdown-item" href="#">Another action</a>
                                                                <a class="dropdown-item" href="#">Something else</a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
    
                  <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table align-middle table-nowrap table-hover">
                                                <thead class="table-light">
                                                    
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="avatar-xs">
                                                                <span class="avatar-title rounded-circle">
                                                                    M
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-size-15 mb-1"><a href="javascript: void(0);" class="text-dark">문성빈</a></h5>
                                                            <p class="text-muted mb-0">총괄팀장</p>
                                                        </td>
                                                        <td>파이널 최종 점검 날짜 확인해주세요~</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div>
                                                                <img class="rounded-circle avatar-xs" src="assets/images/users/avatar-2.jpg" alt="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-size-15 mb-1"><a href="javascript: void(0);" class="text-dark">안덕균</a></h5>
                                                            <p class="text-muted mb-0">개발팀</p>
                                                        </td>
                                                        <td>마이페이지 정보 업데이트 해주세요!</td>
                                                       
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div>
                                                                <img class="rounded-circle avatar-xs" src="assets/images/users/avatar-3.jpg" alt="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">Rafael Morales</a></h5>
                                                            <p class="text-muted mb-0">Backend Developer</p>
                                                        </td>
                                                        <td>Rafael@skote.com</td>
                                                        <td>
                                                            <div>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Php</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Java</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Python</a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            112
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline font-size-20 contact-links mb-0">
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Message"><i class="bx bx-message-square-dots"></i></a>
                                                                </li>
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Profile"><i class="bx bx-user-circle"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="avatar-xs">
                                                                <span class="avatar-title rounded-circle">
                                                                    M
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">Mark Ellison</a></h5>
                                                            <p class="text-muted mb-0">Full Stack Developer</p>
                                                        </td>
                                                        <td>mark@skote.com</td>
                                                        <td>
                                                            <div>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Ruby</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Php</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">2 + more</a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            121
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline font-size-20 contact-links mb-0">
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Message"><i class="bx bx-message-square-dots"></i></a>
                                                                </li>
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Profile"><i class="bx bx-user-circle"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div>
                                                                <img class="rounded-circle avatar-xs" src="assets/images/users/avatar-4.jpg" alt="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">Minnie Walter</a></h5>
                                                            <p class="text-muted mb-0">Frontend Developer</p>
                                                        </td>
                                                        <td>minnie@skote.com</td>
                                                        <td>
                                                            <div>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Html</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Css</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">2 + more</a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            145
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline font-size-20 contact-links mb-0">
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Message"><i class="bx bx-message-square-dots"></i></a>
                                                                </li>
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Profile"><i class="bx bx-user-circle"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div>
                                                                <img class="rounded-circle avatar-xs" src="assets/images/users/avatar-5.jpg" alt="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">Shirley Smith</a></h5>
                                                            <p class="text-muted mb-0">UI/UX Designer</p>
                                                        </td>
                                                        <td>shirley@skote.com</td>
                                                        <td>
                                                            <div>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Photoshop</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">illustrator</a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            136
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline font-size-20 contact-links mb-0">
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Message"><i class="bx bx-message-square-dots"></i></a>
                                                                </li>
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Profile"><i class="bx bx-user-circle"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="avatar-xs">
                                                                <span class="avatar-title rounded-circle">
                                                                    J
                                                                </span>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">John Santiago</a></h5>
                                                            <p class="text-muted mb-0">Full Stack Developer</p>
                                                        </td>
                                                        <td>john@skote.com</td>
                                                        <td>
                                                            <div>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Ruby</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Php</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">2 + more</a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            125
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline font-size-20 contact-links mb-0">
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Message"><i class="bx bx-message-square-dots"></i></a>
                                                                </li>
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Profile"><i class="bx bx-user-circle"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div>
                                                                <img class="rounded-circle avatar-xs" src="assets/images/users/avatar-5.jpg" alt="">
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-size-14 mb-1"><a href="javascript: void(0);" class="text-dark">Colin Melton</a></h5>
                                                            <p class="text-muted mb-0">Backend Developer</p>
                                                        </td>
                                                        <td>colin@skote.com</td>
                                                        <td>
                                                            <div>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Php</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Java</a>
                                                                <a href="javascript: void(0);" class="badge badge-soft-primary font-size-11 m-1">Python</a>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            136
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline font-size-20 contact-links mb-0">
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Message"><i class="bx bx-message-square-dots"></i></a>
                                                                </li>
                                                                <li class="list-inline-item px-2">
                                                                    <a href="javascript: void(0);" title="Profile"><i class="bx bx-user-circle"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- container-fluid -->
                </div>

                                </div>
                            </div>

                        </div>
                        <!-- end row -->
                        
                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © Skote.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Themesbrand
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div data-simplebar class="h-100">
                <div class="rightbar-title d-flex align-items-center px-3 py-4">
            
                    <h5 class="m-0 me-2">Settings</h5>

                    <a href="javascript:void(0);" class="right-bar-toggle ms-auto">
                        <i class="mdi mdi-close noti-icon"></i>
                    </a>
                </div>

                <!-- Settings -->
                <hr class="mt-0" />
                <h6 class="text-center mb-0">Choose Layouts</h6>

                <div class="p-4">
                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-1.jpg" class="img-thumbnail" alt="layout images">
                    </div>

                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input theme-choice" type="checkbox" id="light-mode-switch" checked>
                        <label class="form-check-label" for="light-mode-switch">Light Mode</label>
                    </div>
    
                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-2.jpg" class="img-thumbnail" alt="layout images">
                    </div>
                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input theme-choice" type="checkbox" id="dark-mode-switch">
                        <label class="form-check-label" for="dark-mode-switch">Dark Mode</label>
                    </div>
    
                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-3.jpg" class="img-thumbnail" alt="layout images">
                    </div>
                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input theme-choice" type="checkbox" id="rtl-mode-switch">
                        <label class="form-check-label" for="rtl-mode-switch">RTL Mode</label>
                    </div>

                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-4.jpg" class="img-thumbnail" alt="layout images">
                    </div>
                    <div class="form-check form-switch mb-5">
                        <input class="form-check-input theme-choice" type="checkbox" id="dark-rtl-mode-switch">
                        <label class="form-check-label" for="dark-rtl-mode-switch">Dark RTL Mode</label>
                    </div>

            
                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- JAVASCRIPT -->
        <script src="${pageContext.request.contextPath }/resources/assets/libs/jquery/jquery.min.js"></script>
  	 	<script src="${pageContext.request.contextPath }/resources/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
   		<script src="${pageContext.request.contextPath }/resources/assets/libs/metismenu/metisMenu.min.js"></script>
  		<script src="${pageContext.request.contextPath }/resources/assets/libs/simplebar/simplebar.min.js"></script>
  		<script src="${pageContext.request.contextPath }/resources/assets/libs/node-waves/waves.min.js"></script>
		<!-- owl.carousel js -->
   		 <script src="${pageContext.request.contextPath }/resources/assets/libs/owl.carousel/owl.carousel.min.js"></script>
   		 <!-- auth-2-carousel init -->
    	<script src="${pageContext.request.contextPath }/resources/assets/js/pages/auth-2-carousel.init.js"></script>
        <script src="${pageContext.request.contextPath }/resources/assets/js/app.js"></script>

    </body>
</html>