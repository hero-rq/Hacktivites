HTTP 응답코드도 중요하니 가볍게 살펴보겠습니다. 
100번대는 요청을 받았고 처리가 진행중인 것을 뜻합니다. 
200은 요청이 완벽히 수행되었음을 의미합니다.
300번대부터는 뭔가 문제가 있는 것인데요. 300번대는 클라이언트가 뭔가 추가 동작을 수행해야하는 것을 의미합니다. 
400번대는 클라이언트의 요청이 잘못되었음을 뜻합니다. 특히 오류의 대명사인 404 RESPONSE는 아주 유명하죠. 
500번대는 클라이언트의 요청에 문제가 없음에도 서버 측에서 오류가 발생했음을 표시합니다. 

HTTPS는 쉽게 말해서 HTTP의 암호화입니다. 예전에는 주로 암호화가 필요한 경우에 특별히 사용했는데 현재 개발되는 많은 서비스들은 HTTPS를 주로 사용하고 있습니다. HTTPS는 와이어샤크 등을 이용해서 중간에 메시지를 가로채도 도무지 해독 불가능한 메시지만을 출력하는 장점이 있습니다. 다시 말해서, 공격자가 중간에서 메시지를 가로챈다고 해도, 암호화되어서 표시되기 때문에 해당 메시지를(그 안에 담긴 내용을) 실질적으로 탈취하기는 어렵습니다. 
여기까지 간단한 웹의 핵심 개념과 동시에 HTTP와 HTTPS를 살펴보았습니다. 매우 간단해보여도 이 안에 웹의 핵심이 담겨있습니다. 그러면 이대로는 조금 아쉬우니 가볍게 자바스크립트도 훑어볼까요? 


const calculator = {
    name: "hero",
    add: function(a1, b1) {
        return a1 + b1;
    }, 
    sub: function(c1, d1){
        return c1 - d1;    
    }, 
    div: function(a1, b1){
        return a1 / b1;
    },
    mul:function(a1, b1){
        return a1 * b1;
    },
    power: function(s1, v1){
        return s1**v1;
    }
}; 

const addResult = calculator.add(1, 13);
const subResult = calculator.sub(23, 24);
const divResult = calculator.div(31, 12);

console.log(addResult);
console.log(subResult);
console.log(divResult);

제가 직접 짠 간단한 계산기입니다. 매우 쉬운 예시이기 때문에 별다른 설명은 하지 않겠습니다. 

Title : Basic Lectures for White Hackers

a publishing house : Bookk Publisher

isbn : 9791137283008

Author : ME
