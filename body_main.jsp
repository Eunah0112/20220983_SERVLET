<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "현재 페이지는 VGA 그래픽 카드 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	


 <div class="card bg-white text-dark title">
    <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
    <p class="card-text">출처 : 구글검색</p>
 </div>
     <h3>
				<%=tagline%>
	 </h3>
 	<div class="container">
		<div class="row" align="center">
            		<%
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                <div class="card-img-overlay">
                    <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                    <p class="card-text">출처 : 구글 검색</p>
                </div>
                </div>
                <h3><%=rs.getString("p_name")%></h3>
                <p><%=rs.getString("p_description")%>
                <p><%=rs.getString("p_UnitPrice")%>원
                <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>

			</div>
 	<%
			} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
	%>

		</div>
		<hr>
	</div>
                        
    <div class="list-group">
          <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
            은아 시리즈
          </a>
          <a href="#" class="list-group-item list-group-item-action">은아시리즈</a>
          생략….
    </div>
