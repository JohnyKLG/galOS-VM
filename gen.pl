document.addEventListener("dragstart", function( event ){
/* ----------------- Johny KLG -----------------+
| Plataforma gráfica de gerenciamento do galOS  |
| baseada em object style CSS3 sendo puramente  |
| desenvolvida em JavaScript.                   |
|                                               |
| Brasil, julho de 2020                         |
+--------------------------------------------- */
    var img = new Image();
    img.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAAUEBAAAACwAAAAAAQABAAACAkQBADs=';
    event.dataTransfer.setDragImage(img, 0, 0);
}, false);
// Definir posição do objeto
function dragG(id,act){    
    var eid = document.getElementById(id);
    var e = window.event;
    if(act == "s"){
        if(e.clientY >= 1){y = e.clientY}
        if(e.clientX >= 1){x = e.clientX}
        eid.style.top = y+"px";
        eid.style.left = x+"px";
        eid.style.zIndex = "10";
    }else if(act == "e"){
        eid.style.zIndex = "0";
    }
}
function insertG(obj,id,w,h,t,l,b,r,m,i){
    // Objeto gráfico logo
    if(obj === 'logo'){
        var logo = 'position:absolute;top:'+t+';left:'+l+';bottom:'+b+';right:'+r+';width:'+w+'px;height:'+h+'px;margin:'+m+';background:url('+logo64+');filter:invert('+i+')';
        var lgo = document.createElement('logo');lgo.style = logo;lgo.id = id;bd.appendChild(lgo);
    }
    // Objeto gráfico popup
    if(obj === 'popup'){
        var dstl = 'position:absolute;top:'+t+'%;left:'+l+'%;width:'+w+'px;height:'+h+'px;';
            dstl+= 'border-radius:9px;background:#cccccccd;color:#333;';
            dstl+= 'box-shadow: 0px 0px 10px #333;font:9.5pt sans-serif;padding:0 9px';
        var div = document.createElement('div');div.style = dstl;div.id = id;
        div.draggable = "true";div.setAttribute('ondrag','dragG(this.id,"s")');
        div.setAttribute('ondragend','dragG(this.id,"e")');bd.appendChild(div);
    }
    // Objeto gráfico alert
    if(obj === 'alert'){
        var bstl = 'position:fixed;top:0px;left:0px;bottom:0px;right:0px;';
            bstl+= 'background:#222222aa;color:#333;margin:0;padding:0;border:0';
        var bkg = document.createElement('div');bkg.style = bstl;bkg.id = 'bkg';bd.appendChild(bkg);
        var dstl = 'position:absolute;top:'+t+'px;right:'+r+'px;width:'+w+'px;height:'+h+'px;';
            dstl+= 'border-radius:9px;background:#cccccccd;color:#333;';
            dstl+= 'box-shadow: 0px 0px 10px #333;font:9.5pt sans-serif;padding:0 9px';
        var div = document.createElement('div');div.style = dstl;div.id = id;
        div.draggable = "true";div.setAttribute('ondrag','dragG(this.id,"s")');
        div.setAttribute('ondragend','dragG(this.id,"e")');bd.appendChild(div);
    }
}function toBase64String(img) {
    var canvas = document.createElement("canvas");
    canvas.width = '90';
    canvas.height = '90';
    var ctx = canvas.getContext("2d");
    ctx.drawImage(img, 0, 0, 90, 90);
    var dataURL = canvas.toDataURL("image/png");
    return dataURL;
}
function gAlert(cnd,act){
    var stl = document.createElement('style');
    stl.innerHTML+= "#alert .btn{float:right;width:130px;height:30px;border:1px solid #888;background:#bbbbbb55;border-radius:5px;outline:none;}";
    stl.innerHTML+= "#alert .btn:hover{box-shadow: 0px 0px 5px #577;border:1px solid #577;background:#eeeeee40;color:#355;cursor:pointer;}";        
    hd.appendChild(stl);
    insertG('alert','alert',270,135,20,0,0,20);
    bkg = document.getElementById('bkg');
    alert = document.getElementById('alert');
    if(cnd == 'empty'){tit = 'Campos obrigatórios!';}
    if(cnd == 'empty'){msg = 'Seu nome, seu e-mail e uma senha são de preenchimento obrigatório';}
    if(cnd == 'mail'){tit = 'Endereços diferentes!';}
    if(cnd == 'mail'){msg = 'Os endereços de e-mail não conferem';}
    if(cnd == 'pass'){tit = 'Senhas diferentes!';}
    if(cnd == 'pass'){msg = 'As senhas digitadas estão diferentes';}
    if(cnd == 'cadOK'){tit = 'Sucesso!';}
    if(cnd == 'cadOK'){msg = 'Um novo usuário foi cadastrado no galOS ;)';}
    alert.innerHTML = '<h2>'+tit+'</h2>';
    alert.innerHTML+= '<span>'+msg+'</span><br><br>';
    if(act == '0'){actn = 'alert.remove();bkg.remove()';}else{actn = act;}
    alert.innerHTML+= '<button class="btn" onclick="'+actn+'">OK</button>';
}
function genClear(){
    var stl = document.getElementsByTagName("style")[0];
    if(stl){stl.remove();}
    bd.innerHTML = null;
    bd.removeAttribute("onload");
    bd.removeAttribute("style");
}
async function gEfect(efc){
    if(efc == 'desktop'){
        var desk = document.getElementById('desk');
        for(var i = 99; i >= 10; i--){await load(10);desk.style.opacity = '0.'+i;}
        for(var i = 9; i >= 0; i--){await load(10);desk.style.opacity = '0.0'+i;}
        desk.remove();
    }
}