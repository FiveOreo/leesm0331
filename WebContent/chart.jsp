<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chart.model.*" %>
<%@ page import="chart.controller.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<jsp:include page="top.jsp"/>
    
    	<div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center">TOP 50 MUSIC</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>순위</th>
                                    <th>제목</th>
                                    <th>가수</th>
                                    <th>발매일</th>
                                    <th>앨범명</th>
                                    <th>장르</th>
                                    <th>기능</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td> Old Town Road (Remix) (Feat. Billy Ray Cyrus)</td>
                                    <td>Lil Nas X</td>
                                    <td>2019.04.08</td>
                                    <td>Old Town Road (Remix) (Feat. Billy Ray Cyrus)</td>
                                    <td>힙합,컨트리</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/lil nas x - old town road.mp4" type="video/mp4">
                                    </video>
                                    <input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=26765364')";>
                                    
                                    <input name="play" type="button" value="담기">
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>rockstar (Feat. 21 Savage)</td>
                                    <td>Post Malone</td>
                                    <td>2018.04.27</td>
                                    <td>beerbongs & bentleys</td>
                                    <td>힙합/락</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/post malone - rockstar.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=18962153')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                                            
                                    <td>3</td>
                                    <td>Walk it Talk it</td>
                                    <td>Migos</td>
                                    <td>2018.01.26</td>
                                    <td>Culture II</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/migos - walk it talk it.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=20553749')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Forever (Feat. Matisse, Sadko)</td>
                                    <td>Martin Garrix</td>
                                    <td>2017.10.21</td>
                                    <td>Forever</td>
                                    <td>일렉트로닉</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/martin garrix - forever.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Bad Guy</td>
                                    <td>Billie Eilish</td>
                                    <td>2019.03.29</td>
                                    <td>WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?</td>
                                    <td>팝</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/billie eilsh - bad guy.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=26524484')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>벌써 12시</td>
                                    <td>청하</td>
                                    <td>2019.01.02</td>
                                    <td>벌써 12시</td>
                                    <td>댄스</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/청하 - 벌써12시.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=25169012')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>2002</td>
                                    <td>Anne Marie</td>
                                    <td>2018.04.27</td>
                                    <td>Speak Your Mind (Deluxe)</td>
                                    <td>팝</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/anne marie - 2002.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=21277427')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>The Time Goes On</td>
                                    <td>비와이(BeWhy)</td>
                                    <td>2015.03.10</td>
                                    <td>Time Travel</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/비와이 - time goes on.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=4800670')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>생각해 (Feat. 박재범)</td>
                                    <td>레디(Reddy)</td>
                                    <td>2016.02.03</td>
                                    <td>생각해 (Feat. 박재범)</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/레디 - 생각해.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=5963728')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Ayo</td>
                                    <td>Chris Brown,Tyga</td>
                                    <td>2015.01.09</td>
                                    <td>Ayo</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/chris brown, tyga - ayo.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=4688397')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>삐삐</td>
                                    <td>아이유(IU)</td>
                                    <td>2018.10.10</td>
                                    <td>삐삐</td>
                                    <td>알앤비/어반</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/아이유 - 삐삐.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=22205276')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>Caffeine</td>
                                    <td>Lolo Zouaï</td>
                                    <td>2019.04.19</td>
                                    <td>High Highs To Low Lows</td>
                                    <td>팝</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/lolo zouai - caffeine.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=26983485')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>puzzle</td>
                                    <td>C JAMM, 비와이(BewhY)</td>
                                    <td>2016.08.11</td>
                                    <td>puzzle</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/씨잼,비와이 - puzzle.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=6247484')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>Better Now</td>
                                    <td>Post Malone</td>
                                    <td>2018.04.27</td>
                                    <td>beerbongs & bentleys</td>
                                    <td>힙합/락</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/post malone - better now.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=26765364')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>Weathermen</td>
                                    <td>메킷레인(MKIT RAIN)</td>
                                    <td>2016.08.13</td>
                                    <td>Weathermen</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/mkit rain - wetherman.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=21290230')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td>사계 (Four Seasons)</td>
                                    <td>태연 (TAEYEON)</td>
                                    <td>2019.03.24</td>
                                    <td>사계 (Four Seasons)</td>
                                    <td>발라드</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/태연 - 사계.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=26386030')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                 <tr>
                                    <td>17</td>
                                    <td>ICY</td>
                                    <td>ITZY(있지)</td>
                                    <td>2019.07.29</td>
                                    <td>IT'z ICY</td>
                                    <td>댄스</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/itzy - icy.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=27991807')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>18</td>
                                    <td>Kill This Love</td>
                                    <td>BLACKPINK</td>
                                    <td>2019.04.05</td>
                                    <td>KILL THIS LOVE</td>
                                    <td>랩/힙합, 댄스, 팝락</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/블랙핑크 - kill this love.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=26687892')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>19</td>
                                    <td>Me, Myself & I (Dirty Ver.)</td>
                                    <td>G-Eazy, Bebe Rexha</td>
                                    <td>2015.12.17</td>
                                    <td>Me, Myself & I (Dirty Ver.)</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/g eazy - me myself and i.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=5887619')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>20</td>
                                    <td>Falling Slowly</td>
                                    <td>Glen Hansard</td>
                                    <td>2007.09.17</td>
                                    <td>Falling Slowly</td>
                                    <td>팝</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/glen hansard - falling slowly.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=812406')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>21</td>
                                    <td>HUMBLE.</td>
                                    <td>Kendrick Lamar</td>
                                    <td>2017.04.14</td>
                                    <td>DAMN.</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/kendrick lamar - humble.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=17300235')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>22</td>
                                    <td>Zero</td>
                                    <td>Chris Brown</td>
                                    <td>2015.09.19</td>
                                    <td>Zero</td>
                                    <td>팝</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/chris brown - zero.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=5726836')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>23</td>
                                    <td>California</td>
                                    <td>Vicetone</td>
                                    <td>2018.11.19</td>
                                    <td>California</td>
                                    <td>클럽/댄스</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/vicetone - california.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>24</td>
                                    <td>South Beach</td>
                                    <td>Vicetone</td>
                                    <td>2019.02.06</td>
                                    <td>South Beach</td>
                                    <td>하우스</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/vicetone - southbeach.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>25</td>
                                    <td>티키타카 (feat.Deepflow, 우탄, 넉살, ODEE)</td>
                                    <td>VMC</td>
                                    <td>2017.09.08</td>
                                    <td>VISTY BOYZ</td>
                                    <td>랩/힙합</td>
                                    <td>
                                   <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/vmc - 티키타카.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=18953526')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>26</td>
                                    <td>My Way</td>
                                    <td>이수(ISU)</td>
                                    <td>2017.11.11</td>
                                    <td>돈꽃 OST Part 1</td>
                                    <td>드라마음악</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/이수 - my way.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=20072106')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>27</td>
                                    <td>너를 원해 (Feat.Beenzino)</td>
                                    <td>정기고(Junggigo)</td>
                                    <td>2014.05.09</td>
                                    <td>Want U</td>
                                    <td>알앤비/어반</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/정기고 - 너를 원해.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=4223815')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>28</td>
                                    <td>위잉위잉</td>
                                    <td>혁오(HYUKOH)</td>
                                    <td>2014.09.18</td>
                                    <td>20</td>
                                    <td>발라드/락</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/혁오 - 위잉위잉.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=4435786')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>29</td>
                                    <td>Bank Account</td>
                                    <td>21 Savage</td>
                                    <td>2017.07.11</td>
                                    <td>Issa Album</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/21 savage - bank account.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=18427475')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>30</td>
                                    <td>SICKO MODE (Feat.Drake)</td>
                                    <td>Travis Scott</td>
                                    <td>2018.08.03</td>
                                    <td>ASTROWORLD</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/travis scott - sicko mode.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=21533320')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>31</td>
                                    <td>Señorita</td>
                                    <td>Shawn Mendes, Camila Cabello</td>
                                    <td>2019.06.21</td>
                                    <td>Señorita</td>
                                    <td>팝</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/shawn mendes, camilla cabello - senorita.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=27355275')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>32</td>
                                    <td>충분히 예뻐 (Feat.산체스 of 팬텀)</td>
                                    <td>버벌진트(Verbal Jint)</td>
                                    <td>2012.06.21</td>
                                    <td>10년동안의오독I</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/버벌진트 - 충분히 예뻐.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=3246265')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>33</td>
                                    <td>사이먼 도미닉</td>
                                    <td>Simon Dominic</td>
                                    <td>2015.08.21</td>
                                    <td>₩ & ONLY</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/사이먼도미닉 - 사이먼도미닉.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=5599116')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                 <tr>
                                    <td>34</td>
                                    <td>Way Back Home</td>
                                    <td>숀(SHAUN)</td>
                                    <td>2018.06.27</td>
                                    <td>Take</td>
                                    <td>일렉트로니카/인디뮤직</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/숀 - way back home.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=21412948')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>35</td>
                                    <td>R.I.P.</td>
                                    <td>Rita Ora</td>
                                    <td>2012.06.05</td>
                                    <td>R.I.P. (Digital Audio Bundle)</td>
                                    <td>팝</td>
                                    <td>
                                   <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/rita ora - rip.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=3287203')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>36</td>
                                    <td>City</td>
                                    <td>오왼 오바도즈(Owen Ovadoz)</td>
                                    <td>2016.03.14</td>
                                    <td>City</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/오왼오바도즈 - city.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=6026187')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>37</td>
                                    <td>이 노래가 클럽에서 나온다면</td>
                                    <td>우디 (Woody)</td>
                                    <td>2019.01.23</td>
                                    <td>이 노래가 클럽에서 나온다면</td>
                                    <td>랩/힙합, 인디뮤직</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/우디 - 이노래가 클럽에서 나온다면.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=25356309')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>38</td>
                                    <td>Shut it Down (Feat.Akon)</td>
                                    <td>Pitbull</td>
                                    <td>2009.09.15</td>
                                    <td>Rebelution (Explicit Version)</td>
                                    <td>힙합, 클럽/댄스</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/pitbull - shut it down.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=2078740')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>39</td>
                                    <td>Cashin Out</td>
                                    <td>Akon</td>
                                    <td>2013.12.17</td>
                                    <td>Konkrete Jungle</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/akon - cashin out.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=4039744')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>40</td>
                                    <td>1-800-273-8255 (Feat.Alessia Cara, Khalid)</td>
                                    <td>Logic</td>
                                    <td>2017.05.05</td>
                                    <td>Everybody</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/logic - 1-800.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=17728229')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>41</td>
                                    <td>Be Like Me (Feat. Lil Wayne)</td>
                                    <td>Lil Pump</td>
                                    <td>2019.02.22</td>
                                    <td>Harverd Dropout</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/lil pump - be like me.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=25798420')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>42</td>
                                    <td>회전목마 (Feat. 진성 of 먼데이키즈)</td>
                                    <td>언터쳐블</td>
                                    <td>2010.06.15</td>
                                    <td>회전목마</td>
                                    <td>랩/힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/언터쳐블 - 회전목마.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=2217143')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>43</td>
                                    <td>In My Head</td>
                                    <td>Jason Derulo</td>
                                    <td>2010.03.24</td>
                                    <td>In My Head</td>
                                    <td>팝</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/jason derulo - in my head.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=4707564')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>44</td>
                                    <td>Bad and Boujee (Feat. Lil Uzi Vert)</td>
                                    <td>Migos</td>
                                    <td>2017.02.03</td>
                                    <td>Culture</td>
                                    <td>힙합</td>
                                    <td>
                                   <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/migos - bad and boujee.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=12546994')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>45</td>
                                    <td>Scared To Be Lonely</td>
                                    <td>Martin Garrix, Dua Lipa</td>
                                    <td>2017.01.27</td>
                                    <td>Scared To Be Lonely</td>
                                    <td>댄스</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/martin garrix, dua lipa - scare to be lonely.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=16068256')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>46</td>
                                    <td>Hurt Somebody (Feat. French Montana)</td>
                                    <td>Akon</td>
                                    <td>2011.12.20</td>
                                    <td>Hurt Somebody</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/akon - hurt somebody.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=3205575')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>47</td>
                                    <td>Money In The Grave (Feat. Rick Ross)</td>
                                    <td>Drake</td>
                                    <td>2019.06.15</td>
                                    <td>The Best In The World Pack</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/drake - money in the grave.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>48</td>
                                    <td>Praise The Lord (Da Shine) (Feat. Skepta)</td>
                                    <td>A$AP Rocky</td>
                                    <td>2018.05.25</td>
                                    <td>TESTING</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/asap rocky - praise the lord.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=21338618')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>49</td>
                                    <td>Animals</td>
                                    <td>Maroon 5</td>
                                    <td>2014.09.01</td>
                                    <td>V</td>
                                    <td>팝락, 얼터너티브 락</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/maroon 5 - animals.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=4408896')";>
                                	
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                                <tr>
                                    <td>50</td>
                                    <td>MY Life (Feat. Lil Wayne)</td>
                                    <td>The Game</td>
                                    <td>2008.12.08</td>
                                    <td>LAX (International Version)</td>
                                    <td>힙합</td>
                                    <td>
                                    <video controls loop="2" preload="auto" width="360" height="240">
                                    	<source src="video/the game - my life.mp4" type="video/mp4">
                                    </video>
                                	<input name="lyrics" type="button" formtarget="_blank" value="가사" onclick="window.open('https://music.naver.com/lyric/index.nhn?trackId=1954268')";>
                                	<input name="play" type="button" value="담기">
                                	</td>
                                </tr>
                            </tbody>
                        </table>
                <ul class="pagination">
    		<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
    		<li class="page-item"><a class="page-link" href="#">1</a></li>
    		<li class="page-item"><a class="page-link" href="#">2</a></li>
    		<li class="page-item"><a class="page-link" href="#">3</a></li>
    		<li class="page-item"><a class="page-link" href="#">4</a></li>
    		<li class="page-item"><a class="page-link" href="#">5</a></li>
    		<li class="page-item"><a class="page-link" href="#">Next</a></li>
  				</ul>
                    </div>
                </div>
            </div>
        </div>
<jsp:include page="foot.jsp"/>