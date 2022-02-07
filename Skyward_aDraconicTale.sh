#!/bin/bash
clear
linebreak="
--------------------------------------------------------------------------------------------------------------------------------------------------
"
shopt -s nocasematch
cat readme
read -n 1 -s -r
clear
echo "$linebreak"
echo -e "\tYour Cave"
echo "$linebreak"
echo -e "\n\tYou wake up in your cave surrounded by your hoard of wealth and items your have collected throughout the years.\n"
sleep 5
echo -e "\tYou see a puddle nearby and decide to study your reflection.\n"
sleep 6
echo -e "\tYou look different… somehow?\n"
sleep 5
echo -e "\tYou don’t feel different, but you seem to have a few more fangs, claws and scales than you last remember.\n\n" 
sleep 6
echo -e "\tWelcome to your life as a mighty dragon!\n"
sleep 5
echo -e "\tMoving away from the puddle, you look around and notice that the cave you are in is massive and there are many tunnels that connect to the 
\tchamber you are currently in.  The cave seems to be lit up with bioluminescent plants. A particularly bright tunnel captures your attention 
\tand you decide to investigate. You reach the end of the tunnel, but your eyes are blinded by the bright rays of the Sun. As your eyes start 
\tto adjust, you are able to make out a forest that spans across your line of sight along with a faraway castle.\n"
sleep 20
echo -e "\tYou suddenly get the urge to travel to a nearby kingdom. Where would you like to travel to?\n"
sleep 5

#Keys
let TRkey=0
let TRkey2=0
let Rkey=0
let RFkey=0
#Points
let Charisma=0
let Confidence=0
let Deception=0
let Strength=0
let Gold=100
let pathP=0
#Gameplay
function main {
ending
end5
echo ""
read -p ">> Type A for Blacksprings, B for The City of Fire, or C to return to your cave: " Intro
case "$Intro" in
	A) 
Blacksprings
;;
	B)
TheCityOfFire
;;
	c)
your_cave
;;
	*)
echo -e "\n\tCommand Invalid. Try again. \n"
main
;;
esac
}


function your_cave {
clear
echo "$linebreak"
echo -e "\tYour Cave"
echo "$linebreak"
echo -e "\tWelcome Home!\n"
echo -e "\tThese are your current stats:\n 
\tCharisma: $Charisma
\tConfidence: $Confidence
\tDeception: $Deception
\tStrength: $Strength
\tGold: $Gold G\n"
echo -e "\tWhere to next?\n"
read -p ">> Type A for the Training Room or B to leave: " YC
case "$YC" in
	a)
Training
;;
	b)
main
;;
	*)
echo -e "\nInput Invaild. Resarting in a few seconds"
sleep 4
your_cave
;;
esac
}

function Training {
clear
echo "$linebreak"
echo -e "\tTraining Room"
echo "$linebreak"
echo -e "\n\tYou go through the tunnel you have labeled \"the Training Room\" and end up in a smaller chamber than your main chamber.
\tThe room is filled with piles of magical scrolls. You notice that one of the scrolls has been separated from the rest and is currently 
\tfloating in the middle of the room. You decide to grab it and read it.
\n\tThe text on the scroll has come to life! \n\n\tPress any key to continue"
read -n 1 -s -r
echo -e "\nScroll: Welcome to your training!"
sleep 2
echo -e "\nScroll: Unix is an operating system. You can interact with Unix by using a Terminal to run comands. Unix is case-sensitive.
\tPay attention to capitalzation. An example of a command you can run is \"touch\". touch creates files. "
sleep 5
echo -e "\nScroll: Try it out! use touch to create the file: scrollFile\n"
read -p ">> $ " t0
ta0="touch scrollFile"
if [ "$t0" = "$ta0" ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again. Reseting in a few seconds"
sleep 4
Training
fi
}
function scrollPath {
sleep 3
clear
echo "$linebreak"
echo -e "\tTraining Room"
echo "$linebreak"
echo -e "\tWhich scroll would you like to read next?\n
\tA) Scroll of cp command
\tB) Scroll of mkdir command
\tC) Scroll of pwd command
\tD) Scroll of cat command
\tE) Scroll of echo command
\tF) Scroll of ls command
\tG) Scroll of rm command
\tH) Scroll of mv command
\tI) Scroll of date command
\tJ) Leave"
read -p ">> Enter the letter that corresponds with your choice: A, B, C, D, E, F, G, H, I, or J: " SP
case "$SP" in
	a)
scrollA
;;
	b)
scrollB
;;
	c)
scrollC
;;
	d)
scrollD
;;
	e)
scrollE
;;
	f)
scrollF
;;
	g)
scrollG
;;
	h)
scrollH
;;
	i)
