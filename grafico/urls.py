from django.urls import path
from . import views
from django.contrib.auth.decorators import login_required
# URLConfig
#app_name = 'grafico'
urlpatterns = [
    path('grafico/', login_required(views.grafico), name='grafico'),
    path('generar_grafico/', login_required(views.generar_grafico), name='generar_grafico'),
]
