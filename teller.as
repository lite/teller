var p = getscene();   
var t = new Array(4);
var idx = 0;

function hshow(){
    t[idx%4].visible(0)
    idx += 1;
    trace("this is " + str(idx%4)); 
    t[idx%4].visible(1)
}

for(var i=0; i<4; i++){
    t[i] = p.addsprite(str(i)+".png").size(screensize());
    t[i].setevent(EVENT_TOUCH,hshow);
    t[i].visible(0)
}  

var music = createaudio("0.mp3");
music.play(-1);

var t_exit = p.addsprite("quit.png").pos(150,150);
function hquit(x){  quitgame(); }
t_exit.setevent(EVENT_TOUCH, hquit);
t[0].visible(1)