scrollI
;;
	j)
main
;;
	*)
echo -e "\tInvalid response. Try again."
scrollPath
;;
esac
}
function scrollA {
echo -e "\nScroll: I will teach you about the cp command!
\nScroll: The cp command copys a file. To use it follow the syntax: cp orginalFile newFileCopy "
echo -e "\nScroll: Try it out! use cp to copy the file: scrollFile. Name the new file: scrollFileCopy\n"
read -p ">> $ " t1
if [ "$t1" = 'cp scrollFile scrollFileCopy' ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again."
sleep 2
quit
scrollA
fi
}
function scrollB {
echo -e "\nScroll: I will teach you about the mkdir command!
\nScroll: The mkdir command creates a directory. To use it follow the syntax: mkdir someDirectory."
echo -e "\nScroll: Try it out! use mkdir to create the directory: scrollDir.\n"
read -p ">> $ " t1
if [ "$t1" = 'mkdir scrollDir' ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again."
sleep 2
quit
scrollB
fi
}
function scrollC {
echo -e "\nScroll: I will teach you about the pwd command!
\nScroll: The pwd command prints the working directory. To use it follow the syntax: pwd 
\tAn example output of the pwd command: /home/mnascimento7995/Skyward_a_Draconic_Tale"
echo -e "\nScroll: Try it out! Run the command pwd\n"
read -p ">> $ " t1
if [ "$t1" = 'pwd' ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again."
sleep 2
quit
scrollC
fi
}
function scrollD {
echo -e "\nScroll: I will teach you about the cat command!
\nScroll: The cat command reads a file and outputs the contents to the screen. To use it follow the syntax: cat someFile
\tIf someFile has the text \"Some text\", cat somefile outputs: Some text "
echo -e "\nScroll: Try it out! use cat to output the contents of the file: scrollFile.\n"
read -p ">> $ " t1
if [ "$t1" = 'cat scrollFile' ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again."
sleep 2
quit
scrollD
fi
}
function scrollE {
echo -e "\nScroll: I will teach you about the echo command!
\nScroll: The echo command outputs text to the screen. To use it follow the syntax: echo \"Some text\"
\tThis will output the text: Some text"
echo -e "\nScroll: Try it out! use echo to output the text: Scroll text here\n"
read -p ">> $ " t1
if [ "$t1" = 'echo "Scroll text here"' ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again."
sleep 2
quit
scrollE
fi
}
function scrollF {
echo -e "\nScroll: I will teach you about the ls command!
\nScroll: The ls lists all files and directories in a directory. To use it follow the syntax: ls someDirectory
\tThis will output the files and directories in someDirectory: file1 file2 dir1"
echo -e "\nScroll: Try it out! use ls to list the files and directories in: scrollDir\n"
read -p ">> $ " t1
if [ "$t1" = 'ls scrollDir' ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again."
sleep 2
quit
scrollF
fi
}
function scrollG {
echo -e "\nScroll: I will teach you about the rm command!
\nScroll: The rm deletes or removes a file or directory. To use it follow the syntax: echo rm scrollFile"
echo -e "\nScroll: Try it out! use rm to delete the file: scrollFile\n"
read -p ">> $ " t1
if [ "$t1" = 'rm scrollFile' ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again."
sleep 2
quit
scrollG
fi
}
function scrollH {
echo -e "\nScroll: I will teach you about the mv command!
\nScroll: The mv command moves or renames files. To use it follow the syntax: mv somefile newfile
\tThis will delete somefile and create newfile. newfile will have the same contents as somefile."
echo -e "\nScroll: Try it out! use mv to rename or move the file: scrollFile. Call the new file: newScrollFile\n"
read -p ">> $ " t1
if [ "$t1" = 'mv scrollFile newScrollFile' ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again."
sleep 2
quit
scrollH
fi
}
function scrollI {
echo -e "\nScroll: I will teach you about the date command!
\nScroll: The date command outputs the current date and time. To use it follow the syntax: date
\tAn example of the output is: Wed Nov 25 16:44:50 EST 2020"
echo -e "\nScroll: Try it out! Run the date command!\n"
read -p ">> $ " t1
if [ "$t1" = 'date' ]; then
echo -e "\n\tYou got it! Good job!"
scrollPath
else
echo -e "\n\tNot quite. Try again."
sleep 2
quit
scrollI
fi
}

function quit {
echo ""
read -p ">> To continue enter C. To quit, enter Q: " quit
case "$quit" in
	q)
main
;;
esac
}

function Blacksprings {
clear
echo "$linebreak"
echo -e "\tBlacksprings"
echo "$linebreak"
echo -e "\n\tWelcome to Blacksprings!\n
\tBlacksprings is a Human kingdom in the forest region. The kingdom is ancient. It was established by Humans many thousands of years ago.
\tBlacksprings is ruled by Queen Fia Black and King Cassius Black. The land has many lakes and springs.
\n\tWould you like to travel to the Blackspings Village or the Blacksprings Castle?\n"
read -p ">> Type A for Blacksprings Village, B for Blacksprings Castle, or C to leave Blacksprings: " BS
case "$BS" in
	A)
BlackspringsVillage
;;
	B)
Blacksprings_Castle
;;
	C)
main
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
Blacksprings
;;
esac
}

function Blacksprings_Castle {
if [ $TRkey = 0 ] && [ $TRkey2 = 0 ];then
echo -e "\n\tYou have not been invited to the castle. How would you like to attempt to get in?
\tA) Sneak in
\tB) Burn the gaurds down and force your way in
\tC) Bribe the guards
\tD) Demand to be let in because you are a noble and mighty being
\tE) Leave and come back later\n"
read -p ">> Type A, B, C, D, or E: " BS
echo ""
case "$BS" in
	A)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\tCongrats! You made it into the castle without an invitation! +1 Deception! $linebreak"
