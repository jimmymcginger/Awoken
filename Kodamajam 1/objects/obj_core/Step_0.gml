if(obj_progression.final_step ==3){
	obj_player.x = 1141;
	obj_player.y = 160;
	obj_player.dont_draw = true;
	create_textbox(
		["Mr. Computer?",
		"Yes?",
		"In the last month have I got better at science?",
		"I noticed an upward trend in the amount of correct answers to the questions you request me to give you.",
		"Gimme another.",
		"What is the purpose of photosynthesis?",
		"That one's easy! It's how plants make food.",
		"While not strictly correct, it is an analogy your text books appear to accept as true.",
		"Fine, energy then smarty pants.",
		"That is correct.",
		"Aren't you going to ask me where it comes from and what they use to do it?",
		"If you would like me to.",
		"Yes please!",
		"Where does the energy come from and what part of the plant is used to achieve it?",
		"The Sun and leaves!",
		"Correct."],
		[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
		[-1,- 1, -1 ,-1, -1,- 1, -1 ,-1, -1,- 1, -1 ,-1, -1,- 1, -1 ,-1], true,
		["Bryn", "AI Core", "Bryn", "AI Core", "Bryn", "AI Core", "Bryn", "AI Core", 
		"Bryn", "AI Core", "Bryn", "AI Core", "Bryn", "AI Core", "Bryn", "AI Core"],
		[snd_voice_mc, snd_voice_ai,snd_voice_mc, snd_voice_ai, snd_voice_mc, snd_voice_ai,snd_voice_mc, snd_voice_ai,
		snd_voice_mc, snd_voice_ai,snd_voice_mc, snd_voice_ai, snd_voice_mc, snd_voice_ai,snd_voice_mc, snd_voice_ai]
	)
	obj_progression.final_step =4;
}
if(obj_progression.final_step ==9){
	obj_player.x = 1247;
	obj_player.y = 112;
	obj_player.dont_draw = true;
	create_textbox(
		["Bryn?",
		"What?",
		"You have been stood there for some time now. Would you like me to ask you some educational questions?",
		"Nope.",
		"...",
		"My hair is so long!"],
		[0, 0, 0, 0, 0, 0],
		[-1,- 1, -1 ,-1, -1,- 1], true,
		["AI Core", "Bryn", "AI Core", "Bryn", "Bryn", 
		"Bryn"],
		[snd_voice_ai,snd_voice_mc, snd_voice_ai, snd_voice_mc,snd_voice_mc,
		snd_voice_mc]
	)
	obj_progression.final_step =10;
}
if(obj_progression.final_step ==10 and !instance_exists(obj_textbox)){
	obj_player.moveable = false;
	haircounter++
	if(haircounter >= maxhaircounter){
		hairanim++	
		haircounter = 0;
	}
	if(hairanim >= 7){
		hairanim = 7;
		haircounter = 0;
		obj_progression.final_step =11;
	}	
}
if(obj_progression.final_step ==11 and !instance_exists(obj_textbox)){
	create_textbox(
		["That's better. I don't think I dare cut it...",
		"*sigh*I don't know what to do today...",
		"Your options include: Learning-",
		"If I have to read another text book I'm going to go crazy!",
		"Video games-",
		"I have finished literally all of them! Several times!",
		"You could listen to music.",
		"Music!? I'm sick to death of all the songs! Just stop suggesting things!",
		"Okay.",
		"I hate this!\nI hate it, I hate it, I hate it!",
		"*Sob, sob, sob* I'm sorry, okay? I don't know what to do. I'm scared.\nI'm nearly an adult and I have no idea if this what I'm supposed to be like.",
		"What if I'm weird now? What if my family don't like me when they come out?\nWhat if I go crazy from boredom?",
		"Given the circumstances, you do not appear mentally unwell. You are prone to irritation but this is not abnormal given the circumstances.",
		"You're a robot. You don't get it. People... sense things. They feel things. What if they sense that I'm strange or broken now?",
		"*Sob, sob, sob*"],
		[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
		[-1,-1, -1 ,-1, -1,
		-1,-1,-1, -1, -1, -1, -1, -1, -1, -1], true,
		["Bryn", "Bryn", "AI Core", "Bryn", "AI Core", "Bryn", "AI Core", 
		"Bryn", "AI Core", "Bryn", "Bryn", "Bryn","AI Core", "Bryn", "Bryn"],
		[snd_voice_mc, snd_voice_mc,snd_voice_ai, snd_voice_mc, snd_voice_ai, snd_voice_mc,snd_voice_ai,
		snd_voice_mc, snd_voice_ai,snd_voice_mc,snd_voice_mc, snd_voice_mc, snd_voice_ai, snd_voice_mc, snd_voice_mc]
	)
	obj_progression.final_step =12;
}

if(obj_progression.final_step > 0) exit;
if(talk){
	#region first scene
	if(!instance_exists(obj_textbox) and obj_progression.aistage = 0){
		create_textbox(
			[
				"Hello? Mister Computer?",
				"Hello Bryn Briar.",
				"... My pod broke. Please could you help me.",
				"Ah yes, the broken pod. The chances of a pod malfunctioning in such a manner are slim.\nEven considering the age of the ones chosen for this vessel and their rather inconsistant service history, I calculate a roughly an 8 percent chance of this happening to any of the passengers.",
				"You were most unlucky.\nEspecially considering the propietors of this vessel chose to fill it to capacity and failed to load replacement pods.",
				"What? No spares?",
				"Correct.\nThe tools to repair a pod are also absent, likely due to their high price and the pods' miniscule chance of failure.",
				"B-but, what am I going to do?",
				"Well, I am authorised to awaken your emergency contact in this situation. That would be 'Rose Briar'.\nYour other option is to remain awake for the remainder of the journey.",
				"Oh no... oh no...\nHow long is left?",
				"We are currently 1832 Earth days into the journey. This leaves 9029 Earth days or almost 25 years.",
				"No! Nononono! What am I going to do?",
				"Well, I am authorised to awaken your emergen-",
				"I know! I know what you *can* do. But either me or mum or both of us will have to stay awake for 25 years!",
				"You seem distressed. I am told that it may be benefically for humans in this situation to go for a walk.\nDue to waking because of a malfunction, rather than the pod returning you to consciousness as intended, your memory may also be slow to return.",
				"As such, I have authorised you to access the provisions room, on the 9th floor, and the luggage room, on the 6th. Each of which may stimulate some memories and help inform your decision.\nIt's also worth noting that these rooms will be necessary for survival for whoever should remain awake.",
				"...",
				"I would also recommend the Observation Deck, also on the 9th floor. Information suggest humans find it calming, though the furniture has been removed since the most recent acquisition of this vessel.\nI have provided access for that also.",
				"..."
			],
			[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
			[-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			[change_variable, obj_progression, "aistage", 1],
			[change_variable, obj_core, "walkout", true]
			],
			true,
			["Bryn", "AI Core", "Bryn", "AI Core", "AI Core", "Bryn", "AI Core", 
			"Bryn", "AI Core", "Bryn", "AI Core", "Bryn", "AI Core", "Bryn", "AI Core", "AI Core", "Bryn", "AI Core", "Bryn"],
			[snd_voice_mc, snd_voice_ai, snd_voice_mc, snd_voice_ai, snd_voice_ai, snd_voice_mc, snd_voice_ai, 
			snd_voice_mc, snd_voice_ai, snd_voice_mc, snd_voice_ai, snd_voice_mc, snd_voice_ai, snd_voice_mc, 
			snd_voice_ai, snd_voice_ai, snd_voice_mc, snd_voice_ai, snd_voice_mc]
		)
	}
	#endregion
	#region filler
	if(!instance_exists(obj_textbox) and obj_progression.aistage = 1 and walkout = false){
		create_textbox(
			[
				"Welcome back Bryn Briar, have you been to the Provision & Luggage rooms, along with the Observation Deck?",
				"Not yet.",
				"The Provisions room is on Floor 9, as is the Observation deck and the Luggage room is on Floor 6, close to your Cryo Room.\nI will await your decision once you have paid a visit to them.",
				"..."	
			],
			[0, 0, 0, 0],
			[-1, -1, -1,
			[change_variable, obj_core, "walkout", true]
			],
			true,
			["AI Core", "Bryn", "AI Core", "Bryn"],
			[snd_voice_ai, snd_voice_mc, snd_voice_ai, snd_voice_mc]
		)
	}	
	#endregion
	if(!instance_exists(obj_textbox) and obj_progression.aistage = 2 and walkout = false){
		create_textbox(
			[
				"Welcome back Bryn Briar, have you been to the Provision & Luggage rooms, along with the Observation Deck?",
				"Uh-huh.",
				"And have you made your decision?",
				["Not yet...", "Yes, I want you to wake up my mum.", "Yes, I'm going to stay awake. Don't wake mum."],
				"Take your time. You have plenty.\nReturn when you've decided.",
				"So your final decision is to wake her? I am told human adults cope far better under stressful circumstances such as these than children would.\nThis seems like the most logical choice.",
				"Maybe but I'm worried for Mum. I don't want her to just refreeze me and be alone out here. It's not fair, my machine broke but I know she won't listen.\nShe's going to be all alone! Isn't there something you can do?",
				"I cannot. It is just not possible for you both to enter back into Cryogenic stasis. If you believe your mother will not allow you to remain outside of the pods together, then one of you must remain outside of them in isolation.",
				"*Sob, sob* I d-.. I don't want that for mum.. but I'm s-scared and I know that she wouldn't want that for me either.",
				"I have begun the shut down of your mother's pod. By the time of your arrival she will be unfrozen. As she has awoken as intended her memory will be intact, once she has roused. I suggest you leave now to meet her.",
				"*Sob*...",
				"So you wish to spend the remainder of the journey as you are. There is nothing that I have been programmed to do that states I must intervene, though looking at historical data this does appear to be an oversight, likely caused by my repurposing for this task.",
				"Regardless your instruction trumps the data and I will refrain from intervening. Of course you may ask for me to wake her at any time.",
				"No! I can't do that to her. I can't do it to my sister or my dad either. They'll miss me get older but they won't struggle like if we didn't have Mum. Maybe I'll be able to help more too!",
				"I'm so scared. I just don't know what could happen. But I know I don't want to wake up Mum until this journey's over. I can't take even a year of her life away from Talia. I hope they all understand.",
				"You have the means to survive, though I can change the temperature if required and even the gravity or oxygen levels.\nAlso your suit is made from an adaptive, longwearing fabric and will stretch to fit you as you grow. If you have any questions I can also answer any that may arise.",
				"Thank you M... Mister C-*Sob*.. Mister Computer. I'm going to go now.",
				"Goodbye."

			],
			[0, 0, 0, [4, 5, 11], -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1],
			[-1, -1, -1, [-1, -1, -1],
			[change_variable, obj_core, "walkout", true],
			-1, -1, -1, -1, [change_variable, obj_progression, "mum_unfreeze", true],
			[change_variable, obj_core, "walkout", true],
			-1, -1, -1, -1, -1, [change_variable, obj_progression, "stay_unfreeze", true],
			[change_variable, obj_core, "walkout", true],
			],
			true,
			["AI Core", "Bryn", "AI Core", "Bryn", "AI Core", 
			"AI Core", "Bryn", "AI Core", "Bryn", "AI Core","Bryn",
			"AI Core","AI Core","Bryn","Bryn","AI Core", "Bryn", "AI Core"],
			[snd_voice_ai, snd_voice_mc, snd_voice_ai, snd_voice_mc, snd_voice_ai,
			snd_voice_ai, snd_voice_mc, snd_voice_ai, snd_voice_mc, snd_voice_ai, snd_voice_mc,
			snd_voice_ai, snd_voice_ai, snd_voice_mc, snd_voice_mc,snd_voice_ai, snd_voice_mc, snd_voice_ai]
		)
	}
}	

if(walkout and (obj_progression.mum_unfreeze or obj_progression.stay_unfreeze)){
var inst = instance_create_layer(1136, 350, "Transitions", obj_transition);
		if(obj_progression.mum_unfreeze){
			with (inst){
				player_facing_before = dir.down;
				player_facing_after = dir.down;
				relevant_door = inst_3DE339B0;

				change_y = true;
				walk_to = obj_player.y;

				targetRoom = rm_cryo;
				targetX = 775
				targetY = 160

				new_door = inst_6B76572;
				new_walk_target = 195;
			} 
		}	
		if(obj_progression.stay_unfreeze){
			with (inst){
			player_facing_before = dir.down;
			player_facing_after = dir.down;
			relevant_door = inst_3DE339B0;

			change_y = true;
			walk_to = obj_player.y;

			targetRoom = rm_observation;
			targetX = 536;
			targetY = 688;

			new_door = inst_2693D82A;
			new_walk_target = 616;
			}
		}		
}			


#region walkout
if(!instance_exists(obj_textbox) and walkout){
	talk = false;
	obj_intocore.leaving = true;
	inst_14BD1EE6.counter = true;
	obj_player.moveable = false;
	obj_camera.dofollow = true;
	obj_camera.core = false;
	if (obj_player.y > walkout_spot+2 or obj_player.y < walkout_spot-2){
	if(obj_player.y > walkout_spot){
		obj_player.moveY = -1*obj_player.spd;	 
	} else if (obj_player.y < walkout_spot){
		obj_player.moveY = 1*obj_player.spd;	
	}  	
	} 
	if(obj_player.y > walkout_spot-2 and obj_player.y < walkout_spot+2){
		inst_14BD1EE6.minuscounter = true;
		obj_player.moveY = 0;	
		obj_player.moveable = true;
		walkout = false;
		obj_intocore.leaving = false;
		obj_player.transtioning = false;	
	}	
}
#endregion 