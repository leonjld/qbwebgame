<?php

function connectDatabase()
{
 $host="qbwebgame.net";
 $user="leonjld";
 $pass="Yes2016Way";
 $db="qbwebgame";
echo $_SERVER['SERVER_ADDR'];
 if(!mysql_connect($host,$user,$pass))
   die("<p>Database cannot be connected!</p>");
 if (!mysql_select_db($db))
   die("<p>Database queensblade not found!</p>");
}



function ChgStrSql($string)
{
 $temp=strtok($string,",");
 $temp2="('".$temp;
 $temp=strtok(",");
 while ($temp) 
 {
  $temp2=$temp2."','".$temp;
  $temp=strtok(",");
 }
 $temp2=$temp2."')";
 return $temp2;
}



function init_svar($i)
{
 $j = 3-$i;
 $_SESSION['pPage'][$i]=57;
 $_SESSION['pMod'][$i]=0;
 $_SESSION['wDis'][$i]=0;
 $_SESSION['cri'][$i]="";
 $_SESSION['pMove'][$i]=0;
 $_SESSION['bonPts'][$i]=0;
 $_SESSION['bonAct'][$i]="";

 switch ($_SESSION['pName'][$i]) {
  case "irma":
 	$_SESSION['dMax'][$i]=1;
	$_SESSION['dNum'][$i]=1;
	break;
  case "nowa":
 	$_SESSION['wBrk'][$i]=0;
	break;
  case "echidna":
 	$_SESSION['dMax'][$i]=3;
	$_SESSION['dNum'][$i]=0;
	$_SESSION['dHan'][$i]=3;
	break;
  case "menace":
 	$_SESSION['wBrk'][$i]=0;
	break;
 }

 $query="select race,hp,shield,helm from char_info where name='".$_SESSION['pName'][$i]."'";
 $result=mysql_query($query);
 if(!$result) {echo $query; die("<p>Query failed!</p>");}
 $charInfo=mysql_fetch_array($result);
 $_SESSION['mVit'][$i]=$charInfo['hp']*$_SESSION['hptimes'][$i];
 $_SESSION['pVit'][$i]=$_SESSION['mVit'][$i];
 if ($charInfo['shield']) $_SESSION['sSma'][$i]=0;
 if ($charInfo['helm'] && $_SESSION['pName'][$j]=="tomoe") $_SESSION['hSpl'][$i]=0;
 if ($charInfo['race']!="Undead" && $_SESSION['pName'][$j]=="menace") {
  $_SESSION['pCurp'][$i]=0;
  $_SESSION['pCurb'][$i]=0;
  $_SESSION['pCurs'][$i]=0;
  $_SESSION['pCurt'][$i]=0;
 }
}



function get_ires($i)
{
 global $table, $actrow;
 $j = 3-$i;

 if ($_SESSION['pMove'][$i]>0) $_SESSION['pMove'][$i]--;
 if (isset($_SESSION['pCurt'][$i])) {
  if ($_SESSION['pCurp'][$i]>0) $_SESSION['pCurp'][$i]--;
  if ($_SESSION['pCurb'][$i]>0) $_SESSION['pCurb'][$i]--;
  $_SESSION['pCurt'][$i]=0;
 }
 $query="select * from ".$_SESSION['pName'][$i]."_sheet where page=".$_SESSION['pSel'][$i];	/* get MOD including bonus */
 $result=mysql_query($query);
 if(!$result) {echo $query; die("<p>Query failed!</p>");}
 $actrow[$i]=mysql_fetch_array($result);
 if (isset($_SESSION['dNum'][$i]) && $_SESSION['wDis'][$i]) $_SESSION['pMod'][$i]=$actrow[$i]['mdf2'];
 else $_SESSION['pMod'][$i]=$actrow[$i]['mdf'];
 if($_SESSION['bonPts'][$i]>0 && (
    $_SESSION['bonAct'][$i]=='All' ||
    strpos(" ".$_SESSION['bonAct'][$i],$actrow[$i]['type']) ||
    strpos(" ".$_SESSION['bonAct'][$i],$actrow[$i]['name']) ||
    strpos(" ".$_SESSION['bonAct'][$i],$actrow[$i]['color']) ))
  $_SESSION['pMod'][$i]+=$_SESSION['bonPts'][$i];

 $query="select p".$_SESSION['pSel'][$i]." from ".$_SESSION['pName'][$i]."_".$table." where page=".$_SESSION['pSel'][$j];	/* get resulting page for player1 */
 $result=mysql_query($query);
 if(!$result) {echo $query; die("<p>Query failed!</p>");}
 $result=mysql_fetch_array($result);
 $_SESSION['pPage'][$i]=$result[0];
}