let Deception++
let pathP++
BScastlePath
else
echo -e "\tWrong answer. -1 Deception! $linebreak"
let Deception--
Blacksprings_Castle
fi
;;
	B)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\tCongrats! You made it into the castle without an invitation! +1 Strength! $linebreak"
let Strength++
let pathP++
BScastlePath
else
echo -e "\tWrong answer. -1 Strength $linebreak"
let Strength--
Blacksprings_Castle
fi
;;
	C)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
let Charisma++
let pathP++
echo -e "\tCongrats! You made it into the castle without an invitation! +1 Charisma! $linebreak"
BScastlePath
else
let Charisma--
echo -e "\tWrong answer. -1 Charisma! $linebreak"
Blacksprings_Castle
fi
;;
	D)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
let Confidence++
let pathP++
echo -e "\tCongrats! You made it into the castle without an invitation! +1 Confidence! $linebreak"
BScastlePath
else
let Confidence--
echo -e "\tWrong answer. -1 Confidence! $linebreak"
Blacksprings_Castle
fi
;;
	E)
echo "Leave and come back later"
Blacksprings
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
Blacksprings_Castle
;;
esac
else 
BScastlePath
fi
}

function BScastlePath {
sleep 3
clear
echo "$linebreak"
echo -e "\tBlacksprings Castle"
echo "$linebreak"
echo -e "\tWhere in the castle would you like to go?
\tA) The Great Hall
\tB) The Throne Room
\tC) The Royal Gardens
\tD) Leave\n"
read -p ">> Type A, B, C, or D: " BSC
case "$BSC" in
	A)
clear
GreatHall
;;
	B)
clear
ThroneRoom
;;
	C)
clear
RoyalGardens
;;
	D)
Blacksprings
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
BScastlePath
;;
esac
}

function GreatHall {
echo "$linebreak"
echo -e "\tBlacksprings Great Hall"
echo "$linebreak"
echo -e "\n\tYou walk into The Great Hall and a wave of chatter instantly hits your ears. The room is buzzing with people who are conversing 
\twith one another. It takes you a second or two to fully take everything in because of how massive and busy the room is. The room is so large, 
\tthat even a dragon like you can comfortably walk around in it. The walls are lined with huge arched windows, which are the source of the room’s 
\tbright lighting. The room is decorated with furniture made of silk and silver with touches of gold. \n
\tAfter taking in the expansive room, you notice the guests are giving you pointed looks and keeping their distance. You also notice that the crowds 
\tchatter has lowered to a murmur and the flow of conversation has shifted, and they now seem to be talking about you. You decide to ignore them. 
\tA dragon is too proud to engage in or acknowledge gossip.\n"
echo -e "\n\tWhat is your next course of action?
\tA) Gently coax the humans into talking and interacting with you.
\tB) Convince the humans that you are one of them, a human. 
\tC) Threaten the humans and demand they bow down to you and give you all their gold.
\tD) Announce yourself as a noble and proud dragon and scold the humans for not knowing nobility when they see it. 
\tE) Leave\n"
read -p ">> Type A, B, C, D, or E: " GH
case "$GH" in
	A)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! The humans are no longer afraid of you and most become intrested in you. You tell them tales of your adventures and have many
\tgreat laughs with them. +1 Charisma! \n$linebreak"
let Charisma++
let pathP++
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Charisma! \n$linebreak"
let Charisma--
sleep 4
clear
GreatHall
fi
;;
	B)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! The humans somehow buy your story and are convinved that you are not a dragon, and instead a mutated human of sorts. +1 Deception! \n$linebreak"
