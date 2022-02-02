var kw = $('#kw');
var form = $('#form');
var showind = 0;
var gmove=false;
var startX
var startY
var endX
var endY
var _gx,_gy;

chrome.runtime.onMessage.addListener(
    function (request,sendResponse) {
  
        
        if (request.action == "changeimg") {
			changebg(1);
            sendResponse({state:'complete'});
        }
     
    }
);
//Generate random numbers and switch pictures randomly
function randomNum(min,max){ 
    switch(arguments.length){ 
        case 1: 
            return Math.floor(Math.random()*minNum+1); 
  
        case 2: 
            return Math.floor(Math.random()*(max-min+1)+min); 
      
            default: 
                return 0; 
           
    } 
} 
 
//switch background
function changebg(ind){

	let bgimg = ['https://wikimon.net/images/b/bc/Digimonrearise_slide.jpg',
				 'https://wikimon.net/images/1/12/Digimonsurvive_slide.jpg',
				 'https://wikimon.net/images/3/37/Digimonprofile_slide.jpg',
				 'https://wikimon.net/images/0/04/BT08_banner_slide.jpg',
				 ];
	let gdiv = document.getElementById('changdiv');
	if(ind == 1){//Randomly switch pictures
		let num = randomNum(0,bgimg.length-1);
		gdiv.style.backgroundImage ="url("+bgimg[num]+")";
		gdiv.style.backgroundRepeat = "no-repeat";
		gdiv.style.backgroundSize = "100%";

	}
}
//page initialization
function init(){
	//Generate a div as an image container
	let gbody = document.getElementsByTagName('body')[0];
	gbody.style.opacity = '0.8';
	let ghtml = document.getElementsByTagName('html')[0],
				gdiv = document.createElement('div');
	gdiv.id = 'changdiv'
	gdiv.style.position = 'fixed';
	gdiv.style.width = '100%';
	gdiv.style.height = '100%';
	gdiv.style.top = '0px';
	gdiv.style.left = '0px';
	gdiv.style.opacity = '0.7';
	gdiv.style.zIndex= '-1';
	ghtml.appendChild(gdiv);



}
init();
changebg(1);