function turn_page($i)
{
 global $tPage, $actrow, $resrow;
 $j = 3-$i;

 if ($_SESSION['pName'][$i]=="irma") {						/* Irma: dagger lodged in shield, parry & stab, dagger damage */
  if ($_SESSION['pPage'][$i]==63) {
   if (!isset($_SESSION['sSma'][$j]) || $_SESSION['sSma'][$j]) 
    $tPage[$i]=59;
   else $_SESSION['pMod'][$i]=-99;
  }
  else if ($_SESSION['pPage'][$i]==45) {
   if (!$_SESSION['wDis'][$i] && $_SESSION['dNum'][$i]) {
    $tPage[$j]=13;
    $_SESSION['pMod'][$i]=-1;
   }
   else $tPage[$i]=55;
  }
  else if ($_SESSION['pPage'][$i]==49) {
   if (!$_SESSION['wDis'][$i] && $_SESSION['dNum'][$i]) {
    $tPage[$j]=53;
    $_SESSION['pMod'][$i]=-1;
   }
   else $tPage[$i]=51;
  }
  else if ($_SESSION['pPage'][$i]==59) {
   if ($resrow[$j]['type']=="Score")
    $tPage[$j]=13;
  }
  else if ($_SESSION['pPage'][$i]==61) {
   if ($resrow[$j]['type']=="Score" && $_SESSION['pName'][$j]!="elina") 
    $tPage[$j]=47;
  }
 }   
 else if ($_SESSION['pName'][$i]=="nowa") {					/* Nowa: staff blocking */
  if ($_SESSION['pPage'][$i]==59)
   if ($resrow[$j]['title']=="Pushed off Balance") $tPage[$j]=19;
 }
 else if ($_SESSION['pName'][$i]=="tomoe") {					/* Tomoe: no hit in leg, helm split */
  if ($_SESSION['pPage'][$j]==53) {
   if ($actrow[$i]['color']=="Red" || $_SESSION['pSel'][$i]==28) 
    $tPage[$j]=7;
  } 
  else if ($_SESSION['pPage'][$j]==13) {
   if ($actrow[$i]['color']=="Blue") 
    $tPage[$j]=53;
  } 
  if ($_SESSION['pPage'][$i]==55) {
   if ($resrow[$j]['type']=="Score") {
    if (!isset($_SESSION['hSpl'][$j]) || $_SESSION['hSpl'][$j]) 
     $tPage[$j]=53;
    else $_SESSION['hSpl'][$j]=1;
   }
  }
 } 
 else if ($_SESSION['pName'][$i]=="echidna") {					/* Echidna: dagger lodged in shield, parry and stab, foot sweep  */
  if ($_SESSION['pPage'][$i]==63) {
   if (!isset($_SESSION['sSma'][$j]) || $_SESSION['sSma'][$j]) 
    $tPage[$i]=59;
   else $_SESSION['pMod'][$i]=-99;
  }
  else if ($_SESSION['pPage'][$i]==49) {
   if ($resrow[$j]['type']=="Score") 
    $_SESSION['pMod'][$i]=3;
  }
  else if ($_SESSION['pPage'][$i]==25) {
   if ($resrow[$j]['type']=="Score") {
    $tPage[$j]=41;
    $_SESSION['pMove'][$j]=2;
   }
  }
 }
 else if ($_SESSION['pName'][$i]=="menace") {					/* Menace: shrieking */
  if ($_SESSION['pPage'][$i]==11) 
   if ($resrow[$j]['type']=="Score") 
    $tPage[$j]=27;
 }
 else if ($_SESSION['pName'][$i]=="elina") {					/* Elina: foot sweep */
  if ($_SESSION['pPage'][$i]==49)
   if ($resrow[$j]['type']=="Score") 
    $tPage[$j]=41;
 }

 if (isset($_SESSION['wBrk'][$i]))						/* weapon broken for corresponding characters */
   if ($_SESSION['wBrk'][$i] && $actrow[$i]['required']=="Weapon")
    $_SESSION['pMod'][$i]-=$_SESSION['wBrk'][$i]; 
}


