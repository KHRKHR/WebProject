<p align="center">  
<h1 align="middle">:muscle:  웹 프로젝트 - 득근 득근 다이어리  :muscle:</h1>
<p align="center">
<img src="https://user-images.githubusercontent.com/97592294/153472155-110da3bf-feac-49b1-81f3-ec7c5b8218e2.png" width="800" />
</p>


</p>
<br>
<p align="middle">HTML · CSS · JavaScript 로 완성한</p>
<p align="center">식단과 운동 관련 복합 쇼핑몰,</p>
<h3 align="center"><b>득근득근 다이어리</b>입니다! </h3>

<br><br><br><br><br><br>

<h2 align="middle"> 🙋‍♀️ 득근득근을 만든 사람들 🙋‍♂️</h2>
<p align="center">
  
| [혜림](https://github.com/KHRKHR)  |  [연중](https://github.com/KYJKY)  |   [민종](https://github.com/)   |  [규상](https://github.com/)  | [윤섭](https://github.com/lh0156)   |
| :----------------------------------------------------------: |:----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | 
| <img src="https://user-images.githubusercontent.com/43840561/129164013-2a88c2e7-1a93-4cc7-bbd8-c5818f5152c7.png"/> | <img src="https://user-images.githubusercontent.com/44080404/133540314-639cc580-1aa5-4bf4-8d54-b435bfe5e5f8.png" /> |  <img src="https://user-images.githubusercontent.com/44080404/133540317-20da5664-aa3d-4afb-809b-a7d4780a5a17.png" />| <img src="https://user-images.githubusercontent.com/44080404/133540314-639cc580-1aa5-4bf4-8d54-b435bfe5e5f8.png" /> | <img src="https://user-images.githubusercontent.com/44080404/133540503-22c158d4-1042-4e7c-9ee5-79c694bf5841.png" /> |
</p>

<br><br><br><br><br><br>

<p align="center">
<h2 align="middle"> 프로젝트 개요 및 환경 👨‍💻 </h2>
<br>
<h3>1. 프로젝트 개요</h3>
· 사용자의 체형과 운동목적에 맞는 데이터를 기록한다.<br>
· 유의미한 정보를 제공하고, 개개인 사용자에게 필요한 맞춤상품을 제공하는 웹 서비스를 구현한다.

<h3>2. 프로젝트 환경</h3>
· Java(JDK 1.8) / HTML5 / CSS3 / JavaScript / jQuery 1.12 / Oracle<br>
· Apache Tomcat v8.5 / Servlet / JSP<br>
· Eclipse IDE / Visual Studio Code
<br><br><br><br><br><br>

<h2 align="middle"> 데이터 설계 🎡 </h2>
<br>
<h3>· ERD 구조</h3>
<img src="https://user-images.githubusercontent.com/97592294/153474194-4e97edbc-4e17-4147-9111-f0e68b6195ac.png">
<br><br><br><br><br><br>

<h2 align="middle"> 나의 담당 업무 🎯 </h2>
<br>
<h3>· 헬스케어 페이지 메인</h3><br>
<img src="https://user-images.githubusercontent.com/97592294/153474553-3ac4187a-f7ba-4e34-a7ab-64b0f5783acb.jpg" width="500" />
<h4>1. 헬스케어 서비스 메인 페이지를 구현했습니다.</h4>
<h4>2. 다양한 디자인을 추가하여 보기 쉬운 페이지를 구현하였습니다.</h4>

~~~
 <div>
  <%--  <c:if test="${not empty id}"> --%>
        <a href="/team3/healthcare/addnowspec.do?memberseq=MB3">
          <div id="btngo">
            인바디
            기록하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
              class="fas fa-sign-in-alt"
              id="some"
            ></i></div
        ></a><%-- </c:if> --%>
 </div>
 ~~~
 
<br>

<h3>· 헬스케어 페이지 현재스펙</h3><br>
<img src="https://user-images.githubusercontent.com/97592294/153475064-c334b789-4599-44d5-9436-7dd8168075ae.jpg" width="500" />
<h4>1. 회원의 현재스펙을 기록하는 페이지 입니다.</h4>
<h4>2. 회원이 입력하는 값을 전달하는 서비스를 구현했습니다.</h4>
<h4>3. 현재 나이를 정보를 얻어 계산하여 회원 맞춤으로 나이값을 제공합니다.</h4>

~~~
int jumin=Integer.parseInt(dto.getJumin().substring(0, 2));
		int age;
		
		if(jumin>=0 && jumin <22) { 
			age=2000+jumin;
		} else {
			age=1900+jumin;
		}
		age=2022-age;
		
		req.setAttribute("memberseq", memberseq);
		req.setAttribute("dto", dto);
		req.setAttribute("age", age);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/healthcare/addnowspec.jsp");
		dispatcher.forward(req, resp);
	}
 ~~~
 

