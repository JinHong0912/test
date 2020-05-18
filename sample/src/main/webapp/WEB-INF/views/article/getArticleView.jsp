<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="part/head.jspf"%>

<!-- 글쓰기에 필요한 부분 -->
<script src="/ckeditor/ckeditor.js"></script>
<!-- 글쓰기에 필요한 부분 -->

<body>
	<div id="tbl-spacing">
		<div id="article-top" class="margin-b20">
			<span class="float-l bold font-18 noto">게시물 상세보기 페이지 입니다.</span> <span
				class="float-r noto font-18"><strong>[
					${boardConfig.boardName} ]</strong> 게시판 입니다.</span>
			<div class="clearfix"></div>
		</div>

		<!-- 글쓰기 -->

		<table>
			<tr>
				<td colspan="2" class="tbl-line"></td>
			</tr>
			<!-- 구분선 -->
			<tr class="tr-50">
				<td class="w-15 align f6 bold"
					style="background-color:${boardConfig.boardColor}">게시물 제목</td>
				<td class="w-85 padding-lr-5">${articleView.subject}</td>
			</tr>

			<tr>
				<td colspan="2" class="tbl-line"></td>
			</tr>
			<!-- 구분선 -->

			<tr class="tr-50">
				<td class="w-15 align f6 bold"
					style="background-color:${boardConfig.boardColor}">게시물 작성자</td>
				<td class="w-85 padding-lr-10">${articleView.writer}</td>
			</tr>

			<tr>
				<td colspan="2" class="tbl-line"></td>
			</tr>
			<!-- 구분선 -->

			<tr class="tr-50">
				<td class="w-15 align f6 bold"
					style="background-color:${boardConfig.boardColor}">게시물 내용</td>
				<td class="w-85 padding-lr-10"><textarea name="content"
						id="editor">${articleView.content}</textarea></td>

				<!--------글쓰기에 필요한 부분 ---------->
				<script>
                    CKEDITOR.replace("editor");
                    CKEDITOR.config.height = 200;
                </script>
				<!---+-------------------------+--->

			</tr>

			<tr>
				<td colspan="2" class="tbl-line"></td>
			</tr>
			<!-- 구분선 -->

			<tr class="tr-50">
				<td class="w-15 align f6 bold"
					style="background-color:${boardConfig.boardColor}">게시물 첨부파일</td>
				<td class="w-85 padding-lr-10"><input type="file" name="files"></td>
			</tr>

			<tr>
				<td colspan="2" class="tbl-line"></td>
			</tr>
			<!-- 구분선 -->

			<tr class="tr-50">
				<td class="w-15 align f6 bold"
					style="background-color:${boardConfig.boardColor}">게시물 조회수</td>
				<td class="w-85 padding-lr-10">${articleView.hit}</td>
			</tr>

		</table>
		<div class="btn-grp margin-t10">
			<span class="float-l"></span>
			<!-- onclick="location.href는 GRT 방식" -->
			<button type="button" class="btn-80 bo-gray bold"
				onclick="location.href='/article?boardCode=${boardCode}'">목록보기</button>
			<span class="float-r">
				<button type="button" class="btn-80 bo-blue bold"
					onclick="location.href='/article/getArticleReply?aid=${articleView.aid}&boardCode=${boardCode}'">답글쓰기</button>
				<button type="button" class="btn-80 bo-blue bold"
					onclick="location.href='/article/setArticleModify?boardCode=${boardCode}&aid=${articleView.aid}'">게시물
					수정</button>
				<button type="button" class="btn-80 bo-blue bold"
					onclick="location.href='/article/setArticleDelete?boardCode=${boardCode}&aid=${articleView.aid}'">게시물
					삭제</button>
			</span>
			<div class="clearfix"></div>
		</div>

		<!-- 글쓰기 마지막 부분 -->

		<!-- 5월 14일 댓글 달기 -->
		<div class=" margin-t30">
			<form name="" id="commentSet">
				<div class="comment-wrap">
					<div class="comment-left float-l">

						<input type="hidden" name="who" id="who"
							value="${sessionScope.userName}" /> <input type="hidden"
							name="boardCode" value="${boardCode}" />
						<!-- 어떤 게시판안에 댓글을 달것인지-->
						<input type="hidden" name="aid" value="${articleView.aid}" />

						<!-- 어떤 게시판에 댓글이 달렸는지 -->
						<textarea class="bo-blue padding-a-10 font-16 bold eng"
							id="comment" name="comment"></textarea>

					</div>
					<div class="comment-right float-r">
						<button type="button" id="commentSetBtn"
							class="comment-box font-18 bold orange">댓글달기</button>
					</div>
				</div>
			</form>
		</div>

		<div class="comment-list">
			<div class="commentList"></div>
		</div>
	</div>