function res_eff($i)
{
 global $chgVit, $actrow,  $resrow;
 $j = 3-$i;

 /* ---------------------- common effects ---------------------------- */
 
 if ($resrow[$i]['type']=="Recover") $_SESSION['pVit'][$i]+=$resrow[$i]['score'];		/* player recover */
 if ($resrow[$i]['type']=="Score") $chgVit[$i]=$resrow[$i]['score']+$_SESSION['pMod'][$j];	/* check if player is hit */
 if ($chgVit[$i]<0) $chgVit[$i]=0;

 /* ----------------- character specific effects --------------------- */

 if ($_SESSION['pName'][$i]=="irma") {							/* Irma: dagger only parrying */
  if ($_SESSION['wDis'][$i] && strpos(" ".$resrow[$i]['title'],"Parrying")) 
   $chgVit[$i]++;
 }
 else if ($_SESSION['pName'][$i]=="menace") { 						/* Menace: Royal Headbutt, broken weapon */
  if ($_SESSION['pPage'][$i]==63 && $resrow[$j]['type']=='Score')
   $chgVit[$i]+=2;
  else if ($_SESSION['pPage'][$i]==55) $_SESSION['wBrk'][$i]=5;
 }
 else if ($_SESSION['pName'][$i]=="elina") {
  if ($_SESSION['pPage'][$i]==11 && $resrow[$j]['type']=="Score") 
   $_SESSION['pMove'][$j]=1; 
  else if ($_SESSION['pPage'][$i]==59 || $_SESSION['pPage'][$i]==63) {
   if ($resrow[$j]['type']=="Score") $_SESSION['pMove'][$j]=2;
  }
  else if ($_SESSION['pPage'][$i]==47 && $resrow[$j]['title']=="Dazed") {
   if (!$_SESSION['cri'][$j]) $_SESSION['cri'][$j]=$resrow[$j]['c_restricted'];
   else if (!strpos(" ".$_SESSION['cri'][$j],$resrow[$j]['c_restricted'])) 
    $_SESSION['cri'][$j]=$_SESSION['cri'][$j].','.$resrow[$j]['c_restricted'];
  }
 }
 if ($_SESSION['pName'][$j]=="menace") {						/* if facing Menace */
  if ($resrow[$i]['type']=='Score' && $chgVit[$i]>0) {
   if ($_SESSION['pPage'][$j]==63)
    $chgVit[$i]*=2;
   else if ($_SESSION['wDis'][$j] && $actrow[$j]['type']=="Bare Hand")
    $chgVit[$i]*=2;
  }
 }

 if (isset($_SESSION['hSpl'][$i]))							/* if helm split */
  if ($_SESSION['hSpl'][$i] && $_SESSION['pPage'][$i]==7) 
   $chgVit[$i]+=2;
 if (isset($_SESSION['pCurt'][$i])) {							/* if cursed by Menace */
  if ($resrow[$i]['type']=="Score") {
   if ($_SESSION['pPage'][$j]==49) $_SESSION['pCurp'][$i]=3;
   else if ($_SESSION['pPage'][$j]==59) $_SESSION['pCurb'][$i]=3;
   else if ($_SESSION['pPage'][$j]==17) $_SESSION['pCurs'][$i]=1;
  }
  if ($_SESSION['pCurp'][$i]) $_SESSION['pCurt'][$i]++;
  if ($_SESSION['pCurb'][$i]) $_SESSION['pCurt'][$i]+=2;
  if ($_SESSION['pCurs'][$i]) $_SESSION['pCurt'][$i]++;
  $chgVit[$i]+=$_SESSION['pCurt'][$i];
 }

 /* ------------------------- inflict damage -------------------------- */

 if ($chgVit[$i]>0) {									/* player is hit */
  $_SESSION['pVit'][$i]-=$chgVit[$i];
  if ($resrow[$i]['critical'] && $chgVit[$i]>=$resrow[$i]['critical']) {		/* player reaches critical state */
   if (!$_SESSION['cri'][$i]) $_SESSION['cri'][$i]=$resrow[$i]['c_restricted'];
   else if (!strpos(" ".$_SESSION['cri'][$i],$resrow[$i]['c_restricted'])) 
    $_SESSION['cri'][$i]=$_SESSION['cri'][$i].','.$resrow[$i]['c_restricted'];
  }
 }
 if ($resrow[$i]['type']=="Bonus" && $resrow[$i]['allowed']!="Weapon") {		/* update player bonus */
  $_SESSION['bonPts'][$i]=$resrow[$i]['score'];
  $_SESSION['bonAct'][$i]=$resrow[$i]['allowed'];
 }
 else {
  $_SESSION['bonPts'][$i]=0;
  $_SESSION['bonAct'][$i]="";
 }
}