let Deception++
let pathP++
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
echo -e "\n\tWrong answer. Action Unsuccessful. Try again. -1 Deception! \n$linebreak"
let Deception--
sleep 4
clear
GreatHall
fi
;;
	C)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
let Strength++
Gold=$(( Gold + 500 ))
let pathP++
echo -e "\n\tCongrats! The humans are terrified of you and are quick to bow down and hand over their gold. +1 Strength! +500 gold!  \n$linebreak"
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
let Strength--
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Strength! \n$linebreak"
sleep 4
clear
GreatHall
fi
;;
	D)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
let Confidence++
let pathP++
echo -e "\n\tCongrats! Some of the humans seem apologetic and have started to admire your gorgeous iridescent scales. +1 Confidence! \n$linebreak"
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
let Confidence--
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Confidence! \n$linebreak"
sleep 4
clear
GreatHall
fi
;;
	E)
echo "You leave the Great Hall"
BScastlePath
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
sleep 2
clear
GreatHall
;;
esac
}

function ThroneRoom {
echo "$linebreak"
echo -e "\tBlacksprings Throne Room"
echo "$linebreak"
if [ "$Confidence" -ge 2 ] && [ "$TRkey" = 0 ] && [ "$TRkey2" = 0 ]; then
echo -e "\n\tYou walk in and announce yourself to the guards and use your status as a dragon to demand an audience with the King and Queen.
\tAfter a few seconds of hestitance, the Gaurds let you in. You walk in with your head held high and bow your head slightly to the King and Queen 
\tin order to show respect to their Royal title. If the King and Queen are suprised to see a dragon in their Castle and Throne Room, they do not show it. 
\tThey maintain an air of composure and dignity.
\n\tKing Cassius: You have a lot of nerve barging in uninvited like this. What is it you want?
\tQueen Fia: Is this about Rain?"
echo -e "\n\tWhat is your next course of action?
\tA) Tell the King and Queen that you wish to offer your protection to the Kingdom in exchange for some food from time to time and to be officially welcomed
\tto the Castle as an honored guest and gaurdian of the Kingdom.
\tB) Attempt to sell your shed dragonskin to the King and Queen by convincing them it has magical and medicinal properties.
\tC) Tell the King and Queen to surrender the Kingdom to you, else you will take it by force and burn everything down. 
\tD) Demand that they worship you as a God and that they give you a large sum of gold as tribute.
\tE) Who's Rain?
\tF) Leave\n"
read -p ">> Type A, B, C, D, E, or F: " GH
case "$GH" in
	A)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! The King and Queen decide to take you up on your offer and grant you the title: Guardian of Blacksprings! +1 Charisma! \n$linebreak"
let Charisma++
let pathP++
let TRkey=1
echo -e "\tNow that that's settled, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Charisma! \n$linebreak"
let Charisma--
sleep 4
clear
ThroneRoom
fi
;;
	B)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! The King and Queen are convinced of the Dragonskin's properties. They buy your entire supply! +1 Deception! +250 Gold \n$linebreak"
let Deception++
Gold=$(( Gold + 250 ))
let pathP++
echo -e "\tAfter tricking the King and Queen out of their gold, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
echo -e "\n\tWrong answer. Action Unsuccessful. Try again. -1 Deception! \n$linebreak"
let Deception--
sleep 4
clear
ThroneRoom
fi
;;
	C)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
let Strength++
let pathP++
echo -e "\n\tCongrats! The King and Queen do not want to see their Kingdom turned to ash, so they surrender. The Kingdom of Blacksprings is yours! +1 Strength!  \n$linebreak"
echo -e "\tAfter conquering Blacksprings, you decide to explore other areas. Press any key to continue."
let TRkey2=1
read -n 1 -s -r
BScastlePath
else
let Strength--
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Strength! \n$linebreak"
sleep 4
clear
ThroneRoom
fi
;;
	D)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
Gold=$(( Gold + 500 ))
let Confidence++
let pathP++
echo -e "\n\tCongrats! The King and Queen agree to worship you and give you gold. +1 Confidence! +500 Gold! \n$linebreak"
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
let Confidence--
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Confidence! \n$linebreak"
sleep 4
clear
ThroneRoom
fi
;;
	E)
let pathP++
echo -e "\n\tQueen Fia: Oh? You haven't heard? Rain is a Dragon hunter. But if you haven't met her yet, she probably isn't after you. So, no worries! \n$linebreak"
echo -e "\n\tAfter meeting the King and Queen, and learning about Rain, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
;;
	F)
