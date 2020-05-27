from django.shortcuts import render
import requests
from . import forms

def index(request):
    # 天気API ここから
    api_key = '9d5e9b44cc16df7b93ff06a3051d6177'
    city = "Tokyo,jp"
    url = 'http://api.openweathermap.org/data/2.5/forecast'
    query = {
        'units': 'metric',
        'q': city,
        'cnt': '1',
        'appid': api_key
    }
    r = requests.get(url, params=query)
    result = []
    weather_translation = {
        "Clouds": "曇り",
        "Clear": "晴れ",
        "Tornado": "台風",
        "Squall": "にわか雨",
        "Ash": "火山灰",
        "Dust": "粉塵(dust)",
        "Sand": "砂塵",
        "Fog": "霧（きり）",
        "Haze": "靄（もや）",
        "Smoke": "煙",
        "Mist": "霞（かすみ）",
        "Snow": "雪",
        "Rain": "雨",
        "Drizzle": "霧雨",
        "Thunderstorm": "雷雨",
    }
    for x in range(r.json()['cnt']):
        result.append("気温: ")
        result.append(r.json()['list'][x]['main']['temp'])
        result.append("℃")
        icon_id = r.json()['list'][x]['weather'][0]['icon']

    mapped_num = map(str, result)  # 格納される数値を文字列にする
    result_string = ' '.join(mapped_num)
    weather_icon = "http://openweathermap.org/img/wn/" + icon_id + "@2x.png"
    # 天気API ここまで
    return render(request, 'frontend/index.html', {'result': result_string, 'weather_icon': weather_icon})

def app(request):
    # 天気API ここから
    api_key = '9d5e9b44cc16df7b93ff06a3051d6177'
    city = "Tokyo,jp"
    url = 'http://api.openweathermap.org/data/2.5/forecast'
    query = {
        'units': 'metric',
        'q': city,
        'cnt': '1',
        'appid': api_key
    }
    r = requests.get(url, params=query)
    result = []
    weather_translation = {
        "Clouds": "曇り",
        "Clear": "晴れ",
        "Tornado": "台風",
        "Squall": "にわか雨",
        "Ash": "火山灰",
        "Dust": "粉塵(dust)",
        "Sand": "砂塵",
        "Fog": "霧（きり）",
        "Haze": "靄（もや）",
        "Smoke": "煙",
        "Mist": "霞（かすみ）",
        "Snow": "雪",
        "Rain": "雨",
        "Drizzle": "霧雨",
        "Thunderstorm": "雷雨",
    }
    for x in range(r.json()['cnt']):
        result.append("気温: ")
        result.append(r.json()['list'][x]['main']['temp'])
        result.append("℃")
        icon_id = r.json()['list'][x]['weather'][0]['icon']

    mapped_num = map(str, result)  # 格納される数値を文字列にする
    result_string = ' '.join(mapped_num)
    weather_icon = "http://openweathermap.org/img/wn/" + icon_id + "@2x.png"
    # 天気API ここまで
    return render(request, 'frontend/app.html', {'result': result_string, 'weather_icon': weather_icon})


def test(request):
    return render(request, 'frontend/test.html')

def receive_post(request):
    form = forms.apiForm(request.GET or None)
    api_url = "https://zip-cloud.appspot.com/api/search?zipcode="

    if form.is_valid():
        your_name = request.GET.get('your_name') + "さん、こんにちは。"
        zip_code = request.GET.get('zip_code')
        res = requests.get(api_url + zip_code)
        jsondata = res.json()
        if jsondata["results"] == None:
            address = "存在しません"
        else:
            address = jsondata["results"][0]["address1"]+jsondata["results"][0]["address2"]+jsondata["results"][0]["address3"]+"です"

    else:
        your_name = ""
        zip_code = ""
        address = ""


    d = {
        'form': form,
        'your_name': your_name,
        'zip_code': zip_code,
        'address': address
    }

    return render(request, 'frontend/test.html', d)
