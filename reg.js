function gReg(opr){
    if(opr == 'user'){
        var name = document.getElementById('fd0').value;
        var mail = document.getElementById('fd1').value;
        var cfml = document.getElementById('fd2').value;
        var nick = document.getElementById('fd3').value;
        var pass = document.getElementById('fd4').value;
        var cfpw = document.getElementById('fd5').value;
        if(name && mail && pass){
            if(mail == cfml){
                var mail = document.getElementById('fd1').value;
                if(pass == cfpw){
                    if(nick){nick = nick}else{nick = '0';}
                    var str = name+"*"+mail+"*"+nick+"*"+document.getElementById('fd4').value+"*"+localStorage.getItem('pic');
                    localStorage.setItem('user', str);
                    localStorage.removeItem('pic');
                    gAlert('cadOK','gAuth()');                
                }else{gAlert('pass','0');}
            }else{gAlert('mail','0');}
        }else{gAlert('empty','0');}
    }
    if(opr == 'code'){
        var cd0 = document.getElementById('fd0').value;
        var cd1 = document.getElementById('fd1').value;
        var cd2 = document.getElementById('fd2').value;
        var cd3 = document.getElementById('fd3').value;
        var str = cd0+cd1+cd2+cd3;
        var code = str.toUpperCase();
        alert('code = '+code);
    }
}
var gRegFile = function(event){
    var prv = document.getElementById('prev');
    prv.src = URL.createObjectURL(event.target.files[0]);
    var out = document.getElementById('gFileOut');
    out.src = URL.createObjectURL(event.target.files[0]);
    prv.onload = function(){
        URL.revokeObjectURL(prv.src);
    }
    out.onload = function(){
        URL.revokeObjectURL(out.src);
        gRegPrev();
    }
};
function gRegPrev(){
    localStorage.setItem('pic', toBase64String(document.getElementById('gFileOut')));
}