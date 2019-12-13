from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('home/', views.home, name='home'),
    path('index/', views.index, name='index'),
    path('index/<str:genre>/', views.indexGenre, name='indexGenre'),
    path("entries/<int:aN>/", views.entries, name="entries"),
]