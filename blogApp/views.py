from django.shortcuts import render
from django.utils import timezone
from .models import entrymodel

def home(request):
    linkArticleSet = entrymodel.objects.filter(recommend__isnull=False).order_by("recommend")
    firstArticleSet = entrymodel.objects.filter(genreNumber=1)
    return render(request, 'blogApp/home.html', {"linkArticleSet": linkArticleSet, "firstArticleSet": firstArticleSet})

def profile(request):
    linkArticleSet = entrymodel.objects.filter(recommend__isnull=False).order_by("recommend")
    firstArticleSet = entrymodel.objects.filter(genreNumber=1)
    return render(request, 'blogApp/profile.html', {"linkArticleSet": linkArticleSet, "firstArticleSet": firstArticleSet})


def index(request):
    allList = entrymodel.objects.filter(published_date__isnull=False).order_by("published_date")
    latestList = entrymodel.objects.filter(published_date__isnull=False).order_by("-published_date")
    return render(request, 'blogApp/index.html', {"allList": allList, "latestList": latestList})

def indexGenre(request, genre):
    genreList = entrymodel.objects.filter(genre__genre__iexact=genre).filter(published_date__isnull=False).order_by("published_date")
    latestList = entrymodel.objects.filter(genre__genre__iexact=genre).filter(published_date__isnull=False).order_by("-published_date")
    if len(genreList) == 0:
        return render(request, 'blogApp/template.html', {})
    else:
        return render(request, 'blogApp/indexGenre.html', {"genreList": genreList, "latestList": latestList})

def entries(request, aN):
    Article = entrymodel.objects.get(articleNumber=aN)
    linkArticleSet = entrymodel.objects.filter(recommend__isnull=False).order_by("recommend")
    SameGenreSet = entrymodel.objects.filter(genre=Article.genre)
    return render(request, 'blogApp/entries.html', {"Article": Article, "linkArticleSet": linkArticleSet, "SameGenreSet": SameGenreSet})
