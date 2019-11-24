from django.shortcuts import render
from django.utils import timezone
from .models import Post
from .models import entryModel

def post_list(request):
    posts = Post.objects.filter(published_date__lte=timezone.now()).order_by('published_date')
    return render(request, 'blogApp/template.html', {"posts": posts})

def index(request):
    allList = entryModel.objects.filter(published_date__isnull=False).order_by("published_date")
    latestList = entryModel.objects.filter(published_date__isnull=False).order_by("-published_date")
    return render(request, 'blogApp/index.html', {"allList": allList, "latestList": latestList})

def indexGenre(request, genre):
    genreList = entryModel.objects.filter(genre__genre__iexact=genre).filter(published_date__isnull=False).order_by("published_date")
    latestList = entryModel.objects.filter(genre__genre__iexact=genre).filter(published_date__isnull=False).order_by("-published_date")
    if len(genreList) == 0:
        return render(request, 'blogApp/template.html', {})
    else:
        return render(request, 'blogApp/indexGenre.html', {"genreList": genreList, "latestList": latestList})

def home(request):
    linkArticleSet = entryModel.objects.filter(recommend__isnull=False).order_by("recommend")
    firstArticleSet = entryModel.objects.filter(genreNumber=1)
    return render(request, 'blogApp/home.html', {"linkArticleSet": linkArticleSet, "firstArticleSet": firstArticleSet})

def entries(request, aN):
    Article = entryModel.objects.get(articleNumber=aN)
    linkArticleSet = entryModel.objects.filter(recommend__isnull=False).order_by("recommend")
    SameGenreSet = entryModel.objects.filter(genre=Article.genre)
    return render(request, 'blogApp/entries.html', {"Article": Article, "linkArticleSet": linkArticleSet, "SameGenreSet": SameGenreSet})