</body>

<!-- 글쓰기에 필요한 부분 -->
<script>
    initSample();
</script>
<!-- 글쓰기에 필요한 부분 -->
<script>
    $(function () {
        $("#reg-btn").click(function () {

            //wyswig editor 유효성 검사
            var str = CKEDITOR.instances.editor;
            if (str.getData() == "") {
                alert("게시물 내용을 입력하세요.");
                str.focus();
                return false;
            }
        });

    });

    /* textarea 유호성 검사  */
   
      var aid = '${articleView.aid}';
      var boardCode = '${boardCode}';

      $(function(){
			$("#commentSetBtn").click(function(){

				  if($.trim($("#comment").val()) == ''){
					  alert("댓글 내용을 입력하세요.");
                      $("#comment").focus();
                        return false;    
                 	 } else {
                           var setData = $("#commentSet").serialize(); //key,value 형식 방식으로 저장 
                      // aid, who, comment, -> List 배열 형태로 만들어 주는 부분
                           $.ajax({
                               type: "post",
                               url: "/comment/commentSet",
                               data: setData,
                               
                               success: function (data) {
                                   if (data == 1) {
                                       alert("댓글이 저장 되었습니다.");
                                       $("#comment").val('');
                                       commentList();
                                   } else {
                                       alert("시스템 오류입니다.")

                                   }
                               }
                           });
					  }
				});
          });//1번 마지막 

          
          function commentList() {
				alert("이까지 됨");
              $.ajax({
                  type: 'post',
                  url: '/comment/getCommentList',
                  data: {
                      'aid': aid,
                      'boardCode': boardCode
                  },
                  success: function (data){
                      
                      var str ='';

                      $.each(data,function(key, value){
//                           alert("each 들어옴 ");
                          str +='<div class="commentArea margin-t10 noto">';
                          	str +='<div class="commentInfo">';
                          		str +='댓글번호 : ' + value.cid + '/ 작성자 :' + value.who;
                          		str +='<a href="#" onClick="commentUpdate(' + value.cid + ',\'' + value.comment + '\')" class="orange bold">[수정]</a>';
                          		str +='<a href="#" onClick="commentDelete(' + value.cid +')" class="orange bold">[삭제]</a>';
                          		str +='<div class="bold commentContent' + value.cid + '">';
                          			str +='<p class="margin" >내용:' + value.comment + '</p>';
                          		str +='</div>';
                          str +='</div>';
                          str +='<hr class="margin-tb-20"/>';
                      	  str +='</div>';

                      });

                      $(".commentList").html(str);
                  }
              });
          }


       function commentUpdate(cid,comment) {
           /* alert(value1);
           alert(value2); */
           var str = '';

           str += '<div class="input-group">';
           str += '<input type="text" class="input-full padding-lr-10" name="comment_' + cid+'" value="'+comment+'">';
           str += '<button class="btn-50 bo-pink bold margin-t10" type="button" onClick="getCommentUpdate('+cid+')">수정</button>';
           str += '</div>';

           $(".commentContent" + cid).html(str); //내 댓긓에 해당되는 내용 위치에 가서 수정으로 변경

       }

       function getCommentUpdate(cid) {
           alert(cid);
           var comment =$('[name=comment_' + cid + ']').val();

           alert(comment);
   			
   		$.ajax({
   			type : "post",
   			url : "/comment/setCommentUpdate",
   			data: { 
   				'cid'   : cid,
   				'comment' : comment,
   				'boardCode': boardCode	
   				},
   			success : function(data) {
    			if( data == 1){
   				commentList();// 댓글 목록 다시 출력	
   				}

       		}
   		});

       }

		/* 댓글 삭제 부분 */
       function commentDelete(cid) {
           alert("삭제")
           $.ajax({

               type: 'post',
               url: '/comment/setCommentDelete',
               data: {
                   'cid': cid, //매개변수
                   'boardCode': boardCode //전역변수 제일 위에 선언

               },
               success: function (data) {
                   if (data == 1) {
                       alert("댓글이 삭제 되었습니다.")
                       commentList();
                   }
               }
           });

       }
       /* commen 출력 */
       $(document).ready(function () { //화면이 처음 로드 될떄
               commentList();
       });   
   
   
</script>

<%@ include file="part/foot.jspf"%>