<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset=UTF-8">
<link rel="stylesheet"
	href="js/jquery.bxslider/jquery.bxslider.css">
<title>메인페이지</title>
<script src="js/jquery-2.1.3.min.js"></script>
<script src="js/jquery.bxslider/jquery.bxslider.min.js"></script>
<script>
$(document).ready(function(){
	//요소(Element)
	//alert('juery test!');
	$("h1").css("color","#f00");
	$("[name=test]").css("color","#f00"); //id. id는 중복불가.name은 중복가능
	$(".test").css("color","blue");  //클래스. 클래스 중복가능
    
	//method chain
	/* $("#test1").html("실패는 성공의 어머니") //html를 넣으면 이걸로 대체
			   .css({
				   "color" : "green",
		           "background-color" : "yellow",
		           "border" : "lpx solid #555"}); */
	
	var test = $("#test1").html();     //html 태그속성적용가능 test불가. 결과물은 똑같이 나옴
	alert(test);   //로그인하자마자 로그인웹페이지메시지 뜨게하기 
	
// 	var tr = $("#travel").val();
// 	var sp = $("#spot").val();
// 	alert(tr);
// 	alert(sp);
	
	//값설정    //값삭제는 val("") 하면됨.
	$("#travel").val("일본여행가이드");	
	$("#spot").val("제주도");
	
	
	//이벤트 핸들러
	$("#travel").blur(function(){   //포커스 이동시 메시지뜨게하는 이벤트
		alert("한국 방문 기념");
	});
	
	//포커스(블러의 반대)
	$("#travel").focus(function(){	
		alert("한국에오신것을환영해요!!!");
	});
	
	$("#spot").change(function(){
		alert($(this).val() + "로 가실건가요?");
	});
	
	//클릭이벤트
	$("#btn1").click(function(){
		alert("클릭하셨어요!!");
	});
	
	//더블클릭이벤트
	$("#btn2").dblclick(function(){
		alert("더블클릭하셨어요!!");
	});
	
	//후버
	$("#btn1").hover(
			function(){  //마우스를 위에 두었을때
				$("#desc").css("color", "#f00");
			},
			function(){  //마우스를 원상복귀 했을때
				$("#desc").css("color", "#000");				
	});

/* 	$("#main").slideDown(); //페이드인 효과
	$("#welcome").slideDown(5000); //천천히 (시간지정 : 밀리세컨)
	});  */
	
    
 	$("#student > p").each(function() {
   		alert($(this).text());
	})  
	
   	$(".bxSlider").bxSlider({
     		mode:'horizontal',
     		speed: 1000, //1초당 애니메이션이 이동
     		auto: true, //자동재생(true: on, false: off)     		
     		autoControls: true, //자동재생 콘트롤 표시(true: on, flase: off)
     		adaptiveHeight: true, //높이 자동 조정
     		captions: false //true: title속성 표시, flase: 비표시
  	}); 
});

	$(document).ready(function(){
		$("#searchBtn").click(function(){
			var nm = $("#name").val();
			$.ajax({
				type:"POST", //GET or POST
				url:"userSearch.json", //접속할 url
				data:{"name" : nm}, //파라미터\
				dataType:"json", //출력 데이터 타입
				success:function(data){
					//alert(data);
					
					//테이블로 표시
					//테이블 삭제
					$("#jsonOut > table").remove();
					var theTable = $("<table>"); //테이블 요소 작성
					//테이블에 제목행 추가
					theTable.append("<tr><td>이름</td><td>비번</td><td>아이디</td><td>이메일</td></tr>");
					for (i=0; i<data.length; i++){
						//테이블에 내용 추가
						theTable.append("<tr><td>" + data[i].name 
								+ "</td><td>" + data[i].password
								+ "</td><td>" + data[i].userid
								+ "</td><td>" + data[i].email + "</td></tr>");						
					}
					//이 테이블을 jsonOut에 붙인다.
					theTable.appendTo("#jsonOut");
				},
				error:function(xhr, testStatus, errorThrown)
				{
					//에러타입
					if(textStatus == "timeout"){
						alert("시간초과");
					}else{
					alert("textStatus:"+ textStatus);
					}
					
					//에러메시지
					//alert("errorThrown:"+ errorThrown);	
				}
			});
		});
	});
	
</script>
</head>
<body>
	<h1 id="main">Main Page입니다.</h1>
	<h2 id="welcome">
		<font color="blue"> ${sessionScope.user.userid }님 환영합니다. </font>
	</h2>
	<a href="./boardList.html">글목록보기</a>
	<a href="./insert.html">글작성하기</a>
	<a href="logout.html"><font color="red">로그아웃</font></a>
	
	
	<p>이름:<input type="text" id="name" /></p>
	<p><button id="searchBtn">검색</button></p>
	<p><span id="jsonOut">여기에 결과가 출력</span></p>
	
		<div class="Slider" style="width:600px">
      <ul class="bxSlider">
         <li><img src="images/1234.JPG" title="크러쉬"/></li>
         <li><img src="images/123.JPG" title="수빈"/></li>
         <li><img src="images/qq.jpg" title="수박바"/></li>
         <li><img src="images/02.gif" title="고아라"/></li>
      </ul>
   </div>	
	
	<p>
	<input type="text" id="travel" value="한국여행가이드" />
	<select id="spot">
		<option value="제주도">제주도</option>
		<option value="울릉동">울릉도</option>
		<option value="독도" selected>독도</option>
	</select>
	</p>

	<button id="btn1">클릭하세요!</button>
	<button id="btn2">더블클릭하세요!</button>

	<p id="desc">버튼에 마우스를 올리면 글씨 색깔이 변해요..</p>

	<div id="test1">구슬이 서말이라도 꿰어야 보배</div>
 	
	<div name="test">
		<p>난 포기를 모르는 남자지.</p>
		<p>난 포기를 모르는 남자지.</p>
		<p>난 포기를 모르는 남자지.</p>
		<p>난 포기를 모르는 남자지.</p>
	</div>
	<div name="test">
		<p>내 마음이 뭐가돼.</p>
		<p>내 마음이 뭐가돼.</p>
		<p>내 마음이 뭐가돼.</p>
		<p>내 마음이 뭐가돼.</p>
	</div>
	<div class="test">
		<p>이번엔 진짜라구요.</p>
		<p>이번엔 진짜라구요.</p>
		<p>이번엔 진짜라구요.</p>
		<p>이번엔 진짜라구요.</p>
	</div>
	<div name="love">
		<p>미술관 옆 동물원.</p>
		<p>미술관 옆 동물원.</p>
		<p>미술관 옆 동물원.</p>
		<p>미술관 옆 동물원.</p>
	</div>
	
	<div id="student">
      <p>한지민</p>
<!--       <p>채수빈</p> -->
<!--       <p>손예진</p> -->
<!--       <p>문채원</p> -->
<!--       <p>경수진</p> -->
   </div>
	  
   <p>2015. All right reserved</p>
	
</body>
</html>