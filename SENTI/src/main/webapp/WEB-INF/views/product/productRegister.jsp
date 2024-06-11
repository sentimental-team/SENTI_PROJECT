<%@page import="org.doit.senti.domain.board.Main_CtgrVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 등록 페이지</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 600px;
        margin: 50px auto;
        background-color: #ececec;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="number"],
    input[type="file"],
    select,
    button {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
        font-size: 16px;
    }

    button {
    	width : 30%;
        background-color: blue;
        color: black;
        border: none;
        cursor: pointer;
    }

    
    .container button {
        width: 30%;
        margin-right: 10px; /* 버튼 사이 간격 */
        padding: 10px;
        border-radius: 3px;
        font-size: 16px;
    }

    /* 등록 버튼 스타일 */
    button[type="submit"]:nth-of-type(1) {
        background-color: #4CAF50; /* 초록색 */
        color: white;
    }

    /* 수정 버튼 스타일 */
    button[type="submit"]:nth-of-type(2) {
        background-color: #ff9800; /* 주황색 */
        color: white;
    }

    /* 취소 버튼 스타일 */
    button[type="submit"]:nth-of-type(3) {
        background-color: #f44336; /* 빨간색 */
        color: white;
    }
    
    button[type="submit"]:hover {
    opacity: 0.8; /* 마우스를 올렸을 때 투명도를 줄여서 투명도가 높아지는 효과 */
    transition: opacity 0.3s ease; /* 부드럽게 변경되도록 애니메이션 효과 추가 */
}
    
</style>
</head>
<header>
    <jsp:include page="/WEB-INF/views/layout/top.jsp" flush="false"></jsp:include>
</header>

<body>
    <div id="productForm" class="container">
        <h1>상품 등록 페이지</h1>
        <form action="" method="post" enctype="multipart/form-data">
            <label for="pd_name">상품명:</label>
            <input type="text" id="pd_name" name="pdName" value="상품">
			
			<label for="pd_info">상품설명:</label>
            <input type="text" id="pd_info" name="pdInfo" value="상품">
			
			<label class="" for="brand">브랜드:</label>
            <select class="brand" id="brand_id" name="brandId">
            	<option value="" disabled selected>카테고리를 선택해주세요</option>
            	<c:forEach var="brand" items="메종마르지엘라">
                    <option value= "1" selected>메종마르지엘라</option>
                </c:forEach>
            </select>
            
            <label for="price">가격:</label>
            <input type="number" id="pd_price" name="pdPrice" value="140000" >

            <label for="discount">할인율:</label>
            <input type="number" id="pd_discount_rate" name="pdDiscountRate" min="0" max="100" value="14">

            <label for="pd_image">이미지 업로드:</label>
            <input type="file" id="pd_image_url" name="pdImageList" multiple/>

            <label for="pd_info_image">상품 설명 이미지:</label> <!-- 추가된 라벨 -->
            <input type="file" id="pd_info_image_url" name="pdInfoImage" > <!-- 추가된 이미지 업로드 -->

            <label class="main_category" for="main_category">Main Category:</label>
            <select class="main_category" id="main_category" name="mainCtgrId">
				<option value="" disabled selected>카테고리를 선택해주세요</option>
				<option value="1" selected>여성</option>
			</select>

            <label class="" for="large_category">Large Category:</label>
            <select class="large_category" id="large_category" name="largeCtgrId">
            	<option value="" disabled selected>카테고리를 선택해주세요</option>
            	<option value="1" selected >여성의류</option>
            </select>

            <label class="" for="medium_category">Medium Category:</label>
            <select class="medium_category" id="medium_category" name="mediumCtgrId">
            	<option value="" disabled selected>카테고리를 선택해주세요</option>
            	<option value="11"  selected>상의</option>
            </select>

            <label class="" for="small_category">Small Category:</label>
            <select class="small_category" id="small_category" name="smallCtgrId">
            	<option value="" disabled selected>카테고리를 선택해주세요</option>
            	<option value="1" selected >반소매 티셔츠</option>
            </select>
			<br>
			<br>
            <button type="submit">등록</button>
            <button type="submit">수정</button>
            <button type="submit" href="main.do">취소</button>
            
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"></input>
            
        </form>
    </div>
</body>
 <footer>
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
<script>

</script>

</html>