from django.urls import path
from . import views

urlpatterns = [
    path('test/', views.test, name='test'),
    path('testArticle/<int:tN>/', views.testArticle, name='testArticle'),
]
