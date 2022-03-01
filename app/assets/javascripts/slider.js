


const circle = document.querySelectorAll(".circle");
const circles = [...document.querySelectorAll(".circle")];
const data = [...document.querySelectorAll(`.textt-cont`)];
const ownerText = [...document.querySelectorAll(`.owner-text`)];

circles.forEach((icon, index) => {
  icon.addEventListener('click', function(){

    for(var a = 0;a<=index;a++){
      circles[a].classList.add('active');
      ownerText[a].classList.add(`owner-text-active`);
      const actives = document.querySelectorAll(".active");
      progress.style.width = ((actives.length-1) / (circle.length-1)) * 100 + "%";
    }
    for(var a =0; a<index;a++){
      circles[a].classList.add('complete');
    }
    for(var b = index+1;b<circles.length;b++){
      circles[b].classList.remove('active');
      ownerText[b].classList.remove(`owner-text-active`);
      actives = document.querySelectorAll(".active");
      progress.style.width = ((actives.length-1) / (circle.length-1)) * 100 + "%";
    }
    for(var a =index; a<circles.length;a++){
      circles[a].classList.remove('complete');
    }
    for(var c = 0;c<data.length;c++){
      if(index===c){
        data[index].classList.remove('text-inactive');
        data[index].classList.add('text-active');
      }
      else{
        data[c].classList.add('text-inactive');
      }
    }
  });
});