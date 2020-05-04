$(function () {
    $("#login-btn").click(function () {

        //variable
        var userID     = $("#userID");
        var passwd     = $("#passwd");

         // msg
         var userIDMsg   = "아이디를 입력하세요.";
         var passwdMsg   = "비밀번호를 입력하세요.";

        // userid
         if( $.trim( userID.val() ) == ''){
            alert(userIDMsg);
            userID.focus();
            return false; //submit
            
        }
        //passwd
        if( $.trim( passwd.val() ) == ''){
            alert(passwdMsg);
            passwd.focus();
            return false; //submit    
        }
    });

});