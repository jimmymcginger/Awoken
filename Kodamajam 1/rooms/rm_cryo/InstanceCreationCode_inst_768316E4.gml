next_line = [0, 0, 0]
names = [-1, -1, -1];
voice = [-1, -1, -1];
text =[ 
	"Your Cryopod. \nIt's clearly broken. You wonder what happened?.",
	"The name plate reads 'Bryn Briar'.",
	"That's right, your name was Bryn! You remember now!",
];	
	
scripts =[  -1,
			-1,
			[change_variable, obj_progression, "name_known", true],
];			
