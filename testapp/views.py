from django.shortcuts import render
from .models import testmodel
import requests

def test(request):
    testset = testmodel.objects.order_by("testnumber")

    #天気API ここから
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
    print(r.json())
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
        print("x: ", x)
        result.append(r.json()['list'][x]['dt_txt'])
        result.append("\n")
        result.append("気温: ")
        result.append(r.json()['list'][x]['main']['temp'])
        result.append("\n")
        result.append("天気: ")
        result.append(weather_translation[r.json()['list'][x]['weather'][0]['main']])
        result.append("\n")
        icon_id = r.json()['list'][x]['weather'][0]['icon']

    mapped_num = map(str, result) #格納される数値を文字列にする
    result_string = ' '.join(mapped_num)
    weather_icon = "http://openweathermap.org/img/wn/" + icon_id + "@2x.png"
    print(weather_icon)
    # 天気API ここまで
    #テンプレートに引数を渡してレスポンス
    return render(request, 'testapp/testtemplate.html', {"testset": testset, 'result': result_string, 'weather_icon':weather_icon})

def testarticle(request, tN):
    testarticle = testmodel.objects.get(testnumber=tN)
    return render(request, 'testapp/testarticle.html', {"testarticle": testarticle})

# Create your views here.
