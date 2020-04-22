from django.urls import path
from . import views

urlpatterns = [
    path('', views.scrapp, name='scrapp'),
    path('get/', views.hello_get_query, name='hello_get_query'),
    path('sandbox/', views.sandbox, name='sandbox'),

]