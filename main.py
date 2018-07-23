#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, run, template, view, route, request,get
app =  Bottle()
import requests
@app.route('/search')
def search():
	return template('affichage')


@app.route('/result', method='post')
def result():
#        context = {'title': "Prevision de la semaine. Ville :"}
         city = request.forms.city
         url = "http://api.openweathermap.org/data/2.5/forecast?q="+city+"&APPID=7582d9d4adc74a3c33d94751f5ff5d84&units=metric"
         r = requests.get(url.format(city)).json()
         city_weather1 = {
                 'date':r['list'][0]['dt_txt'],
                 'temperaturemin':r['list'][0]['main']['temp_min'],
                 'temperaturemax':r['list'][0]['main']['temp_max'],
                 'description':r['list'][0]['weather'][0]['description']
                 }

         city_weather2 = {
                 'date':r['list'][8]['dt_txt'],
                 'temperaturemin':r['list'][8]['main']['temp_min'],
                 'temperaturemax':r['list'][8]['main']['temp_max'],
                 'description':r['list'][8]['weather'][0]['description']
                 }
         city_weather3 = {
                 'date':r['list'][16]['dt_txt'],
                 'temperaturemin':r['list'][16]['main']['temp_min'],
                 'temperaturemax':r['list'][16]['main']['temp_max'],
                 'description':r['list'][16]['weather'][0]['description']
                 }
         city_weather4 = {
                 'date':r['list'][24]['dt_txt'],
                 'temperaturemin':r['list'][24]['main']['temp_min'],
                 'temperaturemax':r['list'][24]['main']['temp_max'],
                 'description':r['list'][24]['weather'][0]['description']
                 }
         city_weather5 = {
                 'date':r['list'][32]['dt_txt'],
                 'temperaturemin':r['list'][32]['main']['temp_min'],
                 'temperaturemax':r['list'][32]['main']['temp_max'],
                 'description':r['list'][32]['weather'][0]['description']
                 }     
         
         context = {'city_weather' : city_weather1, 'city_weather2' : city_weather2, 'city_weather3' : city_weather3,'city_weather4' : city_weather4,
                 'city_weather5' : city_weather5}
         return template('affichage2',context)
run(app, host='localhost', port=5000, reloader=True)
