$(function(){
    $("#search-btn").click(function(){
        var words = $.trim( $("#words").val() );
        
        if( words == '' ){
            alert("검색어를 입력하세요.")
           $("#words").focus();
            return false;
        }
    });
});