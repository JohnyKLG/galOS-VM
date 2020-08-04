function load(ms){return new Promise(resolve => setTimeout(resolve, ms));}
async function galOS(ins){
    // Definir variáveis de boot
    win = nw.Window.get();
    win.enterFullscreen();
    hd = document.head;
    bd = document.body;
    // Verificar se há requisição para boot
    if(ins === "boot"){
        var pc = "style='color:lime'";
        var pl = "style='color:yellow'";
        bd.style.background = "#000";
        bd.style.color = "#fff";
        bd.style.font ="12px monospace"
        // Carregar os scripts do sistema
        bd.setAttribute('ondragover','event.preventDefault()');
        document.documentElement.style.cursor = 'none';
        bd.innerHTML = "<br>KLG VM BIOS v2.3.1";
        bd.innerHTML += "<br>github.com/JohnyKLG";
        await load(2000);
        bd.innerHTML += "<br><br><br><br><br> Inicializando";
        for(var i = 0; i < 30; i++){await load(100);bd.innerHTML += ".";}
        bd.innerHTML = "<span "+pc+">Carregando gerenciador de registros";        
        for(var i = 0; i < 23; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">reg.js</l></span><br>";
        var s0 = document.createElement('script');s0.src = 'reg.js';hd.appendChild(s0);
        await load(200);
        bd.innerHTML += "<span "+pc+">Carregando engine de gráficos";        
        for(var i = 0; i < 29; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">gen.js</l></span><br>";
        var s1 = document.createElement('script');s1.src = 'gen.js';hd.appendChild(s1);
        await load(200);
        bd.innerHTML += "<span "+pc+">Carregando encoder de imagem";        
        for(var i = 0; i < 30; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">i64.asm</l></span><br>";
        var s2 = document.createElement('script');s2.src = 'i64.asm';hd.appendChild(s2);
        await load(200);
        bd.innerHTML += "<span "+pc+">Carregando decoder de imagem";        
        for(var i = 0; i < 30; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">x64.c</l></span><br>";
        var s3 = document.createElement('script');s3.src = 'x64.c';hd.appendChild(s3);
        await load(200);
        bd.innerHTML += "<span "+pc+">Carregando gerenciador de aplicativos";        
        for(var i = 0; i < 21; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">app.js</l></span><br>";
        var s4 = document.createElement('script');s4.src = 'app.js';hd.appendChild(s4);
        await load(200);
        bd.innerHTML += "<span "+pc+">Carregando gerenciador de autenticação";        
        for(var i = 0; i < 20; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">auth.js</l></span><br>";
        var s5 = document.createElement('script');s5.src = 'auth.js';hd.appendChild(s5);
        await load(100);
        // Definir tag de título para o interpretador
        bd.innerHTML += "<span "+pc+">Identificando para o host";        
        for(var i = 0; i < 33; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">KLG galOS</l></span><br>";
        var tt = document.createElement('title');tt.innerText = 'KLG galOS';hd.appendChild(tt);
        await load(100);
        // Carregar os metadados do interpretador
        bd.innerHTML += "<span "+pc+">Aplicando metadados";        
        for(var i = 0; i < 39; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">OK</l></span><br>";
        var m0 = document.createElement('meta');m0.name = 'description';
            m0.content = 'galOS';hd.appendChild(m0);
        await load(100);
        bd.innerHTML += "<span "+pc+">Ajustando GPU";        
        for(var i = 0; i < 45; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">OK</l></span><br>";
        var m1 = document.createElement('meta');m1.name = 'viewport';
            m1.content = 'width=device-width, initial-scale=1';hd.appendChild(m1);
        await load(200);
        // Iniciar funções do xGen
        bd.innerHTML += "<span "+pc+">Iniciando engine gráfica";
        for(var i = 0; i < 24; i++){await load(35);bd.innerHTML += ".";}        
        insertG('logo','logo',100,167,0,0,30,30);
        for(var i = 0; i < 10; i++){await load(50);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">KLG xGen</l></span><br>";
        document.documentElement.style.cursor = 'default';
        bd.innerHTML += "<span "+pc+">Iniciando tela de autenticação";        
        for(var i = 0; i < 28; i++){await load(25);bd.innerHTML += ".";}
        bd.innerHTML += "<l "+pl+">KLG xAuth</l></span><br>";   
        bd.style.background = "#000 url('"+auth64+"') no-repeat";
        bd.style.backgroundSize = '3px';
        await load(500);
        bd.style.background = "#000 url('"+wall64+"') no-repeat";
        bd.style.backgroundSize = '3px';
        await load(100);
        gAuth();
    }
    // Verificar se há requisição para iniciar o x64
    if(ins === "x64"){
        var stl = document.createElement('style');
        stl.innerHTML = "body{background:url('"+wall64+"') no-repeat center top fixed;background-size:cover;margin:0;}";
        stl.innerHTML+= "#panel{position:fixed;top:0px;left:0px;right:0px;height:35px;background:#000000ba;}";
        stl.innerHTML+= "#panel button{height:35px;border:0;margin:0 9px;background:none;color:#aaa;outline:none;}";
        stl.innerHTML+= "#panel #clock{position:fixed;top:0px;right:50px;}"
        stl.innerHTML+= "#panel button:hover{color:#fff;cursor:pointer;}"
        stl.innerHTML+= "#panel img{position:fixed;top:3px;right:9px;height:32px;border:3px solid #000000ba;border-radius:50%;}";
        stl.innerHTML+= "#desk{position:fixed;top:0px;left:0px;bottom:0px;right:0;background:url('"+auth64+"') no-repeat center top fixed;background-size:cover;margin:0;}"
        hd.appendChild(stl);
        bd.innerHTML = '<div id="panel"></div>';var pn = document.getElementById('panel');
        pn.innerHTML = '<button onclick="win.close()">Aplicativos</button>';
        pn.innerHTML+= '<button onclick="win.reload()">Arquivos</button>';
        pn.innerHTML+= '<button onclick="gAuth()" id="clock"></button>';
        pn.innerHTML+= '<img src="'+user[4]+'" title="'+usr+'">';
        bd.innerHTML+= '<div id="desk"></div>';
        var clock = document.getElementById('clock');
        setInterval(function(){
            clock.innerHTML = ((new Date).toLocaleString().substr(11, 8));
        }, 1000);
    }
}
function gDock(){
    var dock = document.getElementById('dock').style;
    if(dock.display == 'block'){dock.display = 'none';}
    else{dock.display = 'block';}
}
