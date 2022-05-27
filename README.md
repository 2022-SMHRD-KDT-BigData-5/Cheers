# 슬기로운 혼술생활(팀명: 같이마시조)
![image](https://user-images.githubusercontent.com/104408785/170398951-4d81f42e-ed7d-4e0d-900e-7fb524680aac.png)

## 1. 프로젝트명
* 혼술족을 위한 홈 레시피 및 커뮤니티 제공 웹 서비스
* 서비스설명 
* 집에서 손쉽게 만들어 먹을 수 있는 홈 칵테일 레시피 정보 제공
* 혼자 보는 미디어(넷플릭스, 왓챠)가 아닌 기존 파티 기능을 활용할 수 있도록 미디어 매칭을 도와주는 커뮤니티 공간 제공
* 적적하지 않은 혼술을 위해 인증사진을 통해 랜선 건배를 하는 '랜선짠'을 할 수 있는 게시판 공간 제공.

## 2. 주요기능
* 랜선짠 게시판
* OTT 매칭 서비스
* 나만의 레시피 즐겨찾기

## 3. 개발환경
|구분|내용|
|------|---|
|사용언어|Java, HTML, CSS, JavaScript|
|사용한 라이브러리| Bootstrap / etc...|
|개발도구|Eclipse / VisualStudioCode  / etc...|
|서버환경|tomcat 9.0|
|데이터베이스| oracle 11g / etc..|


## 4. 아키텍처(구조) 
![image](https://user-images.githubusercontent.com/104408872/170422711-5489cded-a9de-4121-af33-5910574ef295.png)



## 5. 기능 흐름도


### 서비스 흐름도(유스케이스)
![image](https://user-images.githubusercontent.com/104408785/170398264-1fcefbd6-e9bc-4bf7-b279-d6ccf2f9c5a6.png)
### 웹화면 흐름도(유스케이스)
![image](https://user-images.githubusercontent.com/104408785/170403742-4c2e86c5-7ce2-4b9d-9686-b8d650009517.png)

#### ER 다이어그램
![image](https://user-images.githubusercontent.com/104408785/170398269-19222828-bef9-4888-8ec9-040a55473f93.png)

## 6. SW 동작 화면

### 로그인/회원가입/회원수정/회원탈퇴
  

![회원가입3](https://user-images.githubusercontent.com/104408785/170398555-adac2ac4-1f61-4909-9fb5-68cd647f02ee.png)
![로그인](https://user-images.githubusercontent.com/104408785/170400387-486215f9-dd5f-41ed-8d7a-283246274997.png)
![회원업데이트](https://user-images.githubusercontent.com/104408785/170401207-34bef47a-bd98-42ee-a7e4-5fa9eee44a10.png)



##  웹페이지 구현

###  메인화면
![메인화면](https://user-images.githubusercontent.com/104408785/170400069-23016236-920d-40ba-8dc6-5b3fbd2e6506.png)

### 모바일화면
![모바일](https://user-images.githubusercontent.com/104408785/170400064-50dd7ecd-d91a-4ac0-8c6d-975a07585568.png)


## 마셔볼래 메뉴 (홈 칵테일레시피 조회 및 분류, 즐겨찾기)

### 마셔볼래 페이지
![마셔볼래](https://user-images.githubusercontent.com/104408785/170401891-fc2d264e-7b7a-4242-a531-774695ad9622.png)

### 즐겨찾기 페이지 
![마셔볼래2(즐겨찾기)](https://user-images.githubusercontent.com/104408785/170401587-b641a437-e42b-41a6-9f48-55d6c0ba47f2.png)

## 같이마실래? 메뉴 (게시글 그림업로드/ 게시글 등록/수정/삭제/추천, 댓글/ 댓글수정/댓글삭제/댓글수출력) 
![image](https://user-images.githubusercontent.com/104408785/170403349-f30c40dd-0cef-4b41-a58a-84bfacd0b74d.png)

## 같이볼래? 메뉴 (게시글 업로드/ 게시글등록/ 수정/ 삭제, 댓글/댓글수정/댓글삭제/댓글수출력)
![화면 캡처 2022-05-27 085041](https://user-images.githubusercontent.com/104408785/170602010-9ec3d3f0-4c0a-4592-99ca-4468ce83f6ca.png)



## 7. 제작 일정!
![image](https://user-images.githubusercontent.com/104408785/170404056-9d637408-e201-40a3-a1d9-57f63d3c1954.png)


## 8. 팀원 단위 업무 분장 및 결과표
![image](https://user-images.githubusercontent.com/104408785/170407412-71bde865-2da1-4781-873b-0b38c95889ea.png)


## 9. 트러블슈팅

개념: 문제 해결을 위해 문제의 원인을 논리적이고 체계적으로 찾는 일이며 제품이나 프로세스의 운영을 재개
프로젝트 진행하는 동안 발생했던 이슈 중 가장 기억에 남았던 문제와 해결 프로세스 나열(2가지 정도)
* 문제1<br>
 문제점 설명 및 해결방안<br>
 문제점: 게시글 등록 및 파일업로드 시 Request로 값을 받아오려고 할때 계속 사용할수 없다는 에러가 뜨는 상황이 발생하였음. <br>
 해결방안 :  업로드시 사용하는 라이브러리인 cos에서 제공하는 함수인 MultipartRequest를 같이 사용하려고하니 발생하는 문제점이었는데 
 MultifileRequest 내에 Request를 포함시키기 때문에 MultifileRequest를 받는 변수를 생성시켜 파라미터값을 받게 바꾸어주었더니 정상적으로 게시글이 업로드되었다.
 
 
* 문제2<br>
 문제점 설명 및 해결방안<br>
 문제점:core 태그 foreach 반복문으로 리스트에 담아둔 즐겨찾기와 게시글을 출력시키는데, 그 중 매개변수로 쓸 특정값을 스크립트 함수 안에 어떻게 받아올 지를 고민했다. <br>
 해결방안:input 태그에 hidden 속성을 주고 value에 원하는 값을 넣어두고, 그 input태그 아이디를 지정해서 불러올 수 있었다. 아이디 지정만으론 맨 처음 값만 넘어갔지만, 거기에 this를 활용해서 반복문의 값들을 잡아낼 수 있었다.

* 문제3<br>
  문제점 설명 및 해결방안<br>
  문제점: 두 개의 리스트를 조합해서 core 태그 foreach 반복문 안쪽에 또 다른 반복문을 쓰고, 거기에 하나의 값만 남기고 출력을 막아야 했는데, 그 중복 출력을 잡기가 어려웠다. <br>
  해결방안: 반복문 바깥에 <c:set> 태그로 비어있는 새로운 변수를 만들고, 반복문 안쪽에 중복을 제외시키려는 값과 이 변수가 일치하지 않을 때 값으로 담아온다는 조건문을 만들어서, 출력부 바깥으로 빠지게 만들었다.
