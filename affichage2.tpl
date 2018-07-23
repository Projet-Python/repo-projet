
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title></title>
  	<meta charset="UTF-8">
</head>
<body>

                <header>
                <h1>Application meteo</h1>
                </header>

			<div>	
				<p> Date:{{city_weather['date']}}</p>			
				<p> Temperature Minimle :{{city_weather['temperaturemin']}}</p>
				<p> Temperature Maximale :{{city_weather['temperaturemax']}}</p>
				<p> Description : {{city_weather['description']}}</p>
			</div>
			<div>
                	        <p> Date:{{city_weather2['date']}}</p>
                	        <p> Temperature Miniale :{{city_weather2['temperaturemin']}}</p>
                	        <p> Temperature Maximale :{{city_weather2['temperaturemax']}}</p>
                	        <p> Description : {{city_weather2['description']}}</p>
              		</div>
			<div>
                        	<p> Date:{{city_weather3['date']}}</p>
                        	<p> Temperature Minimle :{{city_weather3['temperaturemin']}}</p>
                        	<p> Temperature Maximale :{{city_weather3['temperaturemax']}}</p>
                        	<p> Description : {{city_weather3['description']}}</p>
              	  	</div>
			<div>
                        	<p> Date:{{city_weather4['date']}}</p>
                        	<p> Temperature Minimle :{{city_weather4['temperaturemin']}}</p>
                        	<p> Temperature Maximale :{{city_weather4['temperaturemax']}}</p>
                        	<p> Description : {{city_weather4['description']}}</p>
               	 	</div>
			<div>
                        	<p> Date:{{city_weather5['date']}}</p>
                        	<p> Temperature Minimle :{{city_weather5['temperaturemin']}}</p>
                        	<p> Temperature Maximale :{{city_weather5['temperaturemax']}}</p>
                        	<p> Description : {{city_weather5['description']}}</p>
                	</div>
		

</body>
</html>
<style>
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
div{
width:200px;
margin: auto;
margin-top:20px;
text-align:center;
border: 5px solid;
border-color:rgb(0,232,255);
display:inline-block;
}

</style>
