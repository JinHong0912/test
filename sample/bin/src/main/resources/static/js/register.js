$(function(){
    $("#reg-btn").click(function(){
        // alert("성공");
        
        //variable
        var userID     = $("#userID");
        var passwd     = $("#passwd");
        var repasswd   = $("#repasswd");
        var userName   = $("#userName");
        var userEmail  = $("#userEmail");
        var userDomain = $("#userDomain");
        var userPhone  = $("#userPhone");

        // msg
        var userIDMsg   = "아이디를 입력하세요.";
        var passwdMsg   = "비밀번호를 입력하세요.";
        var repasswdMsg = "비밀번호를 확인하세요.";
        var passwdConfirmMsg = "비밀번호가 일치하지 않습니다.";
        
        var userNameMsg   = "이름을 입력하세요."
        var userEmailMsg  = "이메일을 입력하세요."
        var userDomainMsg = "이메일 주소를 입력하세요."
        var userPhoneMsg  = "사용자 휴대전화를 입력하세요."

        
        //userid
        if( $.trim( userID.val() ) == ''){
            alert(userIDMsg);
            userID.focus();
            return false; //submit
            
        }
        
        // if( checkValue($.trim( userID.val() )) == false){
        //     alert("아이디는 영어 + 숫자 + 7이상 14이하로 입력하셔야 합니다.");
        //     userID.val("");//input reset
        //     userID.focus();
        //     return false;
        // }

        //passwd
        if( $.trim( passwd.val() ) == ''){
            alert(passwdMsg);
            passwd.focus();
            return false; //submit    
        }
       
        //repasswd
        if( $.trim( repasswd.val() ) == ''){
            alert(repasswdMsg);
            repasswd.focus();
            return false; //submit    
        }
       
       //check passwd
        if( $.trim( passwd.val() ) != $.trim( repasswd.val())){
            alert(passwdConfirmMsg);
            passwd.val("");
            repasswd.val("");
            passwd.focus();
            return false; //submit    
        }

        //userName
        if( $.trim( userName.val() ) == ''){
            alert(userNameMsg);
            userName.focus();
            return false; //submit    
        }
       
        //userEmail
        if( $.trim(userEmail.val() ) == ''){
            alert(userEmailMsg);
            userEmail.focus();
            return false; //submit    
        }
       
        if( $.trim( userDomain.val() ) == ''){
            alert(userDomainMsg);
            userDomain.focus();
            return false; //submit    
        }
       //userPhone
        if( $.trim( userPhone.val() ) == ''){
            alert(userPhoneMsg);
            userPhone.focus();
            return false; //submit    
        }


            
        // 14자리 + 영어 + 숫자만 허용하는 함수 
        function checkValue(data){// data = id 값이다.
            //유효성 검사(정규식 표현) 
            // 숫자 & 영어 && 7자리 부터 12자리까지만
            var exp1 = /^[a-z0-9]{7,14}$/;
            var exp2 = /[a-z]/g;
            var exp3 = /[0-9]/g;

            return ( exp1.test(data) && exp2.test(data) && exp3.test(data) );
        }

    });

});
// url select
$(function (){
    // select -> onChange(js), change(자바스크립트)
    $("#url").change(function(){
       //alert(this.value);
       var data= $(this).val();
        if( data == "1"){
            $("#userDomain").val("");
            $("#userDomain").attr("readonly", false);
            $("#userDomain").focus("");          
      }else{
        $("#userDomain").val(data);
        $("#userDomain").attr("readonly", true);


        }


    });

});


