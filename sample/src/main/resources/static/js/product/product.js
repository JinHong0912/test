

/*이미지 불러 오는 부분*/	
function imgFileViewer(e) {
	sel_files = [];
	$(".imgs-wrap").empty();

	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);

	var index = 0;
	filesArr.forEach(function (f) {
		if( !f.type.match("image.*")) {
			alert("이미지 파일만 업로드가 가능합니다.");
			return;
		}
		sel_files.push(f);

		var reader = new FileReader();
		reader.onload = function(e) {
			var str = '';
			str +="<a href=\"javascript:void(0);\" id=\"img_"+index+"\" onClick=\"deleteImage("+index+");\"><img src=\""+e.target.result+"\" class='img-size'>";
			$(".imgs-wrap").append(str);
			index++;
		}

		reader.readAsDataURL(f);
		
	});
	
}
/*이미지 삭제하는 부분*/
	function deleteImage(idx){
		alert(idx);
		alert(sel_files.length);
		sel_files.slice(idx, 1);
		
		var img_id = "#img_"+idx;
		$(img_id).remove();
	}

//	유효검사 하는 부분
	$(function () {
		$("#btn").click(function () {
			if( $("#majorName").val() == '' ) {
				alert("상품 대분류를 선택하세요.");
				$("#majorName").focus();
				return false;
			}

			if( $("#minorName").val() == '' ) {
				alert("상품 소분류를 선택하세요.");
				$("#minorName").focus();
				return false;
			}

			if( $("#productName").val() == '' ) {
				alert("상품명을 입력하세요.");
				$("#productName").focus();
				return false;
			}
			

			if( $("#productPrice").val() == '' ) {
				alert("상품가격을 입력하세요.");
				$("#productPrice").focus();
				return false;
			}
			
			if( $("#productPrice").val() < 1  ) {
				alert("상품가격은 0 보다 커야 됩니다.");
				$("#productPrice").focus();
				return false;
			}
			
			if( $("#productDC").val() == '' ) {
				alert("상품 할인을 입력하세요.");
				$("#productDC").focus();
				return false;
			}
			
			if( $("#productAmount").val() == '' ) {
				alert("상품 수량을 입력하세요.");
				$("#productAmount").focus();
				return false;
			}

			if( $("#productAmount").val() < 1  ) {
				alert("상품 수량은 0 보다 커야 됩니다.");
				$("#productAmount").focus();
				return false;
			}

			if( $("#productStar").val() == '' ) {
				alert("상품 (기본) 평점 을 입력하세요.");
				$("#productStar").focus();
				return false;
			}

			if( $("#productStar").val() < 1 || $("#productStar").val() > 5 ) {
				alert("상품 평점은 1 ~ 5 점 사이로  입력하세요.");
				$("#productStar").focus();
				return false;
			}
			
			if( $("#productColor").val() == '' ) {
				alert("상품 색상을 입력하세요.");
				$("#productColor").focus();
				return false;
			}
			
			if( $("#productSize").val() == '' ) {
				alert("상품 크기를 입력하세요.");
				$("#productSize").focus();
				return false;
			}
			var str = CKEDITOR.instances.editor;
			if( str.getData() == ""){
					alert("상품 상세 설명을 입력하세요.");
					str.focus();
					return false;
			}

		});
	});



//CKeditor
	


//대분류 이름 가지고 오는 부분
	$(function () {
		$("#majorName").change(function () {
			var majorName =  this.value;

			$.ajax({
				type : "post",
				url : "/cate/selectedMinorCateList",
				data : {
					majorName : majorName
				},
				success : function(data) {
					var str = '';
					
					$.each(data, function(key, value) {
						str += "<option value="+value.minorName+">"+value.minorName+"</option>";
					});

					$(".minorCateSelected").html(str);
					
				}
			});
			
		});
	});

//대분류 리스트 가지고 오는 부분
	function majorCateList() {
		$.ajax({
			type : "post",
			url : "/cate/getMajorCateList",
			data : {},
			success : function(data) {
				$.each(data, function(key, value) {
					$(".majorCateSelected").append("<option value="+value.majorName+">"+value.majorName+"</option>");
				});

			}
		});
	}


//대분류 리스트 ,파일 보여주는 부분
	$(document).ready(function () {
		majorCateList();
		
		var sel_files = [];
		$("#product-img").on("change", imgFileViewer);
	});

	

	
	