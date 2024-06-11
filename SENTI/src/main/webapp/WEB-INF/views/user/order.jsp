<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>감도 깊은 취향 셀렉트샾 29CM</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/css/order.css">
</head>
<body>
<header>
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush="false"></jsp:include>
</header>
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
		<div class="order-mid-main">
			<div class="order-left">
				<section class="left-section1">
					<header class="section1-header">
						<h2 class="sec1-header-box">
						배송정보
						<button class="sec1-header-box-btn">?</button>
						</h2>
						<p class="must-text">
							<i class="css-6cb3bj e1mkvd1x4">*</i>
							 표시는 필수입력 항목
						</p>
					</header>	
					<div class="input-box">
						<ul class="input-box-ul">
							<li role="button" class="exist-deli-addr">기존 배송지</li>
							<li role="button" class="new-deli-addr">신규입력</li>
						</ul>
					</div>
					<div class="input-addr-all">
						<div class="input-addr-detail">
							<h2 class="addr-title">배송지명</h2>
							<div class="addr-title-textbox">
								<input class="addr-title-text" type="text" autocapitalize="none" name="new-addr"/>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="recipient">수령인</h2>
							<div class="recipient-textbox">
								<input required="required" class="recipient-text" type="text" autocapitalize="none" name="new-recipient"/>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="deli-location">배송지</h2>
							<div class="location-box">
								<div class="location-box-text">
									<div class="location-box-text1">
										<div class="location-text-content" id="location-text-content"></div>
										<button class="post-code" type="button" onclick="execDaumPostcode()">우편번호 검색</button>
									</div>
								</div>
								
								<div class="location-box-text">
								<div class="post-code-addr" id="post-code-addr"></div>
								</div>
								<div class="location-box-text">
									<input required="required" class="detail-location-addr" id="detail-location-addr" placeholder="상세주소 입력" type="text" />
								</div>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="first-tel">연락처1</h2>
							<div class="first-tel-box">
								<input class="first-tel-text" autocapitalize="none" type="text" name="tel1" required="required" inputmode="numeric" maxlength="4" value=""/>
								<span class="dive-first-tel-text">-</span>
								<input class="first-tel-text" autocapitalize="none" type="text" name="tel2" required="required" inputmode="numeric" maxlength="4" value=""/>
								<span class="dive-first-tel-text">-</span>
								<input class="first-tel-text" autocapitalize="none" type="text" name="tel3" required="required" inputmode="numeric" maxlength="4" value=""/>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="second-tel">연락처2</h2>
							<div class="second-tel-box">
								<input class="second-tel-text" autocapitalize="none" type="text" name="tel1" inputmode="numeric" maxlength="4" value=""/>
								<span class="dive-second-tel-text">-</span>
								<input class="second-tel-text" autocapitalize="none" type="text" name="tel2" inputmode="numeric" maxlength="4" value=""/>
								<span class="dive-second-tel-text">-</span>
								<input class="second-tel-text" autocapitalize="none" type="text" name="tel3" inputmode="numeric" maxlength="4" value=""/>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="padding-for-checkbox"></h2>
							<div class="regi-exist-addr-box">
								<span class="exist-addr-text-box">
									<input class="for-exist-addr-checkbox" type="checkbox" />
									<label class="regi-exist-addr">기존배송지로 등록</label>
								</span>
							</div>
						</div>
						<div class="input-addr-detail">
							<h2 class="request-for-padding"></h2>
							<div class="request-table">
								<div class="request-table2">
									<div class="request-select-box">
										<select class="request-select">
											<option>배송시 요청사항을 선택해 주세요</option>
											<option>부재시 문앞에 놓아주세요</option>
											<option>부재시 경비실에 맡겨 주세요</option>
											<option>부재시 전화 또는 문자 주세요</option>
											<option>택배함에 넣어 주세요</option>
											<option>파손위험상품입니다. 배송시 주의해주세요</option>
											<option>배송전 연락주세요</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="left-section2">
					<header class="second-header">
						<h2 class="coupon-item-info">쿠폰 사용 및 상품 정보 / 총 1개</h2>
					</header>
					<div style="flex: 0 0 auto; height: 25px;"></div>
					<div class="sec2-sale-box-not">
						<div class="sec2-sale-box2">
							<button class="sec2-sale-btn-not"></button>
							<span class="sec2-sale-text-not" color="accent">최대 할인이 적용되지 않았어요. 최대 할인을 활성화 하세요.</span>
						</div>
					</div>
					<ul class="sec2-coupon-item-info">
						<li class="sec2-coupon-item-info2">
							<div class="sec2-coupon-item-info3">
								<div class="sec2-coupon-item-info4">
									<img class="sec2-coupon-item-info4-img" src="#" alt="title" />
								</div>
								<div class="sec2-coupon-item-info5">
									<div class="sec2-coupon-item-info5-box">
										<div class="sec2-coupon-item-info5-brand">
											<a href="#">
												<button class="sec2-coupon-item-info5-brand-btn">
													<span class="sec2-coupon-item-info5-brand-btn-brand">brand_name</span>
												</button>
											</a>
										</div>
										<div class="sec2-coupon-item-info5-title">
											<a href="#">
												<span class="sec2-coupon-item-info5-title-text">pd_name</span>
											</a>
										</div>
										<a class="sec2-coupon-item-info5-option" href="">
											<ul class="sec2-coupon-item-info5-option-ul">
												<li class="sec2-coupon-item-info5-option-ul-li">
													<span class="sec2-coupon-item-info5-option-ul-li-span" color="secondary">
													옵션 : 
													pd_option_name
													</span>
												</li>
											</ul>
										</a>
										<div class="sec2-coupon-item-info5-price">
											<span class="sec2-coupon-item-info5-price-span">
											pd_price 원
											</span>
										</div>		
									</div>
								</div>
							</div>
						</li>
					</ul>
					<div class="sec2-bottom-border"></div>
				</section>
				<section class="left-section3"></section>
				<section class="left-section4"></section>
			</div>
			<aside class="rigtht-section">
				<section class="right-section-box">
					<header class="right-sec-top">
						<h2 class="right-sec-top-text">결제금액</h2>
						<button class="for-right-top-text-btn"></button>
					</header>
					<div class="right-sec-mid">
						<ul class="right-sec-for-mid">
							<li class="for-mid-li">
								<span class="right-sec-totalpay">총 상품 금액</span>
								<span class="right-sec-totalpay-text">200,000원</span>
							</li>
							<li class="for-mid-li">
								<div class="for-three-text-box">
									<div class="box-of-three-coupon">
										<span class="coupon-sale-price">쿠폰 할인 금액</span>
										<span class="coupon-sale-price">- 22,900원</span>
									</div>
									<div class="box-of-three-coupon">
										<div class="for-item-coupon-box">
											<svg class="eftial5 css-18fin6o epb9foa0" width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M1 1H2.17647V9.82353H11V11H1V1Z" fill="var(--ruler-semantic-color-border-line)"></path>
											</svg>
											<span class="item-coupon-text">상품 쿠폰</span>
										</div>
										<span class="for-item-coupon-text">+ 0원</span>
									</div>
									<div class="box-of-three-coupon">
										<div class="cart-coupon-box">
											<svg class="eftial5 css-18fin6o epb9foa0" width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path fill-rule="evenodd" clip-rule="evenodd" d="M1 1H2.17647V9.82353H11V11H1V1Z" fill="var(--ruler-semantic-color-border-line)"></path>
											</svg>
											<span class="cart-coupon-box-text">장바구니 쿠폰</span>
										</div>
										<span class="cart-coupon-text">- 2,900원</span>
									</div>
								</div>
							</li>
							<li class="for-mid-li">
								<span class="use-mile-box">마일리지 사용</span>
								<span class="use-mile-text">+ 0P</span>
							</li>
							<li class="for-mid-li">
								<span class="go-deli-pay">배송비</span>
								<span class="go-deli-pay-text">+ 2,500원</span>
							</li>
							<li class="for-mid-li">
								<div class="go-total-pay">
									<span class="go-total-pay-box">총 결제 금액</span>
									<span class="go-total-pay-text">286,000원</span>
								</div>
							</li>
						</ul>
						<div class="right-section-bot">
								<div class="right-section-bot2">
									<span class="right-sec-bo2-box">
										<input class="bot2-checkbox" type="checkbox" name="checkall" onclick="selectAll(this)" value="selectall">
										<b class="checkall-text">주문 내용을 확인했으며, 아래 내용에 모두 동의합니다.</b>
									</span>
								</div>
								<ul class="right-section-bot3">
									<li class="bot3-li">
										<div class="bot3-li-div">
											<span class="bot3-li-div-span">
												<input class="bot3-li-div-span-input" type="checkbox" name="checkone" onclick="checkSelectAll()" required="required"/>
												<b class="checkall-text">(필수) 개인정보 수집/이용 동의</b>
											</span>
											<button type="button" class="more-view1">보기</button>
										</div>
									</li>
									<li class="bot3-li">
										<div class="bot3-li-div">
											<span class="bot3-li-div-span">
												<input class="bot3-li-div-span-input" type="checkbox" name="checkone" onclick="checkSelectAll()" required="required"/>
													<b class="checkall-text">(필수) 개인정보 제3자 제공 동의</b>
											</span>
											<button type="button" class="more-view1">보기</button>
										</div>
									</li>
									<li class="bot3-li">
										<div class="bot3-li-div">
											<span class="bot3-li-div-span">
												<input class="bot3-li-div-span-input" type="checkbox" name="checkone" onclick="checkSelectAll()" required="required"/>
													<b class="checkall-text">(필수) 결제대행 서비스 이용약관</b>
											</span>
											<a class="KG-company" href="https://www.inicis.com/terms">(주)KG이니시스</a>
										</div>
									</li>
								</ul>
							<p class="right-section-bot4">
							결제 및 계좌 안내 시 상호명은
							<em>(주)무신사</em>
							로 표기되니 참고 부탁드립니다.
							</p>
						</div>
						<div class="right-section-bot-btn">
							<button class="right-section-bot-checkout">CHECK OUT</button>
						</div>
					</div>
				</section>
			</aside>
		</div>
	</div>
	<!-- 
	<div class="for-modal">
		<div class="deli-info-modal" open="">
			<button class="modal-close" type="button">
				<svg class="e1mkvd1x2 css-1e20pup etrxoz0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 84 82">
					<g fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="2" stroke-linecap="square">
						<path d="M82.655.345L1.156 81.844M82.655 81.655L1.156.156"></path>
					</g>
				</svg>
			</button>
			<div class="modal-inside">
				<div class="inside-box">
					<h2 class="deli-info-head">배송안내</h2>
						<ul class="deli-info-modal-ul">
							<li class="css-1tzaxnm esx5ojl3">도서산간 지역의 경우 추후 수령 시 추가 배송비가 발생할 수 있으며, 해외배송은 불가합니다.</li>
							<li class="css-1tzaxnm esx5ojl3">배송지 불분명 및 수신불가 연락처 기입으로 반송되는 왕복 택배 비용은 구매자 부담으로 정확한 주소 및 통화 가능한 연락처 필수 기입.</li>
							<li class="css-1tzaxnm esx5ojl3">대리 주문으로 해외 주소로 발송 전, 주문품 꼭 확인해주세요. 오배송 및 불량 교환에 따른 배송비는 국내 택배 비용만 지원됩니다.</li>
						</ul>
				</div>
			</div>
		</div>
	</div>
 -->
