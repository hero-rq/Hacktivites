const calculator = {
    name: "hero",
    add: function(a1, b1) {
        console.log(a1 + b1);
    }, 
    sub: function(c1, d1){
        console.log(c1 - d1);    
    }, 
    div: function(a1, b1){
        console.log(a1 / b1);
    },
    mul:function(a1, b1){
        console.log(a1 * b1);
    },
    power: function(s1, v1){
        console.log(s1**v1);
    }
}; 

calculator.add(1, 13);
calculator.sub(123, 24);
calculator.div(124, 12);
calculator.mul(123, 235);
calculator.power(2, 5);

calculator.div(1242525, 13424);
calculator.power(1215, 22);
