<% 
	if Session("UserLoggedIn") = "" then
		Response.redirect("giris.htm")
	else
%>
<html>

<head>
		<meta charset="utf-8">
		<title>Fırat ATALAY</title>
	<link rel="stylesheet" type="text/css" href="üstmenü.css" />
	<style>
		a{ 
			color:white;
			font-face:tahoma;
		}
	
	</style>
	
</head>

<body bgcolor="#EAEAEA" >
	<div class=header> 
	<br>
	<br>
	<br>
	<div class=logo style="float:right;"> <img src="resim/logo.png" width="600" height="130" alt="dededassa" </div>
	</div>
	
	
	
		</div>
		<div class=üstmenü>
		<ul>
			<li> <a href="index.asp"><img src="resim/anasayfa.png"></a> </li>
			<li> <a href="kisiler.asp">Kisiler</a> </li>
			<li> <a href="fotograflar.asp">Fotoğraflar</a> </li>
			<li> <a href="videolar.asp">Videolar </a> </li>
			<li> <a href="kimnerede.asp">Kim,Nerede, Ne Yapıyor? </a> </li>
			<li> <a href="harita.asp?x=3375&y=4445&zoom=1100"> Harita </a> </li>
			<li> <a href="forum.asp">Forum</a> </li>
			<li> <a href="kayit.htm"> Kayıt </a> </li>
			<li> <a href="giris.htm"> Panele Giriş</a> </li>
			
		</ul>
		<div style="float:right;">
		<ul>
		<li> <a href="cikis.asp"> <img src="resim/logout.png" /></a> </li>
		<li> <a href="https://www.instagram.com/firatatalay34/"> <img src="resim/instagram.png" /></a> </li>
		<li> <a href="https://www.facebook.com/firatatalay34"> <img src="resim/facebook.png" /></a> </li>
		
		</ul>
		
		</div>
	
		</div>
	
	<div class=main style="height:500px;">
	<br>
<center>	
		<h4><a> <b>Bu alanda bölgesel link kullanılmıştır. Resimdeki kişinin alnının olduğu bölge link içerir. </b> </a></h4>
		<br>
		<h4><a> <b> Fotoğraf yorum sayfasına ilerlemek için link içeren bölgeye tıklayın. </b> </a></h4>

<br>
		<img  src="resim/robotbuyuk.jpg" usemap="#map">
		<map name="map">
		<area shape="rect" coords="0,0,400,100" alt="index" href="fotograflaranasayfası.htm" />
		</map>
</center>

	
	
	</div>
	
	
	
	
	
	<div class="referanslarım"> 
		  <center>
		  <h3> Referanslarım </h3>
		  <br>
		
		 <table width="1000" height  cellspacing="5" cellpadding="5">
		 <tr>
		 <td><a href="http://gezginkisi.com/"><img src="https://i1.wp.com/gezginkisi.com/wp-content/uploads/2017/08/logo-5.png?fit=200%2C90"/></a></td>
		 <td> <img src="resim/ref.png" /> </td>
		 <td> <img src="resim/ref.png" /> </td>
		 <td> <img src="resim/ref.png" /> </td>
		 <td> <img src="resim/ref.png" /> </td>
		 </tr>
		 </table>
		 </center>

	</div>
	
	

	<div class=footer>
		<ul>	
		<li> <a href="#"> Gizlilik Koşulları </a> </li>
		<li> <a href="#"> Yardım Merkezi </a> </li>
		<li> <a href="iletisim.htm"> İletişim </a> </li>
		<li> <a href="benkimim.htm"> Ben Kimim? </a> </li>
		<li> <a href="#">  </a> </li>
		</ul>
	
	<div style="clear:both;">
	<center> 
	 <hr> Copyright © 2018 TÜM HAKLARI SAKLIDIR. <hr>	</center>
	</div>
	

</body>



<html>
<%end if%>