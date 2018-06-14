var kms = 50;
var evaluation;

if (kms >=50) {
  evaluation = "awesome!"
} else {
  evaluation = "did you run at all?"
}

// console.log(evaluation)
document.write(evaluation);

// for loop
for (var i = 0; i < 5; i++) {
	console.log("The number is " + i);
}

// while loop
var i = 0;
while (i < 5) {
	console.log("The number is " + i);
	i++;
}

// do ... while loop
var i = 0;
do {
	console.log("The number is " + i);
	i++;
} while (i < 5);

// break statement
for (var i = 0; i < 5; i++) {
	if (i == 2) {
	break;
	}
	console.log("The number is " + i);
}

// ++ Continue Statement
for (var i = 0; i < 5; i++) {
	if (i == 2) {
	continue;
	}
	console.log("The number is " + i);
}
