from django.urls import path
from . import views

urlpatterns = [
    path('test/', views.test, name='test'),
    path('testarticle/<int:tN>/', views.testarticle, name='testarticle'),
]
