from django.urls import path
from . import views

urlpatterns = [
    path('home', views.home, name='home'),
    path('profile', views.profile, name='profile'),
    path('index/', views.index, name='index'),
    path('index/<str:genre>/', views.indexGenre, name='indexGenre'),
    path("entries/<int:aN>/", views.entries, name="entries"),
]