echo "You leave the Throne Room"
BScastlePath
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
sleep 2
clear
ThroneRoom
;;
esac
elif [ $TRkey = 1 ]; then
echo -e "\t King: How's the Kingdom? Not too much trouble, I hope.
\tQueen: Hungry? Just ask any of the servants to fix something up for you.
\n\t Enter any key to continue:"
read -n 1 -s -r
BScastlePath
elif [ $TRkey2 = 1 ];then
echo -e "\tThe Thrones for the previous Rulers have been replaced by a single Throne fit for a dragon of your size. You decide to sit on your newly acquired
\tThrone for a bit and marvel at your new title: Sovereign of Blackspings
\n\tEnter any key to continue."
read -n 1 -s -r
BScastlePath
else
echo -e "\n\tYou do not have enough Confidence points to unlock this path.
\n\tYou have $Confidence Confidence points
\tYou need: 2 Confidence points
\nEnter any key to continue"
read -n 1 -s -r
BScastlePath 
fi
}

function RoyalGardens {
echo "$linebreak"
echo -e "\tBlacksprings Royal Gardens"
echo "$linebreak"
if [ "$RFkey" = 0 ] && [ "$Rkey" = 0 ]; then
echo -e "\n\tThe Royal Gardens is a large area of greenery and flowers. It has many long paths, each decorated with all sorts of beautiful plants.
\tThere are so many paths that it would be easy to get lost. As you explore further into the garden, you see a human in the distance. They appear to 
\tbe meditating." 
echo -e "\n\tWhat is your next course of action?
\tA) Talk to the mysterious Human.
\tB) Leave the Human alone and exit the Royal Gardens.\n"
read -p ">> Type A or B: " GH
case "$GH" in
	A)
let pathP++
gRain
;;
	B)
echo "You leave the Royal Gardens"
BScastlePath
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
sleep 2
clear
RoyalGardens
;;
esac
else
echo -e "\n\tThe Royal Gardens is a large area of greenery and flowers. It has many long paths, each decorated with all sorts of beautiful plants.
\tThere are so many paths that it would be easy to get lost. "
echo -e "\n\tEnter any key to exit the Royal Gardens."
read -n 1 -s -r
BScastlePath
fi
}

function gRain {
echo -e "\n\tAs you approach, the human quickly takes notice of you and jumps into a fighting stance, while pulling out a sword from seemingly nowhere.
\tNow that the Human is facing toward you, you notice that their left arm is made of metal and they have scars all over their body.
\nMystery Human: Who are you? What does a Dragon want with me?
\nYou: I was just curious about what you were doing out here.
\nMystery Human: I was training. I am a Dragon Hunter and if you don't leave me alone, you'll be my next target.
\nYou: /unfazed/ Have I heard of you?
\nMystery Human: Maybe, I have slayed a few dragons in the area who have been pestering humans. My name is Rain and I bring the pain. Remember that."
echo -e "\n\tWhat is your next course of action?
\tA) Tell Rain you would like to help them slay malicious Dragons. 
\tB) Tell Rain you would like to help them slay malicious Dragons so you can keep an eye on them.
\tC) Fight Rain so she can't slay any more Dragons.
\tD) Tell Rain that a Human shouldn't be trying to slay creatures that are more powerful then they are, and that you could easily take them in a fight. 
\tE) Leave Rain alone.\n"
read -p ">> Type A, B, C, D, E, or F: " GH
case "$GH" in
	A)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! Rain takes you up on your offer and invites you to talk to her more about Dragon slaying later, in the Village Tavern. 
\tShe is too busy training to talk in the Royal Gardens. +1 Charisma! \n$linebreak"
let Rkey=1;
let Charisma++
let pathP++
echo -e "\tNow that that's settled, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Charisma! \n$linebreak"
let Charisma--
sleep 4
clear
RoyalGardens
fi
;;
	B)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! Rain takes you up on your offer and invites you to talk to her more about Dragon slaying later, in the Village Tavern.
\tShe is too busy training to talk in the Royal Gardens. +1 Deception! \n$linebreak"
let Rkey=1
let Deception++
let pathP++
echo -e "\tNow that that's settled, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
echo -e "\n\tWrong answer. Action Unsuccessful. Try again. -1 Deception! \n$linebreak"
let Deception--
sleep 4
clear
RoyalGardens
fi
;;
	C)
fight
if [ $? = 1 ]; then
echo -e "\n\tCongrats! You've defeated Rain! +1 Strength! \n$linebreak"
let Strength++
let pathP++
let RFkey=1
echo -e "\tNow that that's settled, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
sleep 4
clear
echo "$linebreak"
echo -e "\tGameover"
echo "$linebreak"
echo -e "\n\tYou are dead :(
\n\tTo try again, run: ./Skyward:aDraconicTale"
sleep 3
echo -e "\n\tTo exit the game, press any key"
read -n 1 -s -r
echo ""
exit 1
fi
;;
	D)
