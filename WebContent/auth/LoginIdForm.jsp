<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>로그인 아이디입력</title>
   <style type="text/css">
		p{
        	font-size: 14px;        
		}
      
		#firstPtag{
      		font-size: 17px;
      		margin-top: 5px;
      		margin-bottom: 40px; 
		}
      
		#firstDiv{
			border-radius: 10px;
			border: 1px solid #E5E5E5;
			height: 416px;
			width: 370px; 
			padding: 48px 40px 36px;                                 
		}
      
		#firstDiv{
			margin: auto;
		}
      
		#lastDiv {
			display:flex;
			justify-content: center;        
		}
      
		html, body{
			margin-top: 80px;
		}                  
      
		h2, #firstPtag{
			text-align: center;
		}
            
		#firstAtag, #secondAtag, #thirdAtag{
			color: blue;
		}
      
		#firstAtag, #thirdAtag, #secondAtag, #Atag1, #Atag2, #Atag3{
			text-decoration-line: none; 
		}
      
		#Atag1, #Atag2, #Atag3{
			margin-right: 28px; 
		}
      
		#next{
			font-size: 15px;
			height: 40px;
			width: 80px;
			color: white;         
			float: right;
			border-radius: 5px;
			background-color: #1A73E8;
			border: none;
		}
      
		#idInput{
			border: 1px solid #E5E5E5;         
			width: 340px;
			height: 50px;
			font-size: 18px;
			padding-left: 20px;
			border-radius: 5px;
		}
            
		#idInput:focus{
			border-color: #0982f0;
			outline: none;
		}
      
		#googleDiv{
			font-size: 30px;
			display: flex;
		}
      
		#logo {
			width: 75px;
			height: 41px;
			padding-left: 145px;
		}
		
		#login{
			font-weight: 500;
			text-align: center;
			font-size: 25px;
			margin-top: 5px;
			margin-bottom: 1px;
		}	
      
		select{
			border: none;
			width: 200px;
		}
      
		#lastAtag{
      		margin-top: 1px;
		}
      
		#lastPtag{
      		margin-bottom: 1px;
		}
      
		#firstAtag{
      		margin-top: 1px;
		}
      
		#inputDiv{
      		margin-bottom: 1px;
		}
      
		#hide, #hide2{
      		margin-bottom: 1px;
		}
   
   </style>

   <script type="text/javascript">
      
   function nextFnc() {
      var myInput = document.getElementById('idInput');
      var hidePTag = document.createElement('hide');
      var hide2PTag = document.createElement('hide2');                  
      var myObj = document.getElementById('inputDiv');
         if (!myInput.value) {
            myInput.style.borderColor = 'red';               
            document.getElementById('hide').style.display = 'block';         
            document.getElementById('hide2').style.display = 'block';
            event.preventDefault();
         }   
                                 
   }   


   </script>
</head>

<body>
   
   <div id='totalDiv'>
   <div id= 'firstDiv'>
   <div id ='googleDiv'>
      <img id="logo" src="Logo.png">
   </div>
   <p id='login'>로그인</p>
   <p id='firstPtag'>Google 계정 사용</p>
   <form action="./loginId" method="post">
      <div id='inputDiv'>
               
      <input id='idInput' type="text" name="email" placeholder="이메일 또는 휴대전화" 
      	onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일 또는 휴대전화'"/>
      </div>
      
      <span id='hide' style="display:none; color: red;">
      <img id='hide2'src="./icon.png" style="display: none; float: left;">
     	 이메일이나 전화번호를 입력하세요</span>            
      <br>
      <a id='firstAtag' href="./FindEmailForm.jsp">이메일을 잊으셨나요?</a><br><br>            
      <p id= 'lastPtag'>내 컴퓨터가 아닌가요? 게스트 모드를 사용하여 비공개</p>   
      <a id='lastAtag'>로 로그인하세요.</a>
      <a id='secondAtag' href="">자세히 알아보기</a><br><br>
      <a id='thirdAtag' href="../member/add1">계정 만들기</a>      
      <input id='next' type="submit" value="다음" onclick="nextFnc();">
      
   </form>
   
   </div>
   <br>   
   <div id='lastDiv'>
      <select>
         <option>한국어</option>
      </select>
      <a id='Atag1' href="">도움말</a>
      <a id='Atag2' href="">개인정보방침  </a>
      <a id='Atag3' href="">약관</a>
   </div>   
   </div>
      
</body>
</html>