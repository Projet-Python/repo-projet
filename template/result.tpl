
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Bottle Météo | Résultat</title>
  	<meta charset="UTF-8">
</head>
<body>

                <h1>Application meteo</h1>
                <p class="category"><h2>Les prévisions de {{city_weather['city_name']}}</h2></p>

                <hr>
			<div>
         <h1 class="date-title">{{city_weather['date'][0:10]}}</h1>
				<p> Temperature Minimle :{{city_weather['temperaturemin']}}</p>
				<p> Temperature Maximale :{{city_weather['temperaturemax']}}</p>
				<p> Description : {{city_weather['description']}}</p>
        <p> <a href="/single/{{city_weather['city_name']}}/{{city_weather['item']}}">En savoir plus</a></p>
			</div>
      <br>
			<div>
        <h1 class="date-title">{{city_weather['date'][0:10]}}</h1>
                	        <p> Temperature Miniale :{{city_weather2['temperaturemin']}}</p>
                	        <p> Temperature Maximale :{{city_weather2['temperaturemax']}}</p>
                	        <p> Description : {{city_weather2['description']}}</p>
                          <p> <a href="/single/{{city_weather2['city_name']}}/{{city_weather2['item']}}">En savoir plus</a></p>
              		</div>
                  <br>

			<div>
        <h1 class="date-title">{{city_weather['date'][0:10]}}</h1>
                        	<p> Temperature Minimle :{{city_weather3['temperaturemin']}}</p>
                        	<p> Temperature Maximale :{{city_weather3['temperaturemax']}}</p>
                        	<p> Description : {{city_weather3['description']}}</p>
                          <p> <a href="/single/{{city_weather3['city_name']}}/{{city_weather3['item']}}">En savoir plus</a></p>
                    </div>
                    <br>
			<div>
        <h1 class="date-title">{{city_weather['date'][0:10]}}</h1>
                        	<p> Temperature Minimle :{{city_weather4['temperaturemin']}}</p>
                        	<p> Temperature Maximale :{{city_weather4['temperaturemax']}}</p>
                        	<p> Description : {{city_weather4['description']}}</p>
                          <p> <a href="/single/{{city_weather4['city_name']}}/{{city_weather4['item']}}">En savoir plus</a></p>
                 	</div>
                  <br>
			<div>
        <h1 class="date-title">{{city_weather['date'][0:10]}}</h1>
                        	<p> Temperature Minimle :{{city_weather5['temperaturemin']}}</p>
                        	<p> Temperature Maximale :{{city_weather5['temperaturemax']}}</p>
                        	<p> Description : {{city_weather5['description']}}</p>
                          <p> <a href="/single/{{city_weather5['city_name']}}/{{city_weather5['item']}}">En savoir plus</a></p>
                	</div>


</body>
</html>

<style media="screen">
/*
Basic input element using psuedo classes
*/

html {
  font-family: 'Lora', sans-serif;
  width: 100%;
}

body {
  margin: 5% auto 0 auto;
  width: 90%;
  max-width: 1125px;
}

h1 {
  font-size: 28px;
  margin-bottom: 2.5%;
}

input,
span,
label,
textarea {
  font-family: 'Ubuntu', sans-serif;
  display: block;
  margin: 10px;
  padding: 5px;
  border: none;
  font-size: 22px;
}

textarea:focus,
input:focus {
  outline: 0;
}
/* Question */

input.question,
textarea.question {
  font-size: 48px;
  font-weight: 300;
  border-radius: 2px;
  margin: 0;
  border: none;
  width: 80%;
  background: rgba(0, 0, 0, 0);
  transition: padding-top 0.2s ease, margin-top 0.2s ease;
  overflow-x: hidden; /* Hack to make "rows" attribute apply in Firefox. */
}
/* Underline and Placeholder */

input.question + label,
textarea.question + label {
  display: block;
  position: relative;
  white-space: nowrap;
  padding: 0;
  margin: 0;
  width: 10%;
  border-top: 1px solid red;
  -webkit-transition: width 0.4s ease;
  transition: width 0.4s ease;
  height: 0px;
}

input.question:focus + label,
textarea.question:focus + label {
  width: 80%;
}

hr{
  border-top: 1px solid #8c8b8b;
}

input.question:focus,
input.question:valid {
  padding-top: 35px;
}

textarea.question:valid,
textarea.question:focus {
  margin-top: 35px;
}

input.question:focus + label > span,
input.question:valid + label > span {
  top: -100px;
  font-size: 22px;
  color: #333;
}

textarea.question:focus + label > span,
textarea.question:valid + label > span {
  top: -150px;
  font-size: 22px;
  color: #333;
}

input.question:valid + label,
textarea.question:valid + label {
  border-color: green;
}

input.question:invalid,
textarea.question:invalid {
  box-shadow: none;
}

input.question + label > span,
textarea.question + label > span {
  font-weight: 300;
  margin: 0;
  position: absolute;
  color: #8F8F8F;
  font-size: 48px;
  top: -66px;
  left: 0px;
  z-index: -1;
  -webkit-transition: top 0.2s ease, font-size 0.2s ease, color 0.2s ease;
  transition: top 0.2s ease, font-size 0.2s ease, color 0.2s ease;
}

input[type="submit"] {
  -webkit-transition: opacity 0.2s ease, background 0.2s ease;
  transition: opacity 0.2s ease, background 0.2s ease;
  display: block;
  opacity: 0;
  margin: 10px 0 0 0;
  padding: 10px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background: #EEE;
}

input[type="submit"]:active {
  background: #999;
}

input.question:valid ~ input[type="submit"], textarea.question:valid ~ input[type="submit"] {
  -webkit-animation: appear 1s forwards;
  animation: appear 1s forwards;
}

input.question:invalid ~ input[type="submit"], textarea.question:invalid ~ input[type="submit"] {
  display: none;
}

.date-title{
  font-size: 1.75em;
}

@-webkit-keyframes appear {
  100% {
    opacity: 1;
  }
}

@keyframes appear {
  100% {
    opacity: 1;
  }
}

</style>
