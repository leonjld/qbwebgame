onerror=handleErr;

function handleErr(msg,url,l)
{
/* txt="There was an error on this page.\n\n";
 txt+="Error: " + msg + "\n";
 txt+="URL: " + url + "\n";
 txt+="Line: " + l + "\n\n";
 txt+="Click OK to continue.\n\n";
 alert(txt); */
 return true;
}


function setName(elem)
{
 var charname=elem.id;
 if (document.getElementById("sel").checked==true) 
 {
  document.getElementById("pName1").value=charname;
  document.getElementById("opp").checked=true;
 }
 else 
 {
  document.getElementById("pName2").value=charname;
  document.getElementById("sel").checked=true;
 }
}


function noName(elem)
{
 var charname=elem.id;
 alert("Sorry, "+charname+" is currently unavailable, please choose other characters.");
}


function unshowCharinfo()
{
 document.getElementById("charprof").innerHTML=
"<table id='profile'> \
<tr><th>Name:</th><td>&nbsp;</td></tr> \
<tr><th>Height:</th><td>&nbsp;</td></tr> \
<tr><th>Three Size:</th><td>&nbsp;</td></tr> \
<tr><th>Job:</th><td>&nbsp;</td></tr> \
<tr><th>Weapon(s):</th><td>&nbsp;</td></tr> \
<tr><th>Gear(s):</th><td>&nbsp;</td></tr> \
<tr><th>Likes: </th><td>&nbsp;</td></tr> \
<tr><th>Dislikes:</th><td>&nbsp;</td></tr> \
<tr><th>Hobby:</th><td>&nbsp;</td></tr> \
<tr><th>Game Data:</th><td>&nbsp;</td></tr> \
</table>";
}