<br>
<h3>· 헬스케어 페이지 목표 스펙</h3><br>
<img src="https://user-images.githubusercontent.com/97592294/153475074-f6f9451e-d1f3-44e6-9fe0-2e46758fd54a.jpg" width="500" />
<h4>1. 회원의 목표 스펙을 기록하는 페이지 입니다.</h4>
<h4>2. 입력 받은 스펙을 순서에 맞게 기록하였습니다.</h4>

~~~
	pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getWantWeight());
			pstat.setString(2, dto.getWantFat());
			pstat.setString(3, dto.getWantMuscle());
			pstat.setString(4, dto.getWantGoal());
			pstat.setString(5, dto.getMemberSeq());
			pstat.executeUpdate();	
		} catch (Exception e) {
			System.out.println("WantSpecDAO.insertWantSpec()");
			e.printStackTrace();
		}
	}
~~~

<br>
<h3>· 헬스케어 페이지 권장 칼로리</h3><br>
<img src="https://user-images.githubusercontent.com/97592294/153475081-d20ab5d8-de41-405a-9976-d3491ab04546.jpg" width="500" />
<h4>1. 앞서 입력받은 정보를 토대로 결과를 도출합니다.</h4>
<h4>2. 각 값에 맞게 도출하는 식을 정의합니다.</h4>
<pre>
<code>
double c;
c = (Double.parseDouble(nowdto.getTxtweight()) * 1.8);
    
double d;
d = (a * 0.3/9);
</code>
</pre>
<br>
<h3>· 헬스케어 페이지 히스토리</h3><br>
<img src="https://user-images.githubusercontent.com/97592294/153475085-2105591b-87af-46ae-ac68-e5720be217a9.jpg" width="500" />
<h4>1. 기록 된 회원 정보를 사용자의 편의에 따라 제공합니다.</h4>
<h4>2. 하이차트를 이용하여 그래프를 구현하였습니다.</h4>

~~~
<script src="https://code.highcharts.com/highcharts.js"></script>
            <script src="https://code.highcharts.com/modules/series-label.js"></script>
            <script src="https://code.highcharts.com/modules/exporting.js"></script>
            <script src="https://code.highcharts.com/modules/export-data.js"></script>
            <script src="https://code.highcharts.com/modules/accessibility.js"></script>
            <figure class="highcharts-figure">
              <div id="chart"></div>
               <p class="highcharts-description">
                </p> 
~~~

<br>
<h3>· 득근영상 페이지</h3><br>
<img src="https://user-images.githubusercontent.com/97592294/153476128-85f52682-80d2-4cc1-8ab6-0c0ac64b7b77.jpeg" width="500" />
<h4>1. 추천 운동 영상 제공 페이지 입니다.</h4>
<h4>2. 카테고리 별 추천 영상을 확인 할 수 있습니다.</h4>

~~~
<div id="video1" class="video_content">
            <a
              href="https://www.youtube.com/watch?v=yhfw8tIoZ4s&t=220s"
              target="_blank"
            >
              <img src="/team3/asset/images/title1.webp" width="230"
            /></a>
          </div>
~~~

<br>
<br><br><br><br><br><br>

<h2 align="middle"> ⚙️ 기술 스택 ⚙️ </h2>
<br>
<div align="middle">
<img src="https://img.shields.io/badge/HTML-E34F26?style=flat-square&logo=HTML5&logoColor=white"/>
<img src="https://img.shields.io/badge/CSS3-F68212?style=flat-square&logo=CSS3&logoColor=white"/>
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=JavaScript&logoColor=white"/><br/>
<img src="https://img.shields.io/badge/JQuery-0769AD?style=flat-square&logo=jQuery&logoColor=white"/>
<img src="https://img.shields.io/badge/VSCode-5C2D91?style=flat-square&logo=VisualStudio&logoColor=white"/>
<img src="https://img.shields.io/badge/Eclipse IDE-000000?style=flat-square&logo=Next.Eclipse IDE&logoColor=white"/><br/>
 <img src="https://img.shields.io/badge/Oracle-caa6fe?style=flat-square&logo=Oracle&logoColor=white"/>
 <img src="https://img.shields.io/badge/MySQL-FF6C37?style=flat-square&logo=MySQL&logoColor=white"/>
</div>

<br><br><br><br><br><br>