function man_wpn($i)
{
 $j = 3-$i;

 /* ---------- if player is Echidna ----------- */
 if ($_SESSION['pName'][$i]=='echidna') {					
  if($_SESSION['pSel'][$i]==38 || $_SESSION['pSel'][$i]==22) {				/* if Echidna has chosen twin-blade mode */
   if (!$_SESSION['sSma'][$i]) $_SESSION['sSma'][$i]=2;					/* drop shield if equipped */
   if (!$_SESSION['dNum'][$i] && $_SESSION['dHan'][$i]>0) {				/* draw a dagger at hand if had none */
    $_SESSION['dNum'][$i]++;
    $_SESSION['dHan'][$i]--;
   }
  }
  if ($_SESSION['pPage'][$i]==27) {
   if ($_SESSION['wDis'][$i]!=1) $_SESSION['wDis'][$i]=1;				/* if carrying main weapon, dislodged */
   else if ($_SESSION['dNum'][$i]>0 && $_SESSION['pSel'][$i]!=46) 
     $_SESSION['dNum'][$i]--;								/* if carrying only dagger, lose one */	
   }
   else if ($_SESSION['pPage'][$i]==43) {
    if ($_SESSION['rtrSel'][$i]=='shield' && $_SESSION['sSma'][$i]==2) $_SESSION['sSma'][$i]=0;				/* if Echidna with "retrieve shield" checked, retrived shield */
    else if ($_SESSION['rtrSel'][$i]=='sword' && $_SESSION['wDis'][$i]==1) $_SESSION['wDis'][$i]=0;		       		/* if Echidna with "retrieve weapon" checked, retrived weapon */
    else if ($_SESSION['rtrSel'][$i]=='dagger' && ($_SESSION['dNum'][$i]+$_SESSION['dHan'][$i]<$_SESSION['dMax'][$i]))	/* if Echidna with "retrieve dagger" checked, retrived dagger */
     $_SESSION['dNum'][$i]++;	
   }
   else if ($_SESSION['pPage'][$i]==55) {						/* shield smashed */
    $_SESSION['sSma'][$i]=1;
    if ($_SESSION['pName'][$j]=="echidna") $_SESSION['dMax'][$j]=3;
    else if ($_SESSION['pName'][$j]=="irma") $_SESSION['dMax'][$j]=1;
   }
   else if ($_SESSION['pPage'][$i]==33 || $_SESSION['pPage'][$i]==61) {			/* Echidna in dodging state */
    if ($_SESSION['ddgSel'][$i]=="sword" && $_SESSION['wDis'][$i]==2) 			/* if select to draw sword when dodging */
     $_SESSION['wDis'][$i]=0;								/* draw out the sword if sheathed */
    else if ($_SESSION['ddgSel'][$i]=="dagger" && $_SESSION['dHan'][$i]>0) {			/* if select to use dagger when dodging */
     if ((!$_SESSION['wDis'][$i])+(!$_SESSION['sSma'][$i])+$_SESSION['dNum'][$i]<2) {	/* if hand available draw out a dagger */
      $_SESSION['dNum'][$i]++;
      $_SESSION['dHan'][$i]--;
     }	
     else if (!$_SESSION['wDis'][$i]) {							/* if full-handed replace the sword with a dagger */
      $_SESSION['wDis'][$i]=2;
      $_SESSION['dNum'][$i]++;
      $_SESSION['dHan'][$i]--;
     }		
    }
   }
   else if ($_SESSION['pPage'][$i]==29) {						/* Echidna in ducking state */
    if ($_SESSION['dNum'][$i]+$_SESSION['dHan'][$i]<$_SESSION['dMax'][$i]) 
     $_SESSION['dNum'][$i]++;								/* automatically retrieve a dagger from ground */
   }
   if (!($_SESSION['wDis'][$i])+(!$_SESSION['sSma'][$i])+$_SESSION['dNum'][$i]>2) {	/* if full-handed put a dagger into the holster*/
    $_SESSION['dNum'][$i]--;
    $_SESSION['dHan'][$i]++;
   }
 }
 /* ----------- if player1 is others ----------- */
 else if ($_SESSION['pPage'][$i]==27) {
  if (!$_SESSION['wDis'][$i]) $_SESSION['wDis'][$i]=1;					/* if carrying main weapon, dislodged */
  else if ($_SESSION['pName'][$i]=="irma")
   if ($_SESSION['dNum'][$i]>0 && ($_POST['pSel1']!=46 || $_POST['pSel2']==30)) 
    $_SESSION['dNum'][$i]--;								/* if Irma carrying only dagger, lose one */
 }
 else if ($_SESSION['pPage'][$i]==43) {
  if ($_SESSION['wDis'][$i]==1) $_SESSION['wDis'][$i]=0;				/* if main weapon was dislodged, retrived it */
  else if ($_SESSION['pName'][$i]=="irma") 
   if ($_SESSION['dNum'][$i]<$_SESSION['dMax'][$i]) $_SESSION['dNum'][$i]++;		/* if Irma's main weapon was already carried, she can pick up one dagger*/
 }
 /* -------- weapon broken page for those whose weapon is breakable  ----------- */
 if (isset($_SESSION['wBrk'][$i]) && (!isset($_SESSION['wBrk'][$j]) || !$_SESSION['wBrk'][$j])) {
  if ($_SESSION['pName'][$i]=="nowa" && $_SESSION['pPage'][$i]==63)
   $_SESSION['wBrk'][$i]+=2;
  else if ($_SESSION['pName'][$i]=="menace" && $_SESSION['pPage'][$i]==55) 
   $_SESSION['wBrk'][$i]=5;
 }
 /* -------- shield smashed page for those with shields --------------- */
 if (isset($_SESSION['sSma'][$i]) && (!isset($_SESSION['wBrk'][$j]) || !$_SESSION['wBrk'][$j])) {
  if ($_SESSION['pPage'][$i]==55)
   $_SESSION['sSma'][$i]=1;
  if ($_SESSION['pName'][$j]=="echidna") $_SESSION['dMax'][$j]=3;
  else if ($_SESSION['pName'][$j]=="irma") $_SESSION['dMax'][$j]=1;
 }
 /* -------- throwing dagger page for those with daggers ----------- */
 if (isset($_SESSION['dNum'][$i])) 
  if ($_SESSION['dNum'][$i]>0 && ($_POST['pSel1']==36 || $_POST['pSel1']==54) && 
     ($resrow[$j]['type']=="Score" || $_SESSION['pPage'][$i]==63 || $_SESSION['pPage'][$i]==61 || $_SESSION['pPage'][$i]==59)) {
   $_SESSION['dNum'][$i]--;				
   if ($_SESSION['pPage'][$i]==63) $_SESSION['dMax'][$i]--;
  }	

}