function showCharinfo(elem)
{
 var title,job,weapon,gear,likes,dislikes,hobby,cm,b,w,h,ht,hp,tp,lp,att;
 var charname=elem.id;
 switch(charname)
 {
  
  case "Leina":
   title="Wandering Warrior";job="Adventurer";weapon="Sword";gear="Bronze Chainmail, Shield, Circlet";
   likes="Wine";dislikes="Corset";hobby="Swordplay Practice";
   cm=170; b=88; w=60; h=85; ht=4; hp=12; tp=6; lp=0; att=1; atype=2; wcond=1; helm=1; shield=1;
   break;
  case "Risty":
   title="Wasteland Bandit";job="Bandit Leader";weapon="Morningstar";gear="Breastplate, Shield";
   likes="Meat and Alcoholics";dislikes="Monkeys";hobby="Tub Bathing";
   cm=179; b=90; w=66; h=85; ht=4; hp=13; tp=5; lp=0; att=1; atype=2; wcond=1; helm=0; shield=1;
   break;
  case "Irma":
   title="Assassin from Kiba";job="Street Cleaner";weapon="Sword, Dagger";gear="Nothing Special";
   likes="Quiescence";dislikes="Interpersonal Relationship";hobby="Help cute stray cats";
   cm=167; b=85; w=58; h=83; ht=4; hp=12; tp=6; lp=0; att=1; atype=1; wcond=1; helm=0; shield=0;
   break;
  case "Nowa":
   title="Guardian of the Forest";job="Forest Guardian";weapon="Staff";gear="'Loo' the Monkey";
   likes="Animals";dislikes="Loneliness";hobby="Collect fascinating stones";
   cm=158; b=78; w=55; h=81; ht=4; hp=10; tp=8; lp=0; att=2; atype=1; wcond=0; helm=0; shield=0;
   break;
  case "Tomoe":
   title="Warrior Shrine Maiden";job="Warrior Shrine Maiden";weapon="Katana";gear="Ofuda, Hachigane";
   likes="Cake (taught by Leina)";dislikes="Vulgar People";hobby="Waka Chanting";
   cm=160; b=87; w=57; h=85; ht=4; hp=12; tp=6; lp=0; att=1; atype=1; wcond=1; helm=1; shield=0;
   break;
  case "Echidna":
   title="Veteran Mercenary";job="Mercenary";weapon="Sword, 3 Daggers";gear="Shield";
   likes="Snake (especially the magical 'Kerutan')";dislikes="Forest Elves' Sermon";hobby="Travel alone";
   cm=162; b=94; w=63; h=86; ht=4; hp=12; tp=0; lp=8; att=1; atype=2; wcond=1; helm=0; shield=1;
   break;
  case "Menace":
   title="Ancient Princess";job="Princess";weapon="'Setra' the Living Septor";gear="Crown";
   likes="Oil Massage";dislikes="People not following orders";hobby="Practise fighting skills";
   cm=157; b=90; w=58; h=85; ht=4; hp=12; tp=0; lp=3; att=1; atype=0; wcond=1; helm=1; shield=0;
   break;
  case "Elina":
   title="Captain of the Royal Guard";job="Royal Guard Captain";weapon="Spear, Iron Claw";gear="Nothing Special";
   likes="Leina";dislikes="Dogs";hobby="Fantasing about Leina";
   cm=168; b=85; w=54; h=84; ht=4; hp=12; tp=9; lp=5; att=1; atype=1; wcond=1; helm=0; shield=0;
   break;
  case "Airi":
   title="Infernal Temptress";job="Maid & Bodyguard";weapon="Scythe";gear="Nothing Special";
   likes="Pretty Girls Spirit Energy";dislikes="Disapearing from this world";hobby="Dancing";
   cm=161; b=86; w=56; h=83; ht=4; hp=8; tp=0; lp=8; att=2; atype=0; wcond=0; helm=0; shield=0;
   break;
  case "Leina3D":
   title="Exalted Warrior";job="Adventurer";weapon="Sword";gear="Bronze Chainmail, Shield, Circlet";
   likes="Wine";dislikes="Corset";hobby="Swordplay Practice";
   cm=170; b=88; w=60; h=85; ht=4; hp=10; tp=0; lp=7; att=1; atype=2; wcond=1; helm=1; shield=1;
   break;
  case "Nanaelle":
   title="Angel of Light";job="Messenger from Heaven";weapon="Celestial Sabre";gear="Nothing Special";
   likes="Males on the Earth";dislikes="Females on the Earth";hobby="Hunt males on the earth";
   cm=162; b=84; w=57; h=82; ht=4; hp=16; tp=0; lp=4; att=1; atype=1; wcond=0; helm=0; shield=0;
   break;
  case "Katorea":
   title="Weapon Merchant";job="Weapon Merchant";weapon="Claymore 'Giant Killer', 3 Javelins";gear="Nothing Special";
   likes="Family";dislikes="Cockroach";hobby="Gardening";
   cm=175; b=120; w=68; h=99; ht=4; hp=12; tp=4; lp=0; att=1; atype=1; wcond=2; helm=0; shield=0;
   break;
  case "Nix":
   title="Master of Flame";job="Witch (Flame)";weapon="Magic Wand Funicula";gear="Nothing Special";
   likes="Funicula";dislikes="All people who mocked her before";hobby="Cooking";
   cm=165; b=86; w=56; h=83; ht=4; hp=10; tp=0; lp=15; att=1; atype=1; wcond=0; helm=0; shield=0;
   break;
  case "Merfa":
   title="Priestess of the Capital";job="Advanced Priestess";weapon="Flail";gear="Shield";
   likes="Watch peoples smiles";dislikes="Holy Postures";hobby="Singing";
   cm=166; b=96; w=67; h=88; ht=4; hp=10; tp=0; lp=12; att=1; atype=1; wcond=0; helm=0; shield=1;
   break;
  case "Mellona":
   title="Shapeshifter";job="Swamp Witch's Aide(Spy & Assasin)";weapon="Freely Changing";gear="Nothing Special";
   likes="Crustacean";dislikes="Unresponsive Opponent";hobby="Mischief Making";
   cm=0; b=0; w=0; h=0; ht=4; hp=7; tp=0; lp=6; att=1; atype=0; wcond=1; helm=0; shield=0;
   break;
  case "Claudette":
   title="Lord of Thunder";job="General Officer";weapon="'Thunderclap' the Two-handed Sword";gear="Helm";
   likes="Cute Things (especially Elina)";dislikes="Irresponsibleness";hobby="Chess Game";
   cm=172; b=89; w=60; h=87; ht=4; hp=11; tp=16; lp=0; att=1; atype=1; wcond=0; helm=1; shield=0;
   break;
  case "Alice":
   title="Gate Opener";job="Treasure Hunter";weapon="2 Dagger-attached Pistols, Whip";gear="Protective Suit";
   likes="Donuts";dislikes="";hobby="";
   cm=0; b=0; w=0; h=0; ht=3; hp=9; tp=12; lp=0; att=1; atype=0; wcond=1; helm=0; shield=0;
   break;
  case "Ink":
   title="Witch Girl";job="Student";weapon="Magical Stick";gear="Nothing Special";
   likes="Nao Kun";dislikes="";hobby="";
   cm=0; b=0; w=0; h=0; ht=3; hp=14; tp=0; lp=5; att=1; atype=1; wcond=0; helm=0; shield=0;
   break;
  case "Iroha":
   title="Favor Returner";job="Housewife";weapon="'Hourin' & 'Ousai'";gear="Nothing Special";
   likes="River Snail, Loach";dislikes="";hobby="Doing anything for husband";
   cm=160; b=91; w=59; h=85; ht=4; hp=14; tp=5; lp=0; att=1; atype=1; wcond=1; helm=0; shield=0;
   break;
  case "Stella":
   title="Female Soldier";job="Soldier";weapon="Steel Sword";gear="Bikini Armor, Leather Shield, Iron Helm";
   likes="Strong Guys, Luidas Wine";dislikes="Tasteless Men, Spell-casting Monsters";hobby="Sword Training";
   cm=182; b=92; w=67; h=88; ht=4; hp=14; tp=6; lp=0; att=1; atype=2; wcond=1; helm=1; shield=1;
   break; 
 }

 document.getElementById("charprof").innerHTML=
"<table id='profile'><tr><th>Name:</th><td>"+charname+" the '"+title+"'</td></tr>"+
"<tr><th>Height:</th><td>"+cm+"</td></tr>"+
"<tr><th>Three Size:</th><td>(B)"+b+
" (W)"+w+" (H)"+h+"</td></tr>"+
"<tr><th>Job:</th><td>"+job+"</td></tr>"+
"<tr><th>Weapon(s):</th><td>"+weapon+"</td></tr>"+
"<tr><th>Gear(s):</th><td>"+gear+"</td></tr>"+
"<tr><th>Likes: </th><td>"+likes+"</td></tr>"+
"<tr><th>Dislikes:</th><td>"+dislikes+"</td></tr>"+
"<tr><th>Hobby:</th><td>"+hobby+"</td></tr>"+
"<tr><th>Game Data:</th><td>Height="+ht+";HP="+hp+";Tactics="+tp+";Luck="+lp+";Attack="+att+"</td></tr></table>";

}
