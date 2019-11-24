from django.shortcuts import render
from . import forms
from . import test
# Create your views here.

def scrApp(request):
    form = forms.sandboxForm(request.GET or None)

    if form.is_valid():
        message = 'データ検証に成功しました'
        answer = int(request.GET.get('num')) * 2
        answer2 = request.GET.get('text')
        sentence = test.string(answer2)
    else:
        message = 'データ検証に失敗しました'
        answer = ''
        answer2 = ''
        sentence = ''
    d = {
        'form': form,
        'message': message,
        'answer': answer,
        "answer2": answer2,
        "sentence": sentence,
    }
    return render(request, 'scrApp/template.html', d)

def hello_get_query(request):
    d = {
        'your_name': request.GET.get('your_name')
    }
    return render(request, 'scrApp/test.html', d)

def sandbox(request):
    form = forms.sandboxForm(request.GET or None)

    if form.is_valid():
        message = 'データ検証に成功しました'
        answer = int(request.GET.get('num')) * 2
        answer2 = request.GET.get('text')
        sentence = test.string(answer2)
    else:
        message = 'データ検証に失敗しました'
        answer = ''
        answer2 = ''
        sentence = ''
    d = {
        'form': form,
        'message': message,
        'answer': answer,
        "answer2": answer2,
        "sentence": sentence,
    }
    return render(request, 'scrApp/sandbox.html', d)