echo -e "Rain: Oh yeah??? I'll show you! It's time for Rain to bring the pain!"
sleep 5
fight
if [ $? = 1 ]; then
echo -e "\n\tCongrats! You've defeated Rain! +1 Confidence! \n$linebreak"
let Confidence++
let pathP++
let RFkey=1
echo -e "\tNow that that's settled, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BScastlePath
else
sleep 3
clear
echo "$linebreak"
echo -e "\tGameover"
echo "$linebreak"
echo -e "\n\tYou are dead :(
\n\tTo try again, run: ./Skyward:aDraconicTale"
sleep 3
echo -e "\n\tTo exit the game, press any key"
read -n 1 -s -r
echo ""
exit 1
fi
;;
	E)
echo "You leave the Royal Gardens"
BScastlePath
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
sleep 3
clear
gRain
;;
esac
}

function fight {
clear
echo "$linebreak" 
echo -e "\tFight: You VS Rain"
echo "$linebreak"
let hp=100
let Rhp=100
echo -e "\n\tSuccessfully complete quests in order to defeat Rain."
echo -e "\n  Your HP: $hp \nRain's HP: $Rhp\n\n"

while [ $hp -gt 0 ] && [ $Rhp -gt 0 ]; do
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "Rain's HP -20\n"
Rhp=$(( Rhp - 20 ))
else
echo -e "Your HP -20\n"
hp=$(( hp -20 ))
fi
echo -e "  Your HP: $hp \nRain's HP: $Rhp\n"
done

if [ $Rhp -le 0 ]; then
return 1;
elif [ $hp -ge 0 ]; then
return 0;
else
echo "Glitched"
sleep 4
gRain
fi
}

function BlackspringsVillage {
clear
echo "$linebreak"
echo -e "\tBlacksprings Village"
echo "$linebreak"
echo -e "\tWhere in the Village would you like to go?
\tA) Farmer's Market
\tB) Tavern
\tC) Leave\n"
read -p ">> Type A, B, or C: " BSC
case "$BSC" in
	A)
clear
FarmersMarket
;;
	B)
clear
Tavern
;;
	C)
Blacksprings
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
BlackspringsVillage
;;
esac
}

function FarmersMarket {
echo "$linebreak"
echo -e "\tBlacksprings Farmer's Market"
echo "$linebreak"
echo -e "\n\tThe Farmer's Market is buzzing with Humans. None of them get too close to you, but otherwise they do not pay much attention to you.
\tThe scent of food is overwhelming here. It makes you hungry."
echo -e "\n\tWhat is your next course of action?
\tA) Flirt with the Farmer in hopes of free food.
\tB) Get the Farmer to \"Look over there!\", and then steal some food.
\tC) Take food from the farmer while he is looking, maintaining eye contact with the farmer, daring him to say something.
\tD) Demand food from the Farmer because you said so and Humans should obey their superiors.
\tE) Leave\n"
read -p ">> Type A, B, C, D, or E: " GH
case "$GH" in
	A)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! The Farmer blushes and gifts you some food. +1 Charisma! \n$linebreak"
let Charisma++
let pathP++
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BlackspringsVillage
else
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Charisma! \n$linebreak"
let Charisma--
sleep 4
clear
FarmersMarket
fi
;;
	B)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! The Farmer looks and is distracted for long enough for you to steal some food. +1 Deception! \n$linebreak"
let Deception++
let pathP++
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BlackspringsVillage
else
echo -e "\n\tWrong answer. Action Unsuccessful. Try again. -1 Deception! \n$linebreak"
let Deception--
sleep 4
clear
FarmersMarket
fi
;;
	C)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
let Strength++
let pathP++
echo -e "\n\tCongrats! The Farmer says nothing about the food you're stealing from the Farmer and pretends it didn't happen. +1 Strength!  \n$linebreak"
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BlackspringsVillage
else
let Strength--
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Strength! \n$linebreak"
sleep 4
clear
FarmersMarket
fi
;;
	D)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
let Confidence++
let pathP++
echo -e "\n\tThe Farmer gives you a funny look, but gives you food anyway. +1 Confidence! \n$linebreak"
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BlackspringsVillage
else
let Confidence--
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Confidence! \n$linebreak"
sleep 4
clear
FarmersMarket
fi
;;
	E)
echo "You leave the Farmer's Market"
BlackspringsVillage
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
sleep 2
clear
FarmersMarket
;;
esac
}