<footer>
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush="false"></jsp:include>
</footer>

<script>
$(".sec2-sale-btn-not").on("click", function(){
	var sw = $(".sec2-sale-btn-not").hasClass("sec2-sale-btn");
    if (sw) {
        $(".sec2-sale-btn-not").removeClass("sec2-sale-btn");
        $(".sec2-sale-text-not").removeClass("sec2-sale-text").text("최대 할인이 적용되지 않았어요. 최대 할인을 활성화 하세요.");
        $(".sec2-sale-box-not").removeClass("sec2-sale-box");
    } else {
        $(".sec2-sale-btn-not").addClass("sec2-sale-btn");
        $(".sec2-sale-text-not").addClass("sec2-sale-text").text("최대 할인이 적용됐어요");
        $(".sec2-sale-box-not").addClass("sec2-sale-box");
    }
})

function checkSelectAll()  {
	  // 전체 체크박스
	  const checkboxes 
	    = document.querySelectorAll('input[name="checkone"]');
	  // 선택된 체크박스
	  const checked 
	    = document.querySelectorAll('input[name="checkone"]:checked');
	  // select all 체크박스
	  const selectAll 
	    = document.querySelector('input[name="checkall"]');
	  
	  if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  } else {
	    selectAll.checked = false;
	  }
	}
	function selectAll(selectAll)  {
	  const checkboxes 
	     = document.getElementsByName('checkone');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
	}
	
	$(".right-section-bot-checkout").click(function(){
        // 필수로 체크해야 하는 체크박스가 모두 선택되었는지 확인
        var allChecked = true;
        $(".bot3-li-div-span-input[required]").each(function(){
            if (!$(this).is(":checked")) {
                allChecked = false;
                return false;
            }
        });

        // 필수로 체크해야 하는 체크박스가 모두 선택되지 않은 경우 알림창 띄우기
        if (!allChecked) {
            alert("필수 항목에 동의해야 합니다.");
            return false;
        } else {
        	alert("결제 완료");
        }
    });
	
	/* 우편번호 API */
	function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    /* document.getElementById("detail-location-addr").value = extraAddr; */
                
                } /* else {
                    document.getElementById("detail-location-addr").value = '';
                } */

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('location-text-content').innerText = data.zonecode;
                document.getElementById("post-code-addr").innerText = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detail-location-addr").focus();
            }
        }).open();
    }
</script>
</body>
</html>