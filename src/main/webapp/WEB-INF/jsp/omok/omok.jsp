<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script type="text/javascript">

    var game = false;
    var cnt = 0;
    var num1 = 0;
    var num2 = 0;
    
    var arr = new Array(21);
    for(var i=0;i<21;i++){
   		 arr[i] = new Array(21);
     	}
   	for(var i=0;i<21;i++){
   		 for(var j=0;j<21;j++){
   			 arr[i][j] = 0;
   		 }
    }

	
   
    function pos(event) {

	   if(game){
		   return;
   		}

        
        var x = event.offsetX;
        var y = event.offsetY;
        var image = document.getElementById("red");
        var src;
        var left;
        var top;
        var picture;


       if(x >= 27 && y >= 30){
    	   for(var i=27;i<=552.6;i+=29.15){
           	for(var j=30;j<=555.6;j+=29.15){
           		if(x > i-7 && x<i+7 && y> j-7 && y< j+7){
           			cnt = cnt +1;
           			left = i-10;
           			top = j-10;

                   	if(cnt % 2 ==1){
                   		src = "../img/BlackStone.gif";
                   	}
                   	else{
                   		src = "../img/WhiteStone.gif";
                   	}
                   	picture = "<img src='" + src +"' style='position: absolute; top:" + top +"px; left:" + left +"px;'><br>"
                   	document.getElementById("a").innerHTML += picture;
                   	image.style.left = (left+208) +"px";
                   	image.style.top = (top+107) + "px";
                   	image.src = "../img/red.GIF";
                   	image.style.height = 8 + "px";
                   	image.style.width = 8 + "px";
                   	result(cnt, top, left);
                   	
           		}
           		else{
           			
           		}
           	}
           }
       } 
        

    }

   
    
    
 function result(cnt,top, left){
	 var arrtop = Math.floor((top - 20) / 29) +1;
	 var arrleft = Math.floor((left -17) / 29) +1;
	 
	 var image2 = document.getElementById("red2");
	 
	 //확인1
	
	  document.getElementById("1").innerHTML = arrleft +"," + arrtop;

	 
	 //검은돌  cnt =1 ,arr = 1
	 if(cnt % 2 ==1){
		 arr[arrleft][arrtop] = 1;

		
		
			 
			 //가로
			 //왼쪽으로 흑돌 4개
			 if(arr[arrleft -1][arrtop] ==1 && arr[arrleft -2][arrtop] ==1 && arr[arrleft -3][arrtop] ==1 && arr[arrleft -4][arrtop] ==1){
				 victoryb();
				 image2.style.left = (left+208-(29*4)) +"px";
                 image2.style.top = (top+107) + "px";
                 image2.src = "../img/red.GIF";
                 image2.style.height = 8 + "px";
                 image2.style.width = (29*4) + "px";
			 }
			 
			 //오른쪽으로 흑돌 4개
			 else if(arr[arrleft +1][arrtop] ==1 && arr[arrleft +2][arrtop] ==1 && arr[arrleft +3][arrtop] ==1 && arr[arrleft +4][arrtop] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 왼쪽에서 두번째
			 else if(arr[arrleft -1][arrtop] ==1 && arr[arrleft +1][arrtop] ==1 && arr[arrleft +2][arrtop] ==1 && arr[arrleft +3][arrtop] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 오른쪽에서 두번째
			 else if(arr[arrleft +1][arrtop] ==1 && arr[arrleft -1][arrtop] ==1 && arr[arrleft -2][arrtop] ==1 && arr[arrleft -3][arrtop] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 가운데
			 else if(arr[arrleft +1][arrtop] ==1 && arr[arrleft +2][arrtop] ==1 && arr[arrleft -1][arrtop] ==1 && arr[arrleft -2][arrtop] ==1){
				 victoryb();
			 }
			 
			 
			 
			 
			 //세로
			 //위로 흑돌 4개
			 else if(arr[arrleft][arrtop-1] ==1 && arr[arrleft][arrtop -2] ==1 && arr[arrleft][arrtop -3] ==1 && arr[arrleft][arrtop -4] ==1){
				 victoryb();
			 }
			 
			 //아래로 흑돌 4개
			 else if(arr[arrleft][arrtop +1] ==1 && arr[arrleft][arrtop +2] ==1 && arr[arrleft][arrtop +3] ==1 && arr[arrleft][arrtop +4] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 위에서 두번째
			 else if(arr[arrleft][arrtop -1] ==1 && arr[arrleft][arrtop +1] ==1 && arr[arrleft][arrtop +2] ==1 && arr[arrleft][arrtop +3] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 아래에서 두번째
			 else if(arr[arrleft][arrtop +1] ==1 && arr[arrleft][arrtop -1] ==1 && arr[arrleft][arrtop -2] ==1 && arr[arrleft][arrtop -3] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 가운데
			 else if(arr[arrleft][arrtop +1] ==1 && arr[arrleft][arrtop +2] ==1 && arr[arrleft][arrtop -1] ==1 && arr[arrleft][arrtop -2] ==1){
				 victoryb();
			 }
			 
			 
			 
			 
			 
			 //  /대각선
			 //위로 흑돌 4개
			 else if(arr[arrleft+1][arrtop-1] ==1 && arr[arrleft+2][arrtop -2] ==1 && arr[arrleft+3][arrtop -3] ==1 && arr[arrleft+4][arrtop -4] ==1){
				 victoryb();
			 }
			 
			 //아래로 흑돌 4개
			 else if(arr[arrleft-1][arrtop +1] ==1 && arr[arrleft-2][arrtop +2] ==1 && arr[arrleft-3][arrtop +3] ==1 && arr[arrleft-4][arrtop +4] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 위에서 두번째
			 else if(arr[arrleft+1][arrtop -1] ==1 && arr[arrleft-1][arrtop +1] ==1 && arr[arrleft-2][arrtop +2] ==1 && arr[arrleft-3][arrtop +3] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 아래에서 두번째
			 else if(arr[arrleft-1][arrtop +1] ==1 && arr[arrleft+1][arrtop -1] ==1 && arr[arrleft+2][arrtop -2] ==1 && arr[arrleft+3][arrtop -3] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 가운데
			 else if(arr[arrleft-1][arrtop +1] ==1 && arr[arrleft-2][arrtop +2] ==1 && arr[arrleft+1][arrtop -1] ==1 && arr[arrleft+2][arrtop -2] ==1){
				 victoryb();
			 }
			 
			 
			 
			 
			 
			 
			 //  \대각선
			 //위로 흑돌 4개
			 else if(arr[arrleft-1][arrtop-1] ==1 && arr[arrleft-2][arrtop -2] ==1 && arr[arrleft-3][arrtop -3] ==1 && arr[arrleft-4][arrtop -4] ==1){
				 victoryb();
			 }
			 
			 //아래로 흑돌 4개
			 else if(arr[arrleft+1][arrtop +1] ==1 && arr[arrleft+2][arrtop +2] ==1 && arr[arrleft+3][arrtop +3] ==1 && arr[arrleft+4][arrtop +4] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 위에서 두번째
			 else if(arr[arrleft-1][arrtop -1] ==1 && arr[arrleft+1][arrtop +1] ==1 && arr[arrleft+2][arrtop +2] ==1 && arr[arrleft+3][arrtop +3] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 아래에서 두번째
			 else if(arr[arrleft+1][arrtop +1] ==1 && arr[arrleft-1][arrtop -1] ==1 && arr[arrleft-2][arrtop -2] ==1 && arr[arrleft-3][arrtop -3] ==1){
				 victoryb();
			 }
			 
			 //둔 돌이 가운데
			 else if(arr[arrleft+1][arrtop +1] ==1 && arr[arrleft+2][arrtop +2] ==1 && arr[arrleft-1][arrtop -1] ==1 && arr[arrleft-2][arrtop -2] ==1){
				 victoryb();
			 }
		 }

	 
	 
	 
	 //흰돌  cnt = 0 ,arr = 2
	 else{
		 arr[arrleft][arrtop] = 2;
		 
		 
		//가로
		 //왼쪽으로 흰돌 4개
		 if(arr[arrleft -1][arrtop] ==2 && arr[arrleft -2][arrtop] ==2 && arr[arrleft -3][arrtop] ==2 && arr[arrleft -4][arrtop] ==2){
			 victoryh();
		 }
		 
		 //오른쪽으로 흰돌 4개
		 else if(arr[arrleft +1][arrtop] ==2 && arr[arrleft +2][arrtop] ==2 && arr[arrleft +3][arrtop] ==2 && arr[arrleft +4][arrtop] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 왼쪽에서 두번째
		 else if(arr[arrleft -1][arrtop] ==2 && arr[arrleft +1][arrtop] ==2 && arr[arrleft +2][arrtop] ==2 && arr[arrleft +3][arrtop] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 오른쪽에서 두번째
		 else if(arr[arrleft +1][arrtop] ==2 && arr[arrleft -1][arrtop] ==2 && arr[arrleft -2][arrtop] ==2 && arr[arrleft -3][arrtop] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 가운데
		 else if(arr[arrleft +1][arrtop] ==2 && arr[arrleft +2][arrtop] ==2 && arr[arrleft -1][arrtop] ==2 && arr[arrleft -2][arrtop] ==2){
			 victoryh();
		 }
		 
		 
		 
		 
		 //세로
		 //위로 흰돌 4개
		 else if(arr[arrleft][arrtop-1] ==2 && arr[arrleft][arrtop -2] ==2 && arr[arrleft][arrtop -3] ==2 && arr[arrleft][arrtop -4] ==2){
			 victoryh();
		 }
		 
		 //아래로 흰돌 4개
		 else if(arr[arrleft][arrtop +1] ==2 && arr[arrleft][arrtop +2] ==2 && arr[arrleft][arrtop +3] ==2 && arr[arrleft][arrtop +4] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 위에서 두번째
		 else if(arr[arrleft][arrtop -1] ==2 && arr[arrleft][arrtop +1] ==2 && arr[arrleft][arrtop +2] ==2 && arr[arrleft][arrtop +3] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 아래에서 두번째
		 else if(arr[arrleft][arrtop +1] ==2 && arr[arrleft][arrtop -1] ==2 && arr[arrleft][arrtop -2] ==2 && arr[arrleft][arrtop -3] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 가운데
		 else if(arr[arrleft][arrtop +1] ==2 && arr[arrleft][arrtop +2] ==2 && arr[arrleft][arrtop -1] ==2 && arr[arrleft][arrtop -2] ==2){
			 victoryh();
		 }
		 
		 
		 
		 
		 
		 //  /대각선
		 //위로 흰돌 4개
		 else if(arr[arrleft+1][arrtop-1] ==2 && arr[arrleft+2][arrtop -2] ==2 && arr[arrleft+3][arrtop -3] ==2 && arr[arrleft+4][arrtop -4] ==2){
			 victoryh();
		 }
		 
		 //아래로 흰돌 4개
		 else if(arr[arrleft-1][arrtop +1] ==2 && arr[arrleft-2][arrtop +2] ==2 && arr[arrleft-3][arrtop +3] ==2 && arr[arrleft-4][arrtop +4] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 위에서 두번째
		 else if(arr[arrleft+1][arrtop -1] ==2 && arr[arrleft-1][arrtop +1] ==2 && arr[arrleft-2][arrtop +2] ==2 && arr[arrleft-3][arrtop +3] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 아래에서 두번째
		 else if(arr[arrleft-1][arrtop +1] ==2 && arr[arrleft+1][arrtop -1] ==2 && arr[arrleft+2][arrtop -2] ==2 && arr[arrleft+3][arrtop -3] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 가운데
		 else if(arr[arrleft-1][arrtop +1] ==2 && arr[arrleft-2][arrtop +2] ==2 && arr[arrleft+1][arrtop -1] ==2 && arr[arrleft+2][arrtop -2] ==2){
			 victoryh();
		 }
		 
		 
		 
		 
		 
		 
		 //  \대각선
		 //위로 흰돌 4개
		 else if(arr[arrleft-1][arrtop-1] ==2 && arr[arrleft-2][arrtop -2] ==2 && arr[arrleft-3][arrtop -3] ==2 && arr[arrleft-4][arrtop -4] ==2){
			 victoryh();
		 }
		 
		 //아래로 흰돌 4개
		 else if(arr[arrleft+1][arrtop +1] ==2 && arr[arrleft+2][arrtop +2] ==2 && arr[arrleft+3][arrtop +3] ==2 && arr[arrleft+4][arrtop +4] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 위에서 두번째
		 else if(arr[arrleft-1][arrtop -1] ==2 && arr[arrleft+1][arrtop +1] ==2 && arr[arrleft+2][arrtop +2] ==2 && arr[arrleft+3][arrtop +3] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 아래에서 두번째
		 else if(arr[arrleft+1][arrtop +1] ==2 && arr[arrleft-1][arrtop -1] ==2 && arr[arrleft-2][arrtop -2] ==2 && arr[arrleft-3][arrtop -3] ==2){
			 victoryh();
		 }
		 
		 //둔 돌이 가운데
		 else if(arr[arrleft+1][arrtop +1] ==2 && arr[arrleft+2][arrtop +2] ==2 && arr[arrleft-1][arrtop -1] ==2 && arr[arrleft-2][arrtop -2] ==2){
			 victoryh();
		 }
		 
	 }
	 
	 
	 
 }    	
 
 //흑돌 승리
 function victoryb(){
	 alert("흑돌 승리");
	 game =	true;
 }
 
 //백돌 승리
 function victoryh(){
	 alert("백돌 승리");
	 game =	true;
 }

</script>
<style type="text/css">
#main {background:url("../img/badook_board.jpg") no-repeat;}
body {background-color: #5AAEFF; }
</style>
</head>
<body>
 <div id=main onclick="pos(event);" style=" position:absolute; top:100px; left:200px;
                width:580px; height:580px; border:1px solid;">
                <div id="a"></div>
 </div>
    <div id="1"></div>
    
<img id="red" src="" style= "position: absolute;">
<img id="red2" src="" style= "position: absolute;">
</body>
</html>