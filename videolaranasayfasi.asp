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
	<div class=main style="height:1300px;">
	
	<br>
	<br>
	<br>
	
	<center>
	
	<iframe allowfullscreen="" frameborder="0" height="270" src="https://www.youtube.com/embed/-J0OvU6Gdrk" width="480"></iframe>

	
	
	
	
	<br> 
	<br> 
		<h4> Yorum yapmanız için <a color="black" href="kayit.htm"> üye ol</a>manız gerekmektedir. Eğer üyeliğiniz varsa <a href="giris.htm"> giriş yap</a>ınız.<h5>
		<br>
		
			<table>
			<th>Videoya Bir Yorum Bırakın ! </th>
				
				<tr>
					
					<td>
					<form action="videoyorum.asp" method="post"><textarea name="metin" rows="15" cols="100">Yorum Alanı</textarea>
					</td>
				</tr>
			</table>
			<br>
			 <input style="width:150px;"  type="submit" value="  Yorumu Gönder  " /></form>
			
			<br>
			<br>
			<br>
		
			<%	
				Set Baglanti = Server.CreateObject("ADODB.Connection")
				Baglanti.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim.mdb"))
				sql="select * from Video;"
				Set Tablom = Baglanti.Execute(sql) 
		%>
		<table  height="100" width="720" border="" cellspacing="1">
		
					<tr> 
					<td width="150"> <b> Tarih/Saat </b>
					</td>
					<td><b> Kullanıcı Adı </b>
					</td>
					<td width="400"> <b> Yorum </b>
					</td>
					</tr>
			<%
					Do While NOT Tablom.EOF %>
						<tr><td><%=Tablom("Tarih")%></td>	<td><%=Tablom("Kim")%></td>	<td><%=Tablom("Yorum")%></td></tr>
						<% Tablom.MoveNext
							Loop
						%>
		</table>
		<%
			Baglanti.Close
			Set Tablom= Nothing
			Set Baglanti= Nothing
		%>
	
	
	
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