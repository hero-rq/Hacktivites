val=1)and(1>3)UNION(SELECT(CHAR(50))

val=1)and(1>3)UNION(SELECT(5%3)

<a id=hackme style="position:relative;left:0;top:0" onclick="this.style.left=parseInt(this.style.left,10)+1+'px';
if(this.style.left=='1600px')this.href='?go='+this.style.left" onmouseover=this.innerHTML='yOu' 
onmouseout=this.innerHTML='O'>O</a><br>
 

hackme라는 id가 존재하고 
클릭할 때 onclick 메서드를 통해 클릭시 1픽셀씩 이동하는 것을 확인할 수 있다. 
또한 조건문에서 this.style.left의 값이 1600이 되면 Goal이 위치한곳과 같아지며 
url에 '?go='+this.style.left이 
추가되며 문제가 해결되는 것 같다. 
직접 1600번의 클릭을 해도 가능하겠지만 너무 불필요한 행동이므로 
다른 시도를 해보자. 

?go='+this.style.left
이 문제는 사실 굉장히 이상한 문제이다. 처음 보자마자 내가 느낀건 carve party랑 상당히 유사하다는 것이었다
그래서 px값을 조정해서 1이 아니라 훨씬 큰 숫자를 얻을 수 있도록 했다 
그리고 어렵지 않게 문제를 해결할 수 있었다 
그러나 여기에는 한가지 조건이 더 붙어있는데 id가 hackme여야 한다는 것이다
아이디와 위에 있는 url을 합쳐서 
hackme.style.left가 1599가 될 수 있도록 한다 
다시 말해서 console에 hackme.style.left=1599를 친다 
그 다음에 한 번만 클릭해도 문제는 해결되게 된다 
