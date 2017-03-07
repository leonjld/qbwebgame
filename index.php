<?php

session_start();
$_SESSION = array();
if (isset($_COOKIE[session_name()])) 
 setcookie(session_name(), '', time()-42000, '/');
session_destroy();

?>

<html>
 <head>
  <title>Queen&#39;s Blade Web Game</title>
  <link rel="Shortcut Icon" href="favicon.ico"/ type="image/ico">
  <style type="text/css">
  body
  {
   font-family: arial;
   font-size: 12px;
   text-align: center;
   background-color: #eeeeee;
  }

  h1
  {
   font-size: 20px;
  }

  h2
  {
   font-size: 16px;
   font-weight: 100;
  }

  span.emp 
  {
   color: red; 
   font-weight: 900;
   font-family: sans-serif;
  }

  img 
  {
   border-width: 0px;
   opacity: 0.3; 
   filter:alpha(opacity=30);
  }

  form
  {
   text-align: center;
  }
  
  table
  {
   margin-left: auto;
   margin-right: auto;
   text-align: left;
   width: 430px;
   font-size: 12px;
  }

  table#profile
  {
   table-layout: fixed;
   border-collapse: separate;
   border-width: thin;
   border-style: solid;
   height: 250px;
   background-color: ffffa0;
  }

  th
  {
   width: 100px;
   text-align: right;
  }

  td.narrow1
  {
   width: 80px;
  }

  td.narrow2
  {
   width: 250px;
  }

  input#pName1,#pName2
  {
   width:80px;
  }
 
  div.charimg
  {
   height: 310px;
   overflow: scroll;
   background-color: white;
  }
  </style>
  <script src="start.js"></script>
 </head>
 <body>
  <h1>WELCOME TO QUEEN&#39;S BLADE WEB GAME!</h1>
  <h2>
   Move your mouse over a character to see her profile, and click on her to select. <br />
   <span class="emp">Newly added: Elina and Menace are now playable! </span><br />
   If you like my website, welcome to sign my guestbook <a href = "./guestbook/">here</a>.<br />
   For more information on game rules and character abilities, I recommend you to  
   <a href="http://www.esglabs.com/othergames/index.html#lostworlds" target="_blank">ESG Labs</a> or 
   <a href="http://www.rephin.com/queens-blade-project/" target="_blank">Relphin</a>.<br />
  </h2>
  <div class="charimg">
<?php
  $charnames = array("Leina","Risty","Irma","Nowa","Tomoe","Echidna","Menace","Elina","Leina3D","Stella");
  foreach($charnames as $charname) 
  {
    echo '
   <img id="'.$charname.'" src="images/_top/'.strtolower($charname).'_top.jpg" alt="'.$charname.'" onclick="setName(this)"
    onmouseover="showCharinfo(this);this.style.opacity=1.0;this.filters.alpha.opacity=100"
    onmouseout="this.style.opacity=0.3;this.filters.alpha.opacity=30" />
';
  }
?>
  </div>
  <br />
  <div class="oppsel">
   <form action="battle.php" method="post">
    <br />
    <table>
     <tr>
      <th><input type="radio" name="choose" id="sel" checked="checked">FIGHT AS:</input></th>
      <td class="narrow1"><input type="text" id="pName1" name="pName1" readonly="readonly" value="Leina" /></td>
      <td class="narrow2">HP:
       <input type="radio" name="hptimes1" value="1" checked="checked">1x</input>
       <input type="radio" name="hptimes1" value="2">2x</input>
       <input type="radio" name="hptimes1" value="3">3x</input>
       <input type="radio" name="hptimes1" value="5">5x</input>
       <input type="radio" name="hptimes1" value="10">10x</input>
      </td>
     </tr>
     <tr>
      <th><input type="radio" name="choose" id="opp">OPPONENT:</input></th>
      <td class="narrow1"><input type="text" id="pName2" name="pName2" readonly="readonly" value="Risty" /></td>
      <td class="narrow2">HP: 
       <input type="radio" name="hptimes2" value="1" checked="checked">1x</input>
       <input type="radio" name="hptimes2" value="2">2x</input>
       <input type="radio" name="hptimes2" value="3">3x</input>
       <input type="radio" name="hptimes2" value="5">5x</input>
       <input type="radio" name="hptimes2" value="10">10x</input>
      </td>
     </tr>
     <tr>
      <td></td>
      <td class="narrow1" id="submit"><input type="submit" value="Let's Duel!" /></td>
     </tr>
    </table>
   </form>
  </div>
  <div id="charprof">
   <table id="profile">
    <tr><th>Name:</th><td>&nbsp;</td></tr>
    <tr><th>Height:</th><td>&nbsp;</td></tr>
    <tr><th>Three Size:</th><td>&nbsp;</td></tr>
    <tr><th>Job:</th><td>&nbsp;</td></tr>
    <tr><th>Weapon(s):</th><td>&nbsp;</td></tr>
    <tr><th>Gear(s):</th><td>&nbsp;</td></tr>
    <tr><th>Likes: </th><td>&nbsp;</td></tr>
    <tr><th>Dislikes:</th><td>&nbsp;</td></tr>
    <tr><th>Hobby:</th><td>&nbsp;</td></tr>
    <tr><th>Game Data:</th><td>&nbsp;</td></tr>
   </table>
  </div>
  <br />
  <p class="bottom">
   This site is made purely for personal fun. The copyrights of the related contents are the properties of 
   <a href="http://queensblade.net/">Hobby Japan (Queen&#39;s Blade)</a>.
   <br />
   If you have any problem with this site please contact 
   <a href="mailto:leonjld@hotmail.com">leonjld@hotmail.com</a>
  </p> 
  <p class="bottom">
   <span class="count">
<?php

$fp = fopen('visits.txt', 'r+');
$visits = fscanf($fp, '%d');
$visits[0] += 1;
print "    Total Visited: $visits[0]";  
fseek($fp, 0);
fprintf($fp, '%d', $visits[0]);
fclose($fp);

?>
   </span>
  </p>
 </body>
</html>