<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%@include file ="header_mngr.jsp" %>


<body>
<div class=my_wrapper>

  <div class="page-title">
        <div class="container">
            <h2 class = notice_board>문의사항</h2>
        </div>
    </div>

<div class="question_div">
<table class="question_board" >
	<tr>
		<th class="qsd_col1"><h4>${stv.q_num}</h4></th>
		<th class="qsd_col2"><h2>${stv.q_title}</h2></th>
		<th class="qsd_col3"><h4>${stv.q_date}</h4></th>
	</tr>
	<tr>
		<td class="question_board" colspan="3">${stv.q_comment}</td>
	</tr>	
	<tr>
		<td class="question_board" colspan="3">${stv.answer}</td>
	</tr>
</table> 
</div>

<div class=question_update>
	<a href="questionAnswer_mngr.jsp?comment=${stv.q_comment}&answer=${stv.answer}&title=${stv.q_title}&num=${stv.q_num}">
	<button class = question_button>
		답변하기			
	</button></a>
	<a href="QuestionDelete_mngr.question?q_num=${stv.q_num}">
	<button class = question_button>
		삭제하기			
	</button></a>
</div>

</div>
</body>
</html>