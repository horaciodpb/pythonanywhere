from django.urls import path
from . import views
# URLConfig
urlpatterns = [
    path('carga_datos/', views.carga_datos, name='carga_datos')
]
