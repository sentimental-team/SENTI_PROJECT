<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>감도 깊은 취향 셀렉트샾 29CM</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/cart.css">
</head>

<header>
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="false"></jsp:include>
</header>

<body>
	<div class="middle">
		<div class="mid-shopping-state">
			<ol class="state-text">
				<li class="shopping-bag">01 SHOPPING BAG
					<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
						<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
							<path d="M1 0l40 40.083L1.166 80"></path>
						</g>
					</svg>
				</li>
				<li class="order">02 ORDER
					<svg class="efn0hf62 css-1eloq9d e2007db0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
						<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="5">
							<path d="M1 0l40 40.083L1.166 80"></path>
						</g>
					</svg>
				</li>
				<li class="order-confirmed">03 ORDER CONFIRMED</li>
			</ol>
		</div>
		<c:choose>
			<c:when test="${empty list }">
				<div class="cart-info">
					<span class="cart-text">장바구니에 담은 상품이 없습니다.</span>
					<div class="shop-btn">
						<a class="go-29cm" href="/sentiBoard/main.jsp">CONTINUE SHOPPING</a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<section class="cart-box">
					<div class="checkbox1">
						<span class="checkbox-span" id="select-btn">
							<input type="checkbox" class="checkbox-btn" />
							<label class="check-info">
							선택(0/1)
							</label>
						</span>
						<button class="delete"  type="button">선택삭제</button>
					</div>
					<div class="cart-box-info">
						<div class="box-info-top">
							<div class="top-info1">
								<span class="checkbox-span">
									<input type="checkbox" class="checkbox-btn-all" name="checkbox-btn-all" onclick="selectAll()"/>
								</span>
							</div>
							<div class="top-info2">상품 정보</div>
							<div class="top-info3">수량</div>
							<div class="top-info3">주문금액</div>
							<div class="top-info4">배송비</div>
						</div>
						<div class="box-info-bottom">
							<h3 class="item-name" translate="no"></h3>
							<c:forEach items="${list }" var="list">
							<div class="box-bottom-main" id="checkbox-bottom-main">
								<div class="bot-checkbox">
									<span class="checkbox-span">
										<input type="checkbox" class="checkbox-btn" name="checkbox-btn" id="checkbox-btn" onclick="checkSelectAll()"/>
									</span>
								</div>
								<div class="bot-info1">
									<div class="bot-item-info">
										<a href="https://product.29cm.co.kr/catalog/2523110">
											<img class="item-img" src="${list.pdImageURL }" alt="${list.pdName }" loading="lazy"/>
										</a>
										<div class="item-img-info">
											<div translate="no">
												<a class="item-brand" href="https://shop.29cm.co.kr/brand/13646">${list.brandName }</a>
											</div>
											<a id="item-title" class="item-title" href="https://product.29cm.co.kr/catalog/2523110">${list.pdName }</a>
											<div class="item-price">
												<span class="price">${list.pdPrice }원</span>
											</div>
											<div class="item-bot-info">옵션 : ${list.testOption }</div>
										</div>
									</div>
									<button id="item-delete" class="item-delete"></button>
								</div>
								
								<div class="bot-info2">
									<div class="item-cnt">
										<div class="item-cnt-box">
											<button id="minus-btn" class="minus" type="button">-</button>
											<input type="text" class="cnt" autocapitalize="none" id="num-of-item" inputmode="numeric" value="1"/>
											<button id="plus-btn" class="plus" type="button" >+</button>
										</div>
									</div>
								</div>
								<div class="bot-info3">
									<div>
										<span class="sell-price" id="sell-price">${list.pdPrice }</span>
										원
									</div>
									<div class="buy-now">
										<button class="buy-now-btn" type="button">BUY NOW</button>
									</div>
								</div>
								<div class="bot-info4">
									<div class="bot-deli-pay">
										${list.deliPay }
									</div>
								</div>
							</div>
							
							</c:forEach>
						</div>
						
					</div>
					<div class="bot-bot">
						<div class="bot-bot-btn">
							<button class="click-btn" id="delete-btn" name="click-btn">선택상품 삭제</button>
						</div>
						<p class="max-cart-text">장바구니는 최대 100개의 상품을 담을 수 있습니다.</p>
					</div>
				</section>
				<section class="total-pay" >			 
					<div class="total-pay-box">
						<div class="total-pay-top">
							<div class="total-pay-text1">총 주문금액</div>
							<div class="total-pay-text2">총 배송비</div>
							<div class="total-pay-text3">총 결제금액</div>
						</div>
						<div class="total-pay-bottom">
							<div class="total-pay-bottom-box1">
								<span class="total-pay-price">
									<strong class="total-pay-price-text">${totalPayPrice }</strong>
									원
								</span>
								<span class="total-pay-item-cnt">총 ${totalCnt}개</span>
							</div>
							<div class="total-pay-bottom-box2">
								<i class="css-15wexqq e17g5zv810"></i>
								<span class="total-pay-deli-charge">
									<strong class="total-charge">${totalDeliveryPay }</strong>
									원
								</span>
							</div>
							<div class="total-pay-bottom-box3">
								<i class="css-z92i1e e17g5zv811"></i>
								<span class="total-pay-price2">
									<strong class="total-pay-price-text2">${totalChargePay}</strong>
									원
								</span>
							</div>
						</div>
					</div>
				</section>
				
			
			<div class="main-bottom">
					<a class="continue" href="https://www.29cm.co.kr">CONTINUE SHOPPING</a>
					<button id="check-out-btn" class="check-out" type="button"><a href="#">CHECK OUT</a></button>
			</div>
			</c:otherwise>
		</c:choose>
				
		
	</div>
