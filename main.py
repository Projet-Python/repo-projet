#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, run, view, route, request,get,static_file#,requestapp =  Bottle()
app =  Bottle()
import requests
@app.route('/search')
def search():
	contain = {'title': "Saisir la ville pour obtenir ses prévision méteo :"}
	return '''
		Saisir la ville pour obtenir ses prévision méteo :
                <form action="/result" method="post">
                        Ville: <input name="city" type="text" />
                        <input value="Rechercher" type="submit" />
                </form>
        '''


@app.route('/result', method='post')
def result():
#        context = {'title': "Prevision de la semaine. Ville :"}
         city = request.forms.city
         url = "http://api.openweathermap.org/data/2.5/weather?q="+city+"&APPID=7582d9d4adc74a3c33d94751f5ff5d84&units=metric"  
         r = requests.get(url.format(city)).json()
         city_weather = {
            'city' : city,
            'Minimal temperature': r['main']['temp_min'],
            'Maximal temperature': r['main']['temp_max'],
            }
         context = {'city_weather' : city_weather}
         return (context)
	
run(app, host='localhost', port=5000, reloader=True)
                                                            