function get_query($i)
{
 global $resrow;
 $j = 3-$i;

 $query="select * from ".$_SESSION['pName'][$i]."_sheet";	    
 if (!strpos($resrow[$i]['title'],"Extended Range")) $query=$query." where page<50";
 else $query=$query." where page>=50";
 if ($resrow[$i]['allowed'] && $resrow[$i]['type']!="Bonus") {
  $subquery=ChgStrSql($resrow[$i]['allowed']);
  $query=$query." and (color in ".$subquery." or name in ".$subquery." or type in ".$subquery.")";
 }
 else if ($resrow[$i]['restricted']) {
  $subquery=ChgStrSql($resrow[$i]['restricted']);
  $query=$query." and (not color in ".$subquery." and not name in ".$subquery." and not type in ".$subquery.")";
 }
 if ($_SESSION['cri'][$i]) {
  $subquery=ChgStrSql($_SESSION['cri'][$i]);
  $query=$query." and ((not color in ".$subquery." and not type in ".$subquery.") or name = 'Retrieve Weapon')";
 }
 if ($_SESSION['wDis'][$i]) {
  if (!isset($_SESSION['dNum'][$i])) $query=$query." and required not like '%Weapon%'";
  else if (!$_SESSION['dNum'][$i]) $query=$query." and required not like '%Weapon%'";
 }
 if (isset($_SESSION['sSma'][$i]))
  if ($_SESSION['sSma'][$i]) $query=$query." and required not like '%Shield%'";
 if (isset($_SESSION['dNum'][$i]))
  if (!$_SESSION['dNum'][$i]) $query=$query." and name not like '%Throw%' and type not like '%Throw%'";
 if (isset($_SESSION['dHan'][$i]))
  if ((!$_SESSION['dHan'][$i] && !$_SESSION['dNum'][$i]) || $_SESSION['wDis'][$i]) $query=$query." and type not like '%Sword%'";
 if ($_SESSION['pMove'][$i]) $query=$query." and (type='Move' or color='Brown')";

 return $query;
}



