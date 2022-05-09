const age = parseInt(prompt("How old are you?"));

if (isNaN(age) || age < 0) {
    console.log("please write a real postive number");
} else if (age < 18) {
    console.log("you can't drink alcohol");
} else if (age >= 18 && age < 50 ) {
    console.log("you can drink");
} else if (age >= 50 && age < 90 ) {
    console.log("exercise is the best fit for you");
} else {
    console.log("congratulations");
}
