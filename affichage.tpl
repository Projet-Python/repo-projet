<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css"> 
	<title></title>
</head>
<body>
                
		<header>
		<h1>Application meteo</h1>
		</header>
		<form action="/result" method="post">
	       	<h2>Ville:</h2> <input name="city" type="text" placeholder="Entrer le nom de la ville recherché" />
                        <input value="Rechercher" type="submit" />
                </form>        
</body>
</html>
<style>
form{
width:400px;
margin:auto;
text-align:center;
}
h1{
margin:0px;
text-align:center;
}
body{
height:100%;
width:100%;
margin:0;}


header{
height:200px;

margin:0px;
background-color:rgb(0,232,255);
}

</style>