function show_info($i)
{
 global $resrow, $chgVit;
 echo "\n     <span class='status'>";			     
 if (!$_SESSION['wDis'][$i]) $status="Held";
 else if ($_SESSION['wDis'][$i]==1) $status="<span class='damage'>Dislodged</span>";
 else if ($_SESSION['wDis'][$i]==2) $status="<span class='damage'>Sheathed</span>";
 echo "Weapon: ", $status;
 if (isset($_SESSION['wBrk'][$i]))
  if ($_SESSION['wBrk'][$i]) echo "<span class='damage'> (Broken: -",$_SESSION['wBrk'][$i],")</span>";
 if (isset($_SESSION['sSma'][$i])) {
  if (!$_SESSION['sSma'][$i]) $status="Held";
  else if ($_SESSION['sSma'][$i]==1) $status="<span class='damage'>Smashed</span>";
  else if ($_SESSION['sSma'][$i]==2) $status="<span class='damage'>Dropped</span>";
 echo "; Shield: ", $status;
 }
 if (isset($_SESSION['hSpl'][$i]))
  if ($_SESSION['hSpl'][$i]) echo "; <span class='damage'>Helm Split</span>";
 if (isset($_SESSION['dNum'][$i])) {
  if (isset($_SESSION['dHan'][$i])) 
   $status=$_SESSION['dNum'][$i]."/".$_SESSION['dHan'][$i]."/".($_SESSION['dMax'][$i]-$_SESSION['dNum'][$i]-$_SESSION['dHan'][$i]);
  else $status=$_SESSION['dNum'][$i]."/".($_SESSION['dMax'][$i]-$_SESSION['dNum'][$i]);
  echo "; Dagger: ", $status;
 }
 echo "</span><br/>\n     <span class='emp'>", $resrow[$i]['title'], ": </span><span class='status'>", $resrow[$i]['info'], "</span><br/>";
 if ($_SESSION['cri'][$i]) echo "\n     <span class='damage'> Critical: No ", $_SESSION['cri'][$i], " in remaining time</span><br/>";
 else echo "\n     <span class='damage'>&nbsp;</span><br/>";
 if ($_SESSION['pMove'][$i]) echo "\n     <span class='damage'> Hampered: Only Move in the next ", $_SESSION['pMove'][$i], " turn(s)</span><br/>";
 else echo "\n     <span class='damage'>&nbsp;</span><br/>";
 if ($chgVit[$i]>0) echo "\n     <span class='damage'>Received ", $chgVit[$i], " point(s) of damage</span><br/>";
 else if ($resrow[$i]['type']=="Recover") echo "\n     <span class='recover'>Recovered ", $resrow[$i]['score'], " point(s) of health</span><br/>";
 else echo "\n     <span class='damage'>&nbsp;</span><br/>";
 if ($_SESSION['pCurt'][$i]) echo "\n     <span class='damage'> Cursed:  ", $_SESSION['pCurt'][$i], " of total ", $chgVit[$i], " point(s) of damage</span><br/>";
 else echo "\n     <span class='damage'>&nbsp;</span><br/>";
 echo "\n     <img src='images/", $_SESSION['pName'][$i], "/", $_SESSION['pName'][$i], $_SESSION['pPage'][$i], ".jpg' />\n    </td>\n";
}


session_start();

?>

<html>
 <head>
  <title>Battle</title>
  <link rel="stylesheet" type="text/css" href="battle.css" />
 </head>
 <body>

<?php
connectDatabase();

if (isset($_POST['pName1'])) {

/* -------- beginning of the battle, reset session variables -------- */

 $_SESSION['rndNum']=1; 
 $_SESSION['pName'][1]=strtolower($_POST['pName1']);
 $_SESSION['pName'][2]=strtolower($_POST['pName2']);
 $_SESSION['hptimes'][1]=$_POST['hptimes1'];
 $_SESSION['hptimes'][2]=$_POST['hptimes2'];
 init_svar(1);
 init_svar(2);
}	