function Tavern {
echo "$linebreak"
echo -e "\tBlacksprings Tavern"
echo "$linebreak"
if [ $Rkey = 0 ]; then
echo -e "\n\tYou enter the Tavern. Everyone in the Tavern, stops what they are doing for a moment to look at you breifly, 
\tthen they all resume their activities. A Bard sings an old sailor's song from somewhere in the Tavern."
echo -e "\n\tWhat is your next course of action?
\tA) Trade stories with the humans in the Tavern.
\tB) Play pool with some Humans and cheat to win.
\tC) You chug a barrell of beer on a dare while a group of humans chant \"Chug! Chug! Chug!\".
\tD) You show off some cool fire-breathing tricks to a group of Humans.
\tE) Leave\n"
read -p ">> Type A, B, C, D, or E: " GH
case "$GH" in
	A)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! You befriend a group of Humans! +1 Charisma! \n$linebreak"
let Charisma++
let pathP++
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BlackspringsVillage
else
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Charisma! \n$linebreak"
let Charisma--
sleep 4
clear
Tavern
fi
;;
	B)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
echo -e "\n\tCongrats! You win the game of pool! +1 Deception! \n$linebreak"
let Deception++
let pathP++
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BlackspringsVillage
else
echo -e "\n\tWrong answer. Action Unsuccessful. Try again. -1 Deception! \n$linebreak"
let Deception--
sleep 4
clear
Tavern
fi
;;
	C)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
let Strength++
let pathP++
echo -e "\n\tCongrats! You chug the barrell of beer without taking a breath and in a matter of seconds! +1 Strength!  \n$linebreak"
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BlackspringsVillage
else
let Strength--
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Strength! \n$linebreak"
sleep 4
clear
Tavern
fi
;;
	D)
quest=$((RANDOM%10))
Q$quest
if [ $? = 1 ]; then
let Confidence++
let pathP++
echo -e "\n\tCongrats! You're cool tricks impress the group of Humans. +1 Confidence! \n$linebreak"
echo -e "\tAfter you've had your fill of fun, you decide to explore other areas. Press any key to continue."
read -n 1 -s -r
BlackspringsVillage
else
let Confidence--
echo -e "\n\tWrong answer. Action unsuccessful. Try again. -1 Confidence! \n$linebreak"
sleep 4
clear
Tavern
fi
;;
	E)
echo "You leave the Farmer's Market"
BlackspringsVillage
;;
	*)
echo -e "\n\tInvaild Command. Try again.\n"
sleep 2
clear
Tavern
;;
esac
else
echo -e "\n\tYou enter the Tavern. Everyone in the Tavern, stops what they are doing for a moment to look at you breifly, 
\tthen they all resume their activities. A Bard sings an old sailor's song from somewhere in the Tavern.
\n\tYou scan the room, searching for Rain. You spot them at a table in a corner of the Tavern and join them.
\nRain: You came.
\nYou: Of course. What did you want to tell me?
\nRain: I have been hunting a specific dragon for a very long time and was hoping you could help me track the Dragon down. That Dragon is the one that
took my arm and gave me a lot of my scars. They burned down my villiage when I was a child. I was lucky to survive with my life. From that day on,
I swore to dedicate my life to training my sword skills and hunting down malicious Dragons. Will you help me?
\n\tWhat will you choose?
\tA) Yes. You will journey with Rain to avenge her.
\tB) No. Dragon hunting is not for you. You leave the Tavern\n"
read -p ">> Type A or B" GH
case "$GH" in
	A)
end6
;;
	B)
BlackspringsVillage
;;
	*)
echo -e "Invaild entry. Try again."
Tavern
;;
esac
fi
}

function TheCityOfFire {
clear
echo "$linebreak"
echo -e "\tThe City of Fire"
echo "$linebreak"
echo -e "\n\tThe City of Fire is a city of Dragons. It is a large island in the sky and is regarded as the Dragons' mainland. Some even say it is where Dragons 
\toriginated from. While humans are not forbidden in the City, few have ever been in The City of Fire."
echo -e "\nPath coming soon in version 2.0 (will not be availible for the final project submission)\n
\tPress any key to continue"
read -n 1 -s -r
main
}

#Quests
let right=1
let wrong=0

function Q0 {
read -p ">> To succeed in this task, what is the command to create files? " questA
if [ $questA = 'touch' ]; then
return $right
else
return $wrong
fi
}

function Q1 {
read -p ">> To succeed in this task, what is the command to copy a file? " trailB
if [ $trailB = 'cp' ]; then
return $right
else
return $wrong
fi
}

function Q2 {
read -p "To succeed in this task, what is the command to create a directory? " trailC
if [ $trailC = 'mkdir' ]; then
return $right
else
return $wrong
fi
}

function Q3 {
read -p "To succeed in this task, what is the command to print the working directory? " trailD
if [ $trailD = 'pwd' ]; then
return $right
else
return $wrong
fi
}

