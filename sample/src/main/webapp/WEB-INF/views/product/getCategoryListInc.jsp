<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="/css/product/product.css">

<!-- if에 따라 바뀌는 부분 -->
<div id="main-board" class="bg-color-8 br-3 margin-t20 padding-a-20">
	<div class="title-wrap">
		<span class="font-16 bold kor">3. 상품 분류 페이지</span> <span
			class="font-16 noto"> <%-- 	<c:if test="${words eq ''}">
				전체 생성된 게시판은 <strong>${boardCount}명</strong> 입니다.
			</c:if> --%> <%-- <c:if test="${words ne ''}">
				검색 된 게시판은 <strong>${boardCount}명</strong> 입니다.
			</c:if> --%>
		</span>
	</div>


	<!-- 회원보기 -->
	<!-- list 박스  부분-->
	<div id="category-view" class="margin-t30">

		<table>
		<!-- 대분류 부분 -->
			<tr>
				<td colspan="2" class="tbl-line"></td>
			</tr>
			<tr class="tr-45">
				<td rowspan="2" class="w-15 bg-color-3 f6 align bold">상품대분류</td>

				<td class="w-85 padding-lr-5">
					
					<input type="text" name="majorCode" id="majorCode" 
					autocomplete="false" class="input-200 padding-lr-5" placeholder="예) 대분류코드 : 숫자/ 영어로만 입력" /> 
					<input type="text" name="majorName" id="majorName" class="input-200 padding-lr-5" autocomplete="off" placeholder="예) 대분류 이름" />

					<button type="button" id="major-btn" class="btn-50 bo-gray bold">저장</button>
				
				</td>
			</tr>
			<tr class="tr-45">
				<td class="w-85 padding-lr-5 font-14">
					<!-- 디비에 입력된 대분류가 여기에 생성 -->
						<div class="majorCateArea"></div>
					<!-- 디비에 입력된 대분류가 여기에 생성 -->

				</td>
			</tr>
			<!-- 대분류 부분 끝-->
			
			<!-- 소분류 -->
			
			<tr>
				<td colspan="2" class="tbl-line"></td>
			</tr>
			<tr class="tr-45">
				<td rowspan="2" class="w-15 bg-color-3 f6 align bold">상품 소분류  등록</td>

				<td class="w-85 padding-lr-5">
				<select name="majorCate" id="majorCateSeleceted" class="majorCateSelected input-200">
					<option value="">선택하세요</option>
				</select>
								
				<input type="text" name="minorCode" id="minorCode" class="input-200 padding-lr-5" placeholder="예) 소분류코드 : 숫자/ 양어로만 입력" /> 
				<input type="text" name="minorName" id="minorName" class="input-200 padding-lr-5" placeholder="예) 소분류 이름" />
				<button type="button" id="minor-btn" class="btn-50 bo-gray bold">저장</button>
	
				</td>
			</tr>
			<tr class="tr-45">
				<td class="w-85 padding-lr-5">
					<!-- 디비에 입력된 소분류가 여기에 생성 -->
						<div class="minorCateArea"></div> 
					<!-- 디비에 입력된 소분류가 여기에 생성 -->

				</td>
			</tr>
		</table>
		<div class="btn-grp margin-t20">
			<div class="btn-left float-l">
				<button type="button" onclick="javascript:location.href='/board'"
					class="btn-50 bo-gray bold font-12">목록</button>
			</div>
			<div class="btn-left float-r">
				<button type="submit" id="board-btn"
					class="btn-80 bo-blue bold font-12">게시판 생성</button>
				<button type="reset" onclick="" class="btn-80 bo-blue bold font-12">게시판
					취소</button>
			</div>
			<div class="clearfix"></div>
		</div>
		</form>
	</div>
</div>
<script>
/*  */
$(function(){
	//대분류
	$("#majorCode").blur(function(){

		var majorCode = $.trim( $("#majorCode").val() );
		var hangul = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

		if( hangul.test(majorCode) ){
			alert("코드에 한글은 사용할 수 없습니다.");

			$("#majorCode").val('');
			$("#majorCode").focus();
		}
	});//대분류 닫기

	//소분류
	$("#minorCode").blur(function(){

		var minorCode = $.trim( $("#minorCode").val() );
		var hangul = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

		if( hangul.test(minorCode) ){
			alert("코드에 한글은 사용 할 수 없습니다.");

			$("#minorCode").val('');
			$("#minorCode").focus();

			return false;
		} 
	});// 소분류 닫는 부분
});//대분류, 소분류 전체닫기

