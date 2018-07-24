from bottle import Bottle, run, template, view, route, request,get,static_file
app =  Bottle()
import requests
@app.route('/search')
def search():
	return template('template/search')

@app.route('/single/<city>/<item>', method='post')
def index(city,item):
	url = "http://api.openweathermap.org/data/2.5/forecast?q="+city+"&APPID=7582d9d4adc74a3c33d94751f5ff5d84&units=metric"
	r = requests.get(url.format(city)).json()
	result = {
		   'city_name':city,
		   'date':r['list'][item]['dt_txt'],
		   'temperaturemin':r['list'][item]['main']['temp_min'],
		   'temperaturemax':r['list'][item]['main']['temp_max'],
		   'description':r['list'][item]['weather'][item]['description'],
	}
	return template('template/single',result)

@app.route('/result', method='post')
def result():
#Méthode pour rétourner la date
			

#        context = {'title': "Prevision de la semaine. Ville :"}
         city = request.forms.city
         url = "http://api.openweathermap.org/data/2.5/forecast?q="+city+"&APPID=7582d9d4adc74a3c33d94751f5ff5d84&units=metric"
         r = requests.get(url.format(city)).json()

         city_weather1 = {
		 		 'city_name':city,
                 'date':r['list'][0]['dt_txt'],
                 'temperaturemin':r['list'][0]['main']['temp_min'],
                 'temperaturemax':r['list'][0]['main']['temp_max'],
                 'description':r['list'][0]['weather'][0]['description'],
				 'item':0
                 }

         city_weather2 = {
		 		 'city_name':city,
                 'date':r['list'][8]['dt_txt'],
                 'temperaturemin':r['list'][8]['main']['temp_min'],
                 'temperaturemax':r['list'][8]['main']['temp_max'],
                 'description':r['list'][8]['weather'][0]['description'],
				 'item':8
                 }
         city_weather3 = {
		 		 'city_name':city,
                 'date':r['list'][16]['dt_txt'],
                 'temperaturemin':r['list'][16]['main']['temp_min'],
                 'temperaturemax':r['list'][16]['main']['temp_max'],
                 'description':r['list'][16]['weather'][0]['description'],
				 'item':16
                 }
         city_weather4 = {
		 		 'city_name':city,
                 'date':r['list'][24]['dt_txt'],
                 'temperaturemin':r['list'][24]['main']['temp_min'],
                 'temperaturemax':r['list'][24]['main']['temp_max'],
                 'description':r['list'][24]['weather'][0]['description'],
				 'item':24
                 }
         city_weather5 = {
		 		 'city_name':city,
                 'date':r['list'][32]['dt_txt'],
                 'temperaturemin':r['list'][32]['main']['temp_min'],
                 'temperaturemax':r['list'][32]['main']['temp_max'],
                 'description':r['list'][32]['weather'][0]['description'],
				 'item':32
                 }

         context = {'city_weather' : city_weather1, 'city_weather2' : city_weather2, 'city_weather3' : city_weather3,'city_weather4' : city_weather4,
                 'city_weather5' : city_weather5}
         return template('template/result',context)

# Static Routes
@route("/template/<filename:path>")
def css(filename):
    return static_file(filename, root="./template")

run(app, host='localhost', port=5000, reloader=True)
