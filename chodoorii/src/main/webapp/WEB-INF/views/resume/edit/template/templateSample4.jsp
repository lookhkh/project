
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="./templateHeaderForEdit.jsp"></jsp:include>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>

* {
	margin: 0;
}

ul {
	list-style-type: none;
	padding: 0px;
	margin: 0px;
	width: 40%;
	background: rgb(7, 107, 7);
	height: 100%;
	overflow: auto;
	position: fixed;
}

.cd1 {
	margin-left: 40%;
}

#INTRODUCTION_IMG_PATH {
	max-width: 500px;
	margin-left: 10px;
	display: block;
	margin: 0px auto;
	margin-top: 40%;
}

/* resumeTemBox1 */
#INTRODUCTION_HEADER {
	-webkit-flex: 1;
	flex: 1;
	margin-top: auto;
	margin-left: 100px;
	vertical-align: middle;
}

#INTRODUCTION_HEADER h1 {
	font-family: "Apple SD Gothic Neo", sans-serif;
	font-weight: 700;
	font-size: 64px;
	text-align: center;
}

#INTRODUCTION_MAIN p {
	font-family: "Apple SD Gothic Neo", sans-serif;
	font-weight: 400;
	font-size: 18px;
	line-height: 1.5;
	text-align: center;
}

#portfoliosite {
	text-decoration: none;
	font-weight: 600;
}

.name {
	padding-top: 5%;
	font-size: 30px;
	line-height: 1.5;
	font-style: italic;
	margin-bottom: 20px;
	text-align: center;
}

.name-job {
	display: inline-block;
	color: white;
	vertical-align: top;
	height: 1.5em;
	overflow: hidden;
	padding-right: 0.5em;
}

.name-job-list {
	animation-name: rolling;
	animation-duration: 3s;
	animation-iteration-count: infinite;
	animation-direction: reverse;
}

/* resumeTemBox2 */
.SKIL_SET {
	display: -webkit-flex;
	display: flex;
	margin-top: 150px;
}

.SKIL_SET_BOX {
	-webkit-flex: 1;
	flex: 1;
	text-align: center;
	-webkit-align-items: center;
	align-items: center;
	-webkit-justify-content: center;
	justify-content: center;
}

.SKIL_SET_BOX_img {
	max-width: 100px;
	display: inline;
}

/* resumeTemBox3 */
#resumeTemBox3 h1 {
	padding-top: 80px;
	font-family: "Apple SD Gothic Neo", sans-serif;
	font-weight: 700;
	font-size: 64px;
	line-height: 1.5;
	color: black;
	text-align: center;
}

#resumeTemBox3 h1 span {
	font-family: 'Palanquin Dark', sans-serif;
	font-weight: 400;
}

.tmicontainer {
	display: -webkit-flex;
	display: flex;
	margin-top: 80px;
}

.tmilist {
	-webkit-flex: 1;
	flex: 1;
	text-align: center;
	-webkit-align-items: center;
	align-items: center;
	-webkit-justify-content: center;
	justify-content: center;
}

.tmilist p {
	font-family: "Apple SD Gothic Neo", sans-serif;
	font-weight: 400;
	color: black;
	font-size: 25px;
	line-height: 5.5;
}

.tmilist p:hover {
	font-size: 0;
}

.tmilist p:hover::before {
	font-size: 25px;
	font-weight: bold;
}

.tmilist #tmi1:hover:before {
	content: "${user.name}"
}

}
.tmilist #tmi2:hover:before {
	content: '${user.contact_num}';
}

.tmilist #tmi3:hover:before {
	content: '${user.email}';
}

.tmilist #tmi4:hover:before {
	content: '${user.birth}';
}

.tmilist #tmi5:hover:before {
	content: '${user.city}';
}

/* resumeTemBox5 */
.PORTFOLIOTem {
	display: -webkit-flex;
}

.PORTFOLIO {
	-webkit-flex: 1;
	flex: 1;
	text-align: center;
	-webkit-align-items: center;
	align-items: center;
	-webkit-justify-content: center;
	justify-content: center;
	padding-top: 5%;
	text-align: center;
	padding-bottom: 5%;
}

.PORTFOLIO_FIRST_IMG {
	max-width: 300px;
	display: inline;
}

/* resumeTemBox6 */

    #resumeTemBox6 {
   	
      height: 100%;
          display : flex;
      justify-content: center;
            padding : 20px;
    }
   
.imglist {
	text-align: center;
}

.imglist img {
	width: 100px;
	padding: 50px;
}

