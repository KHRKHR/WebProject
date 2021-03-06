<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
	<style>
	    #content{
            width: 100%;
            /* border: 1px solid black; */
            /* box-sizing: border-box; */
        }
        #container{
            width: 1000px;
            margin: 0 auto;
            margin-top: 30px;
            margin-bottom: 200px;
            /* border: 1px solid black; */
            /* box-sizing: border-box; */
        }
		#myqain {
            margin-top: 50px;
        }
        #intro {
            
            display: flex;
            text-align: center;
            vertical-align: middle;
        }
        #intro > div:nth-child(1) {
            width:15%;
        }
        #intro > div:nth-child(2) {
            width:15%;
            
        }
        #intro > div:nth-child(3) {
            display: flex;
            width: 70%;
            justify-content: flex-end;
        }
        #intro p {
            height: 50px;
        }
        #intro > div:nth-child(1) p {
            font-size: 20px;
            color: grey;
            height: 30px;
            line-height: 30px;
        }
        #intro > div:nth-child(2) p {
            border: 1px solid tomato;
            color: tomato;
            border-radius: 10px;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
            width: 120px;
            cursor: pointer;
            
        }
        #intro > div:nth-child(3) p {
            border: 1px solid #ccc;
            border-radius: 10px;
            line-height: 15px;
            width: 10%;
            height: 30px;
            font-size: 10px;
        }
        #category {
            margin-top: 100px;
            display: flex;
        }
        #category > div {
            box-sizing: border-box;
            border-bottom: 1px solid tomato;
            width: 20%;
            text-align: center;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
            cursor: pointer;
        }
        #category > div:nth-child(3) {
            border: 1px solid tomato;
            border-bottom: 0;
        }
        #myqainfo > p:nth-child(1) {
            font-size: 20px;
            text-align: center;
            margin-top: 100px;
        }
        #myqainfo > p:nth-child(2), #myqainfo > p:nth-child(3){
            font-size: 13px;
            text-align: center;
            margin-top: 30px;
            color: grey;
        }
        .line {
            margin-top: 50px;
            border-bottom: 1px solid #ccc;
        }
        #myqainfo small {
            color: cornflowerblue;
        }
        #qatxt {
            margin-top: 50px;
            border: 1px solid rgb(233, 233, 233);;
            height: 550px;
            margin-bottom: 100px;
            border-radius: 5px;
            background-color: rgb(233, 233, 233);
            
        }
        #qatxt > textarea:nth-child(1){
            width: 800px;
            margin: 85px;
            height: 40px;
            margin-top: 50px;
            margin-bottom: 60px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-family: 'InfinitySans-RegularA1';
        }
        #qatxt > textarea:nth-child(2){
            width: 800px;
            height: 250px;
            margin-left: 85px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-family: 'InfinitySans-RegularA1';
        }
        input {
            width:200px;
            margin: 30px 0px;
            margin-left: 200px;
            height: 50px;
            font-size: 15px;
            background-color: white;
            color: tomato;
            border: 1px solid tomato;
            border-radius: 5px;
            font-family: 'InfinitySans-RegularA1';
            cursor: pointer;
        }
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<!-- location -->
    <div id="inc-location">
        <div>????????????</div>
        <div>
           	???????????????
            <i class="fas fa-angle-right"></i>
            My ??????
            <i class="fas fa-angle-right"></i>
            ????????????
        </div>
    </div>
    
    <!-- content  -->
    <div id="content">
        <div id="container">
			 <div id="myqain">

                <div id="intro">
                    <div><p>${id}</p></div>
                    <div><p onclick="location.href='/team3/mypage/myinfocheck.do'">???????????? ??????</p></div>
                    <div><p>?????????<br>${mileage}</p></div>
                </div>
            
                <div id="category">
                    <div></div>
                    <div></div>
                    <div>????????????</div>
                    <div></div>
                    <div></div>
                </div>

                <div id="myqainfo">
                    <p>?????? ???????????? ????????? ?????? <small>?????????</small>?????????.</p>
                    <p>???????????? ??????????????? ????????? ?????????????????? ????????? ?????? ???????????????.</p>
                    <p>???????????? ????????? ???????????? ??? ??? ??? ????????? ??????????????????????????? ???????????????.</p>
                </div>   
                
                <div class="line"></div>

                <form action="">
                    <div id="qatxt">
                        <textarea name="qatitle" placeholder="* ????????? ??????????????????."></textarea>
                        <textarea name="qacontent" placeholder="* ????????? ??????????????????.&#13;&#10;* ???????????? ?????? ????????? ?????? ????????? ?????? ??? ????????????. ??????????????? ?????? ???????????? [???????????????]??? ??????????????????.&#13;&#10;* ??????????????? ???????????? ????????????(???????????? ???)??? ???????????? ????????? ??????????????????."></textarea>
                        <input type="button" value="????????????" onclick="location.href='/team3/mypage/myqamanage.do';">
                        <input type="submit" value="????????????">
                    </div>
                </form>

            </div>
	    </div>
    </div>
    
    <!-- footer -->
    <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
    <script>
    
    </script>
</body>
</html>