$(function(){
		$("#major-btn").click(function(){
			
			var code = $.trim( $("#majorCode").val() );
			var name = $.trim( $("#majorName").val() );	

			if( code == '' ){
				alert("대분류 코드를 입력하세요.");
				$("#majorCode").focus();
				return false;
			}

			if( name == '' ){
				alert("대분류 이름을 입력하세요.");
				$("#majorName").focus();
				return false;
			}

			$.ajax({

				type : "post",
				url  : "/cate/setMajorCate",
				data :{
						majorCode : code,
						majorName : name
						
				}, 
				success : function(data){
// 					alert("dd")
					if( data == "overflow" ){
						
						alert("대분류는 8개만 만들 수 있습니다.");
						$("#majorCode").val('');
						$("#majorName").val('');

					}else if( data == "checked"){

						alert("중복되는 대분류 코드입니다. 다시 입력해 주세요.");
						$("#majorCode").val('');
						$("#majorCode").focus();

					}else{
						alert("대분류가 생성되었습니다.");
						window.location.reload();
												
					}

				}

			});//ajax
 		});//대분류 안에
});//대분류/소분류 부분


/* 소분류 작업 부분 */

$(function(){
// 		alert("dsadsa")
		$("#minor-btn").click(function(){
// 			alert("dsada")
			var majorName = $.trim( $("#majorCateSeleceted").val() );
			var minorCode = $.trim( $("#minorCode").val() );
			var minorName = $.trim( $("#minorName").val() );	

			if( minorCode == '' ){
				alert("소분류 코드를 입력하세요.");
				$("#minorCode").focus();
				return false;
			}

			if( minorName == '' ){
				alert("소분류 이름을 입력하세요.");
				$("#minorName").focus();
				return false;
			}

			$.ajax({

				type : "post",
				url  : "/cate/setMinorCate",
				data :{
					minorCode : minorCode,
					minorName : minorName,
					majorName : majorName
						
				}, 
				success : function(data){
					alert("dd");
					alert("소분류가 저장이 완료 되었습니다.");
					window.location.reload();
				}

			});//ajax
 		});//소분류 안에
});//소분류 부분


</script>
<script>
//대분류 리스트 보여 주는 부분

function majorCateList(){
// 		alert("majorCateList 까지 됨"); 
		$.ajax({
			type : "post",
			url  : "/cate/getMajorCateList",
			data :{},
			success : function(data){
					var str ='';
				$.each(data, function(key,value) {
				
					str +='<span class="cateTag">'+value.majorName+'('+value.majorCode+')';
					str +='<a href="#" onClick="setMajorDelete('+value.majorCode+')" class="close">';
					str +='<i class="far fa-times-circle"></i>';
					str +='</a>';
					str +='</span>';
				});
				
				$(".majorCateArea").html(str);
			}
		});	
}

/* =================소분류 부분 =======================================================*/


</script>
<script>
function minorCateList(){
	alert("majorCateList 까지 됨"); 
     $.ajax({
	type : "post",
	url  : "/cate/getMinorCateList",
	data :{},
	success : function(data) {

			var str ='';
		$.each(data, function(key,value) {
		
			str +='<span class="cateTag">'+value.minorName+'-'+value.minorCode+'('+value.majorName+')';
				str +='<a href="#" onClick="setMinorDelete('+value.minorCode+',\''+value.majorName+'\')" class="close">';
				str +='<i class="far fa-times-circle"></i>';
				str +='</a>';
				str +='</span>';
		});
		
		$(".minorCateArea").html(str);
	}
});	
}



</script>
<!-- 대분류 삭제하는 부분 -->
<script>
	function setMajorDelete(majorCode){
// 		alert(majorCode);
		if ( confirm("선택하신 대분류를 삭제하시겠습니까?") == false ){
			return;

		}else{

				$.ajax({
					type : "post",
					url  : "/cate/setMajorDelete",
					data :{
						majorCode : majorCode	
					}, 	
					success : function(data){
						if( data == "success" ){
							window.location.reload();
						}

					} 
					

			});//ajax
			
			
		}//if
	}//대분류 삭제 부분

</script>

<script>
	function setMinorDelete(minorCode, majorName){
		alert("됨");
		if ( confirm("선택하신 소분류를 삭제하시겠습니까?") == false ){
			return;

		}else{
			$.ajax({
				type : "post",
				url  : "/cate/setMinorDelete",
				data :{
					minorCode : minorCode,
					majorName : majorName
				},
				success : function(data){
					if( data == "success" ){
						alert("소분류 삭제가 완료 되었습니다.");
						window.location.reload();
					}

				},
				error : function(){
					alert("에러");
				}
				

			});		
				
		}
	}
</script>
<script>
	function majorCateSeleceted(){
// 		alert("셀렉트 박수")
		$.ajax({
			type : "post",
			url  : "/cate/getMajorCateList",
			data :{},
			success : function(data) {
				$.each(data, function(key,value) {
					$(".majorCateSelected").append("<option value="+value.majorName+">"+value.majorName+"</option>")
				});
			}
		});	
	}




</script>

<script>
	$(document).ready(function(){
		majorCateList();
		minorCateList();
		
		majorCateSeleceted();
		
	});
</script>

<script src="../js/product/product.js"></script>