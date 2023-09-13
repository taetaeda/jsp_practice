<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
   <%
      int total = 0;
      for(int i=0; i<=100; i++){
         total += i;
      }
   %>
   <h4>1부터 100까지의 누적합: <%=total%></h4>
--%>
   
   <%--
        <c:set> 태그는 변수의 생성과 동시에, 이미 동일한 이름의 데이터가 존재한다면
        기존의 데이터를 지목해서 값을 변경할 때도 사용합니다.
        마치 setAttribute()에서 이미 존재하는 이름을 지목하여 값을 변경하는 것처럼.
     --%>
   
   <c:set var="total" value="0" />
   <c:forEach var="i" begin="1" end="100" step="1">
      <c:set var="total" value="${total + i}" />
   </c:forEach>
   
   <h4>1부터 100까지의 누적합: ${total}</h4>
   
   <hr>
   
   <h4>구구단 4단</h4>
   
   <c:forEach var="i" begin="1" end="9">
      4 x ${i} = ${4*i} <br>
   </c:forEach>
   
   <hr>
   
   <%-- 구구단을 2~9단까지 출력하는데, 짝수단만 출력해 보세요. --%>
   
   <c:forEach var="i" begin="2" end="9">
      <c:if test="${i%2 == 0}">
         <c:forEach var="j" begin="1" end="9">
            ${i} x ${j} = ${i*j} <br>
         </c:forEach>
         <hr>
         </c:if>
   </c:forEach>
   
   <hr>
   
   <h2>배열이나 컬렉션 내부의 값을 출력</h2>
   
   <c:set var="arr" value="<%=new int[] {1, 3, 5, 7, 9} %>" />
   
   <c:forEach var="n" items="${arr}">
      ${n} &nbsp;
   </c:forEach>
   
   <hr>
   
   <c:set var="nameList" value='<%=Arrays.asList("홍길동", "김철수", "박영희", "김메롱") %>' />
   
   <c:forEach var="name" items="${nameList}">
      ${name} <br>
   </c:forEach>
   
   

</body>
</html>