else {

/* ------- getting interaction results, including page turns ------- */

 $_SESSION['rndNum']++;
 $_SESSION['pSel'][1]=$_POST['pSel1'];
 $_SESSION['pSel'][2]=$_POST['pSel2'];
 if($_POST['pSel1']<50) $table="near";	
 else $table="far";
 $actrow[1] = 0;
 $actrow[2] = 0;
 get_ires(1);
 get_ires(2);
 $tPage[1] = 0;
 $tPage[2] = 0;
 $query="select * from ".$_SESSION['pName'][1]."_result where page=".$_SESSION['pPage'][1];	
 $resrow[1]=mysql_query($query);
 if(!$resrow[1]) {echo $query; die("<p>Query failed!</p>");}
 $resrow[1]=mysql_fetch_array($resrow[1]);
 $query="select * from ".$_SESSION['pName'][2]."_result where page=".$_SESSION['pPage'][2];	
 $resrow[2]=mysql_query($query);
 if(!$resrow[2]) {echo $query; die("<p>Query failed!</p>");}
 $resrow[2]=mysql_fetch_array($resrow[2]);
 turn_page(1);
 turn_page(2);
 if ($tPage[1]) $_SESSION['pPage'][1]=$tPage[1];
 if ($tPage[2]) $_SESSION['pPage'][2]=$tPage[2];
}

/* ------- resolving effect, getting restrictions and bonus ------- */

$chgVit[1] = 0;
$chgVit[2] = 0;
$query="select * from ".$_SESSION['pName'][1]."_result where page=".$_SESSION['pPage'][1];	
$resrow[1]=mysql_query($query);
if(!$resrow[1]) {echo $query; die("<p>Query failed!</p>");}
$resrow[1]=mysql_fetch_array($resrow[1]);
$query="select * from ".$_SESSION['pName'][2]."_result where page=".$_SESSION['pPage'][2];	
$resrow[2]=mysql_query($query);
if(!$resrow[2]) {echo $query; die("<p>Query failed!</p>");}
$resrow[2]=mysql_fetch_array($resrow[2]);
res_eff(1);
res_eff(2);

/* ----- weapon management ----- */

if (isset($_POST['pSel1'])) {
 if (isset($_POST['rtrSel1'])) {
  $_SESSION['rtrSel'][1] = $_POST['rtrSel1'];
  $_SESSION['ddgSel'][1] = $_POST['ddgSel1'];
 }
 if (isset($_POST['rtrSel2'])) {
  $_SESSION['rtrSel'][2] = $_POST['rtrSel2'];
  $_SESSION['ddgSel'][2] = $_POST['ddgSel2'];
 }
 man_wpn(1);
 man_wpn(2);
}

/*------- Start Player2 AI -------*/

$query = get_query(2);
$result=mysql_query($query);
if(!$result) {echo $query; die("<p>Query failed!</p>");}
$count=mysql_query(str_replace("select *","select count(*)",$query));
$count=mysql_fetch_array($count);
$rnum=rand(0,$count[0]-1);		/* Randomly select actions */
mysql_data_seek($result,$rnum);
$result=mysql_fetch_array($result);
$pSel2=$result['page'];

if ($_SESSION['pName'][2]=="echidna") {
 if ($_SESSION['wDis'][2]==1) $rtrSel2="sword";
 else if ($_SESSION['sSma'][2]==2) $rtrSel2="shield";
 else $rtrSel2="dagger";
 $rnum=rand(0,10);
 if ($rnum<=4) {
  if ($_SESSION['wDis'][2]==2) $ddgSel2="sword";
  else if (!$_SESSION['dNum'][2] && $_SESSION['dHan'][2]) $ddgSel2="dagger";
  else $ddgSel2="none";
 }
 else $ddgSel2="none";
}

/* ---------------  draw left column --------------- */

echo "  <table class='outline'>
   <caption>ROUND ", $_SESSION['rndNum'], "</caption>
   <tr>
    <td class='top'>
     <h1>YOU (HP=", $_SESSION['pVit'][1], ")</h1>";
show_info(1);

/* ---------------  draw middle column --------------- */

echo "    <td class='sheet'>";	