function Q4 {
read -p "To succeed in this task, what is the command to read the contents of a file?  " trailD
if [ $trailD = 'cat' ]; then
return $right
else
return $wrong
fi
}
function Q5 {
read -p "To succeed in this task, what is the command to output text to the screen? " trailD
if [ $trailD = 'echo' ]; then
return $right
else
return $wrong
fi
}
function Q6 {
read -p "To succeed in this task, what is the command to list files and directories in a directory? " trailD
if [ $trailD = 'ls' ]; then
return $right
else
return $wrong
fi
}
function Q7 {
read -p "To succeed in this task, what is the command to remove or delete a file? " trailD
if [ $trailD = 'rm' ]; then
return $right
else
return $wrong
fi
}
function Q8 {
read -p "To succeed in this task, what is the command to move or rename a file? " trailD
if [ $trailD = 'mv' ]; then
return $right
else
return $wrong
fi
}
function Q9 {
read -p "To succeed in this task, what is the command to output the current date and time? " trailD
if [ $trailD = 'date' ]; then
return $right
else
return $wrong
fi
}

#Endings
function ending {
if [ $pathP -ge 8 ]; then
echo -e "\n\tYou have unlocked the Ending.\n"
read -p ">> Type E to finish the game or C to continue playing: " PP
case "$PP" in
	e)
endif
;;
	c)
;;
	*)
echo -e "\n\tInvaild input. Try again\n"
ending
;;
esac
fi
}

function endif {
if [[ "$Strength" > "$Charisma" && "$Strength" > "$Confidence" && "$Strength" > "$Deception" ]]; then
end1
elif [[ "$Charisma" > "$Strength"  && "$Charisma" > "$Confidence" && "$Charisma" > "$Deception" ]]; then
end2
elif [[ "$Confidence" > "$Strength" && "$Charisma" < "$Confidence" && "$Confidence" > "$Deception" ]]; then
end3
elif [[ "$Deception" > "$Strength" && "$Deception" > "$Confidence" && "$Charisma" < "$Deception" ]] ; then
end4
fi
}
function end1 {
clear
echo "$linebreak"
echo -e "\tStrength Ending"
echo "$linebreak"
echo -e "\n\tWord Domination! You rule the lands through fear and pure physical might!"
sleep 3
echo -e "\n\tTo exit the game, press any key"
read -n 1 -s -r
echo ""
exit 1
}
function end2 {
clear
echo "$linebreak"
echo -e "\tCharisma Ending"
echo "$linebreak"
echo -e "\n\tYou are beloved by all and made protector of the realm"
sleep 3
echo -e "\n\tTo exit the game, press any key"
read -n 1 -s -r
echo ""
exit 1
}
function end3 {
clear
echo "$linebreak"
echo -e "\tConfidence Ending"
echo "$linebreak"
echo -e "\n\tYou are worshiped and respected by all. There are festivals thrown in your honor and shines dedicated to you are built all
\tthoughout the realm"
sleep 3
echo -e "\n\tTo exit the game, press any key"
read -n 1 -s -r
echo ""
exit 1
}
function end4 {
clear
echo "$linebreak"
echo -e "\tDeception Ending"
echo "$linebreak"
echo -e "\n\tYou spend the rest of your days keeping mostly to yourself. Whenever you need or want something you are able to easily obtain
\tit without having to life a finger. You are a master at convincing others to give you anything you want."
sleep 3
echo -e "\n\tTo exit the game, press any key"
read -n 1 -s -r
echo ""
exit 1
}
function end5 {
if [ "$Strength" -le -3 ] || [ "$Charisma" -le -3 ] || [ "$Confidence" -le -3 ] || [ "$Deception" -le -3 ]; then
clear
echo "$linebreak"
echo -e "\tGameover"
echo "$linebreak"
echo -e "\n\tYou are dead :(
\n\tTo try again, run: ./Skyward:aDraconicTale"
sleep 3
echo -e "\n\tTo exit the game, press any key"
read -n 1 -s -r
echo ""
exit 1
fi
}
function end6 {
clear
echo "$linebreak"
echo -e "\tSceret Ending: Journey with Rain"
echo "$linebreak"
echo -e "\n\tYou spend your days traveling with Rain, searching far and wide for the Dragon that took her arm and turned her village to ash. After many
\tyears, you and Rain find the dragon. You, Rain, and the other dragon have an epic battle, from which you and Rain come out of victorious, the evil 
\tdragon slayed. Though not without sacrafice, You lose a foot to match Rain's arm and Rain loses her right eye. But it does not bother you, because
\tyou have also gained something. You have gained a lifelong friend.
\n\tThe End"
sleep 3
echo -e "\n\tTo exit the game, press any key"
read -n 1 -s -r
echo ""
exit 1
}
main 
