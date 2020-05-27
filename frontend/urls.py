from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='react'),
    path('app', views.app, name='app'),
    path('test', views.receive_post, name='receive_post'),
    path('receive_post', views.receive_post, name='receive_post'),
]