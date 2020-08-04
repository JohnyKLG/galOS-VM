async function gAuth(){
    genClear();
    insertG('logo','logo',100,167,'auto','auto','30px','30px',0,1);
    bd.style.background = "url('"+auth64+"') no-repeat center top fixed";
    bd.style.backgroundSize = 'cover';
    // Verificar se há usuário
    if(localStorage.getItem('user')){
        userA = localStorage.getItem("user");
        user = userA.split("*");
        if(user[2] == '0'){usr = user[0].split(" ")[0];}else{usr = user[2];}
        var stl = document.createElement('style');
        stl.innerHTML = "#auth{margin:-102px -90px;text-align:center;}";        
        stl.innerHTML+= "#auth h2{font-size:16pt;margin:0;}";
        stl.innerHTML+= "#auth span{font-size:8pt;margin:0;}";
        stl.innerHTML+= "#auth div{margin:9px 45px;width:90px;height:90px;background:url('"+user[4]+"') no-repeat;";
        stl.innerHTML+= "background-size:90px;border:1px solid #888;border-radius:50%;}";
        stl.innerHTML+= "#auth input{width:calc(100% - 16px);padding:2px 7px;height:30px;text-align:center;";
        stl.innerHTML+= "margin:9px 0;border:1px solid #999;background:#eeeeee77;border-radius:5px;outline:none;}";
        stl.innerHTML+= "#auth input:hover{background:#eeeeeeaa;}";
        stl.innerHTML+= "button{position:fixed;bottom:30px;width:40px;height:40px;background:#eeeeee55;box-shadow: 0px 0px 10px #333;padding:0;border:0;border-radius:9px;}";
        stl.innerHTML+= "button:hover{background:#eeeeeecd;cursor:pointer;}";
        hd.appendChild(stl);
        insertG('popup','auth',180,204,50,50,0,0);
        auth = document.getElementById('auth');
        auth.innerHTML = '<div ondblclick="gUser(\'new\')"></div>';
        auth.innerHTML+= '<h2>'+usr+'</h2>';
        auth.innerHTML+= '<span>'+user[1]+'</span>';
        auth.innerHTML+= '<input id="pw" type="password" placeholder="Digite sua senha" onkeyup="gLogin(this.value)"></input>';
        bd.innerHTML+= '<button style="left:30px"><img src="'+pwer64+'" width="25px"></button>'
        bd.innerHTML+= '<button style="left:80px"><img src="'+cnfg64+'" width="25px"></button>'
        document.getElementById('pw').focus();
        //await load(5000);
        //win.reload();
    }else{
        var stl = document.createElement('style');
        stl.innerHTML = "#auth{margin:-67px -135px;}";
        stl.innerHTML+= "#auth .btn{width:130px;height:30px;border:1px solid #888;background:#bbbbbb55;border-radius:5px;outline:none;}";
        stl.innerHTML+= "#auth .btn:hover{box-shadow: 0px 0px 5px #577;border:1px solid #577;background:#eeeeee40;color:#355;cursor:pointer;}";        
        hd.appendChild(stl);
        insertG('popup','auth',270,135,50,50,0,0);
        auth = document.getElementById('auth');
        auth.innerHTML = '<h2>Olá, tudo bem?</h2>';
        auth.innerHTML+= '<span>Não identificamos nenhum usuário cadastrado neste host, o que você gostaria de fazer?</span><br><br>';
        auth.innerHTML+= '<button class="btn" onclick="gUser(\'new\')" style="margin-right:10px">Cadastrar usuário</button>';
        auth.innerHTML+= '<button class="btn" onclick="gUser(\'imp\')">Importar usuário</button>';
    }
}
async function gLogin(pw){
    if(pw === user[3]){
        genClear();
        galOS('x64');
        await load(1000);
        gEfect('desktop');
    }
}
function gUser(ins){
    genClear();
    insertG('logo','logo',100,167,0,0,30,30);
    bd.style.background = "url('"+auth64+"') no-repeat center top fixed";
    bd.style.backgroundSize = 'cover';
    if(ins === 'new'){
        var stl = document.createElement('style');
        stl.innerHTML = "#pnew{margin:-175px -150px;text-align:right;}";
        stl.innerHTML+= "#pnew h3{float:left;}";
        stl.innerHTML+= "#pnew input{width:calc(100% - 16px);padding:2px 7px;height:30px;margin:3px 0;border:1px solid #999;background:#eeeeee77;border-radius:5px;outline:none;}";
        stl.innerHTML+= "#pnew input:hover{background:#eeeeeeaa;}";
        stl.innerHTML+= "#pnew #fd0{float:left;width:calc(100% - 98px);}";
        stl.innerHTML+= "#pnew div{position:absolute;top:9px;right:9px;width:73px;height:73px;border:1px solid #888;border-radius:7px;";
        stl.innerHTML+= "background:#eeeeee77;color:#888;text-align:center;line-height:73px;}";
        stl.innerHTML+= "#pnew div #prev{position:absolute;top:0px;left:0px;width:100%;height:100%;margin:0;padding:0;border:0;border-radius:6px;}";
        stl.innerHTML+= "#pnew div input{position:absolute;top:0px;left:0px;width:100%;height:100%;margin:0;padding:0;border:0;opacity:0;cursor:pointer;}";
        stl.innerHTML+= "#pnew #gFileOut{display:none;}";
        stl.innerHTML+= "#pnew .btn{width:100px;height:30px;border:1px solid #888;background:#bbbbbb55;border-radius:5px;outline:none;}";
        stl.innerHTML+= "#pnew .btn:hover{box-shadow: 0px 0px 5px #577;border:1px solid #577;background:#eeeeee40;color:#355;cursor:pointer;}";
        stl.innerHTML+= "#pnew #cnl:hover{box-shadow: 0px 0px 5px #755;border:1px solid #755;color:#533;}";
        hd.appendChild(stl);
        insertG('popup','pnew',300,350,50,50,0,0);
        pnew = document.getElementById('pnew');
        pnew.innerHTML = '<h3>Novo usuário</h3>';
        pnew.innerHTML+= '<input id="fd0" type="text" placeholder="Qual o seu nome? (completo)"></input>';
        pnew.innerHTML+= '<input id="fd1" type="email" placeholder="Qual o seu e-mail?"></input>';
        pnew.innerHTML+= '<input id="fd2" type="email" placeholder="Confirme seu e-mail."></input>';
        pnew.innerHTML+= '<input id="fd3" type="text" placeholder="Se preferir utilizar um nickname, digite-o aqui."></input>';
        pnew.innerHTML+= '<input id="fd4" type="password" placeholder="Crie uma senha."></input>';
        pnew.innerHTML+= '<input id="fd5" type="password" placeholder="Confirme a senha." style="margin-bottom:15px"></input>';
        pnew.innerHTML+= '<div>Foto<img id="prev"/><input type="file" accept="image/*" onchange="gRegFile(event)"></div>';
        pnew.innerHTML+= '<button class="btn" id="cnl" onclick="gAuth()" style="margin-right:10px">Cancelar</button>';
        pnew.innerHTML+= '<button class="btn" onclick="gReg(\'user\')">Concluir</button><img id="gFileOut"/>';
    }else if(ins === 'imp'){
        var stl = document.createElement('style');
        stl.innerHTML = "#pimp{margin:-91px -149px;}";
        stl.innerHTML+= "#pimp input{width:50px;padding:2px 7px;height:30px;margin:3px 0;";
        stl.innerHTML+= "border:1px solid #999;background:#eeeeee77;border-radius:5px;outline:none;";
        stl.innerHTML+= "text-transform:uppercase;text-align:center;font:17px sans-serif;}";
        stl.innerHTML+= "#pimp input:hover{background:#eeeeeeaa;}";
        stl.innerHTML+= "#pimp .btn{width:100px;height:30px;border:1px solid #888;background:#bbbbbb55;border-radius:5px;outline:none;float:right;}";
        stl.innerHTML+= "#pimp .btn:hover{box-shadow: 0px 0px 5px #577;border:1px solid #577;background:#eeeeee40;color:#355;cursor:pointer;}";
        stl.innerHTML+= "#pimp #cnl:hover{box-shadow: 0px 0px 5px #755;border:1px solid #755;color:#533;}";
        hd.appendChild(stl);
        var sep = "&nbsp;-&nbsp;";
        insertG('popup','pimp',298,182,50,50,0,0);
        pimp = document.getElementById('pimp');
        pimp.innerHTML = '<h3>Importar usuário</h3>';
        pimp.innerHTML+= '<span>Por favor digite sua chave pessoal, para iniciar o processo de validação de identidade.</span><br><br>';
        pimp.innerHTML+= '<input id="fd0" type="text" maxlength="4"></input>'+sep;
        pimp.innerHTML+= '<input id="fd1" type="text" maxlength="4"></input>'+sep;
        pimp.innerHTML+= '<input id="fd2" type="text" maxlength="4"></input>'+sep;
        pimp.innerHTML+= '<input id="fd3" type="text" maxlength="4" style="margin-bottom:15px"></input>';
        pimp.innerHTML+= '<button class="btn" onclick="gReg(\'code\')">Concluir</button>';
        pimp.innerHTML+= '<button class="btn" id="cnl" onclick="gAuth()" style="margin-right:10px">Cancelar</button>';
    }
}