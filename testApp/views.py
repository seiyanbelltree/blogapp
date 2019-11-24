from django.shortcuts import render
from .models import testModel

def test(request):
    testSet = testModel.objects.order_by("testNumber")
    #テンプレートに引数を渡してレスポンス
    return render(request, 'testApp/testTemplate.html', {"testSet": testSet})

def testArticle(request, tN):
    testArticle = testModel.objects.get(testNumber=tN)
    return render(request, 'testApp/testArticle.html', {"testArticle": testArticle})

# Create your views here.