if ($_SESSION['pVit'][1]>0 && $_SESSION['pVit'][2]>0) {
 $query = get_query(1);
 $result=mysql_query($query);
 if(!$result) {echo $query; die("<p>Query failed!</p>");}
 echo "
     <form action='battle.php' method='post'>
      <input type='submit' class='submit' value='Go Baby!' /><br />";
 if ($_SESSION['pName'][1]=="echidna")
 {
  echo "
      <span class='extra'>
       Retrieve: 
       <input type='radio' name='rtrSel1' value='sword' checked='checked'>Sword</input>
       <input type='radio' name='rtrSel1' value='shield'>Shield</input>
       <input type='radio' name='rtrSel1' value='dagger'>Dagger</input><br />
       Dodge and Draw: 
       <input type='radio' name='ddgSel1' Value='none' checked='checked'>None</input>
       <input type='radio' name='ddgSel1' value='sword'>Sword</input>
       <input type='radio' name='ddgSel1' value='dagger'>Dagger</input><br />
      </span>";
 }
 echo "
      <table class='sheet'>
       <tr><th>Type</th><th>Name</th><th>MOD</th><th>?</th></tr>";
 $begin=1;
 while($row=mysql_fetch_array($result))	{		       
  echo "\n       <tr class='center'>\n        <td>", $row['type'], "</td><td ";
  if ($row['color']=="Black"||$row['color']=="Brown") echo "class='white' ";
  echo "bgcolor='", $row['color'], "'>", $row['name'], "</td><td>";
  if ($_SESSION['wDis'][1] && isset($_SESSION['dNum'][1])) $row['mdf']=$row['mdf2'];
  if ($row['mdf']<-50) echo "SP";
  else {
   if ($row['mdf']>0) echo "+";
   echo $row['mdf'];
  }
  echo "</td>\n        <td><input type='radio' class='select' name='pSel1'";
  if ($begin==1){
   echo " checked='checked'";
   $begin=0;
  }
 echo " value='", $row['page'], "' /></td>\n       </tr>";
 }
 echo "\n      </table>\n      <input type='hidden' name='pSel2' value='$pSel2' /><br />";
 if ($_SESSION['pName'][2]=="echidna") echo "
      <input type='hidden' name='rtrSel2' value='$rtrSel2' /><br />
      <input type='hidden' name='ddgSel2' value='$ddgSel2' /><br />";
 echo "\n     </form>";
}  

else if ($_SESSION['pVit'][1]>$_SESSION['pVit'][2]) echo "\n     <p class='over'>YOU WIN !!</p>";
  else if ($_SESSION['pVit'][1]<$_SESSION['pVit'][2]) echo "\n     <p  class='over'>YOU LOSE...</p>";
    else echo "\n     <p  class='over'>A RARE DRAW</p>";
echo "\n     <form action='battle.php' method='post'>
      <input type='hidden' name='pName1' value='", $_SESSION['pName'][1], "'/>
      <input type='hidden' name='pName2' value='", $_SESSION['pName'][2], "'/>
      <input type='hidden' name='hptimes1' value='", $_SESSION['hptimes'][1], "'/>
      <input type='hidden' name='hptimes2' value='", $_SESSION['hptimes'][2], "'/>
      <input type='submit' value='Rematch' /><br />
     </form>";
echo "\n     <a href='index.php'>Exit Battle</a>";

/* ---------------  draw right column --------------- */

echo "</td>\n    <td class='top'><h1>OPPONENT (HP=".$_SESSION['pVit'][2].")</h1>";
show_info(2);
print "   </tr>
  </table><br />";	

/* --------- Echo the action player1,2 took ---------- */

if (array_key_exists('pSel1',$_POST))				
{
 echo "
  <table>
   <tr class='act1'>
    <td class='nb'>The action you took in the previous turn: </td>
    <td class='nb'>",$actrow[1]['type']," (",$actrow[1]['name'],")</td>
    <td class='nb'>[";						
 if ($actrow[1]['mdf']>0) echo "+";
 if ($actrow[1]['mdf']<-50) echo "S";
 else echo $actrow[1]['mdf'];
 if (isset($actrow[1]['mdf2'])) {
  echo "/";
  if ($actrow[1]['mdf2']>0) echo "+";
  echo $actrow[1]['mdf2'];
 } 
 echo "]</td>
   </tr>\n";
 
 echo "   <tr class='act2'>
    <td class='nb'>The action your opponent took in the previous turn : </td>
    <td class='nb'>",$actrow[2]['type']," (",$actrow[2]['name'],")</td>
    <td class='nb'>[";	
 if ($actrow[2]['mdf']>0) echo "+";
 if ($actrow[2]['mdf']<-50) echo "S";
 else echo $actrow[2]['mdf'];
 if (isset($actrow[2]['mdf2'])) {
  echo "/";
  if ($actrow[2]['mdf2']>0) echo "+";
  echo $actrow[2]['mdf2'];
 } 
 echo "]</td>
   </tr>\n"; 
}

if(!mysql_close()) echo "<p>Database disconnect failed!</p>";	/* disconnect database */

?>

 </body>
</html>