.imglist a {
	text-decoration: none;
}
</style>
</head>
<body>
	<ul>
		<li><img id="INTRODUCTION_IMG_PATH"
			src="${resume.intro_dto.introduction_img_path}" alt=""></li>
	</ul>


	<div class="cd1">
		<!--ë©ì¸ 1íì´ì§-->
		<div id="resumeTemBox1">

			<div id="INTRODUCTION_HEADER">
				<h1>${resume.intro_dto.introduction_header}</h1>
			</div>
			<div id="INTRODUCTION_MAIN">
				<p>${resume.intro_dto.introduction_main}</p>

			</div>

		</div>
		</div>


		<div id="resumeTemBox2">

			<div class="SKIL_SET">
				<c:forEach var="i" items="${resume.skill_dto.makeSkillSetList()}">
					<div class="SKIL_SET_BOX">
						<img class="SKIL_SET_BOX_img" src="${i}" alt="">
					</div>
				</c:forEach>
			</div>
		</div>

		<!--ë©ì¸ 3íì´ì§-->
		<div id="resumeTemBox3">

			<div class="tmicontainer">
				<div class="tmilist">
					<p id="tmi1">이름</p>
					<p id="tmi2">전화번호</p>
					<p id="tmi3">메일</p>
					<p id="tmi4">생일</p>
					<p id="tmi5">거주지</p>
				</div>

			</div>
		</div>




		<!--ë©ì¸ 4íì´ì§-->
		<div id="resumeTemBox5">
			<div class="PORTFOLIOTem">
				<div class="PORTFOLIO">
					<c:if
						test="${!empty resume.portfolio_first_name&&resume.portfolio_first_name ne null}">
						<div class="PORTFOLIO">
							<a href="${resume.portfolio_first_github}" target=_blank> <img
								class="PORTFOLIO_FIRST_IMG" src="${resume.portfolio_first_img}"
								alt="" width="400px" height="300px">
							</a>
							<p>${resume.portfolio_first_name }</p>
							<p class="PORTFOLIO_FIRST_NAME">${resume.portfolio_first_desc}</p>
						</div>
					</c:if>
					<c:if
						test="${!empty resume.portfolio_second_name&&resume.portfolio_second_name ne null}">
						<div class="PORTFOLIO">
							<a href="${resume.portfolio_second_github}" target=_blank> <img
								class="PORTFOLIO_FIRST_IMG" src="${resume.portfolio_second_img}"
								alt="" width="400px" height="300px">
							</a>
							<p>${resume.portfolio_second_name }</p>
							<p class="PORTFOLIO_FIRST_NAME">${resume.portfolio_second_desc}</p>
						</div>
					</c:if>
					<c:if
						test="${!empty resume.portfolio_third_name&&resume.portfolio_third_name ne null}">
						<div class="PORTFOLIO">
							<a href="${resume.portfolio_third_github}" target=_blank><img
								class="PORTFOLIO_FIRST_IMG" src="${resume.portfolio_third_img}"
								alt="" width="400px" height="300px"> </a>
							<p>${resume.portfolio_third_name }</p>
							<p class="PORTFOLIO_FIRST_NAME">${resume.portfolio_third_desc}</p>
						</div>
					</c:if>
				</div>
			</div>
		</div>


  <div id="resumeTemBox6" style="position:relative">
             <c:if test="${fn:length(resume.sns_dto.blog_address)>1}"><img src="/publish/resume/img/블로그.png" alt="" onclick = "location.href='${resume.sns_dto.blog_address}'" width="90px" height = "90px"></c:if>
             <c:if test="${fn:length(resume.sns_dto.instagram_address)>1}"><img src="/publish/resume/img/insta.png" alt="" onclick = "location.href='${resume.sns_dto.instagram_address}'" width="90px" height = "90px"></c:if>
             <c:if test="${fn:length(resume.sns_dto.facebook_address)>1}"><img src="/publish/resume/img/페이스북.png" alt="" onclick = "location.href='${resume.sns_dto.facebook_address}'" width="90px" height = "90px"></c:if>
             <c:if test="${fn:length(resume.sns_dto.github_address)>1}"><img src="/publish/resume/img/깃허브.png" alt="" onclick = "location.href='${resume.sns_dto.github_address}'" width="90px" height = "90px"></c:if>
      </div> 
      
      
		<div data-input="${preview=='on'?'on':'none'}" class="action_btn"
			style="position: fixed; top: 0px; left: 50%; display: none;">
			<button class="btn btn-primary">등록하기</button>
			<button class="btn btn-primary">돌아가기</button>
		</div>
</body>
</html>