<footer>
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</body>
<script>
	 function checkSelectAll() {
	        // 선택된 체크박스
	        const checkboxes = document.querySelectorAll('input[name="checkbox-btn"]');
	        // select all 체크박스
	        const selectAll = document.querySelector('input[name="checkbox-btn-all"]');
	        
	        // 모든 체크박스가 체크된 경우, selectAll 체크박스를 체크함
	        selectAll.checked = Array.from(checkboxes).every(checkbox => checkbox.checked);
	    }

	    function selectAll(selectAll) {
	        const checkboxes = document.getElementsByName('checkbox-btn');

	        checkboxes.forEach((checkbox) => {
	            checkbox.checked = selectAll.checked;
	        });
	    }

	    document.querySelectorAll('input[name="checkbox-btn"]').forEach((checkbox) => {
	        checkbox.addEventListener('click', checkSelectAll);
	    });

	   document.querySelector('input[name="checkbox-btn-all"]').addEventListener('click', function() {
	        selectAll(this);
	    });

	    document.querySelectorAll('input[name="checkbox-btn"]').forEach((checkbox) => {
	        checkbox.addEventListener('click', checkSelectAll);
	    });
	
	/* $(".click-btn").on("click", function(){
		confirm("선택한 상품을 삭제 하시겠습니까?")
	}) */
	
	$(document).ready(function() {
    $(".click-btn").click(function() {
        if (confirm("선택한 상품을 삭제 하시겠습니까?")) {
            let selectedItems = [];
            $('input[name="checkbox-btn"]:checked').each(function() {
                let id = $(this).closest('.box-bottom-main').data('id');
                selectedItems.push(id);
            });

            if (selectedItems.length > 0) {
                $.ajax({
                    url: '../user/cart.jsp',  // 서버에서 삭제 요청을 처리할 URL
                    type: 'POST',
                    data: JSON.stringify(selectedItems),
                    contentType: 'application/json; charset=UTF-8',
                    success: function(response) {
                        // 성공적으로 삭제한 후 페이지 새로고침
                        location.reload();
                    },
                    error: function(xhr, status, error) {
                        alert('삭제 중 오류가 발생했습니다.');
                    }
                });
            } else {
                alert('삭제할 항목을 선택하세요.');
            }
        }
    });
});
	
	$(".check-out-btn").on("click", function() {
        window.location.href = "#";
    });
</script>
</html>