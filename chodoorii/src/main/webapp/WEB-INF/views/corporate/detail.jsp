<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <link href="/publish/corporate/css/basic.css" rel="stylesheet">
    
<jsp:include page="../header/header.jsp"></jsp:include>

<body>



 <div class="Detail-info">
      <div class="Summary">
        <div class="content">
          <dl>
            <Strong>SK하이닉스</Strong>
          </dl>
          <dl>
            <dt>종업원 수</dt>
            <dd>5,244명</dd>
          </dl>
          <dl>
            <dt>복지</dt>
            <dd class="rest">
              <div>
              <img src="/publish/corporate/img/잠.jpg" alt="">
              <p>유연근무제</p>
              </div>
              <div>
              <img src="/publish/corporate/img/연차.jpg" alt="">
              <p>자유로운 연차사용</p>
            </div>
            <div>
              <img src="/publish/corporate/img/도서지원.png" alt="">
              <p>자기계발 비용지원</p>
            </div>
            </dd>
          </dl>
        </div>
          <div class="co-img">
            <img src="/publish/corporate/img/자연.jpg" alt="자연">
          </div>
        </div>
        <div class="SI">
          <div class="content">
          <dl>
            <dt>Summary</dt>
            <dd>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quaerat corporis magni, quod dicta libero eos totam illum aperiam. Quae, distinctio. Odit ducimus sit ipsa minima explicabo quia, dignissimos libero repudiandae!
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quaerat corporis magni, quod dicta libero eos totam illum aperiam. Quae, distinctio. Odit ducimus sit ipsa minima explicabo quia, dignissimos libero repudiandae!
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quaerat corporis magni, quod dicta libero eos totam illum aperiam. Quae, distinctio. Odit ducimus sit ipsa minima explicabo quia, dignissimos libero repudiandae!
              Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quaerat corporis magni, quod dicta libero eos totam illum aperiam. Quae, distinctio. Odit ducimus sit ipsa minima explicabo quia, dignissimos libero repudiandae!
            </dd>
          </dl>
          </div>
        </div>
        <div class="SI-btn">
        <c:choose>
         <c:when test="${userInfo.id eq null}">
   			 <div class="signupAndLogin">
            <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
                이력서보내기
             </button>        
          </div>    
          </c:when>
          <c:otherwise>
        <div class="signupAndLogin">
           <button type="button" onclick="resumesubmission()">이력서 보내기</button>
            </div>        
           </div> 
         </div>
    </c:otherwise>
</c:choose>  
		

     

 
<jsp:include page="../header/footer.jsp"></jsp:include>

 
</body>
</html>
<script>
	function resumesubmission(){
		alert("이력서보내기 성공");
	}
</script>