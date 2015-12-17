        var gender = prompt("Is the lifter male or female? (enter M or F)");
		var male = "M";
		var female = "F";
		var a, b, c, d, e, f;

		if(gender.localeCompare(male) == 0)
		{
			 a = -216.0475144;
			 b = 16.2606339;
			 c = -0.002388645;
			 d = -0.00113732;
			 e = 7.01863 * (Math.pow(10,-6));
			 f = -1.291 * (Math.pow(10,-8));
		}
		else if (gender.localeCompare(female) == 0) 
		{
			 a = 594.31747775582;
			 b = -27.23842536447;
			 c = 0.82112226871;
			 d = -0.00930733913;
			 e = 0.00004731582;
			 f = 0.00000009054;
		}
		else
		{
			document.write("Please try again!");
		}

		var weight = parseFloat(prompt("How much does the lifter weigh in lbs?"));
		weight *= 0.453592;
		var bench = parseFloat(prompt("What is the bench max in lbs?"));
		var squat = parseFloat(prompt("What is the squat max in lbs?"));
		var dead = parseFloat(prompt("What is the deadlift max in lbs?"));

		var wilks = 500 / (a + (b * weight) + (c * (Math.pow(weight,2))) + (d * (Math.pow(weight,3))) + (e * (Math.pow(weight,4))) + (f * (Math.pow(weight,5))));
		var totalP = bench + squat + dead;
		var wilksT = totalP * wilks;

		var message = "The lifter's total poundage is: " + totalP + "\r\n" + "The lifter's Wilks coefficient is: " + wilks + "\r\n" + "The lifter's normalized total is: " + wilksT;
