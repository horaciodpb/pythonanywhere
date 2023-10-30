#from django.urls import path
#from . import views
# URLConfig
#urlpatterns = [
#    path('crud_escrutinio/', views.crud_escrutinio, name='crud_escrutinio'),
#    path('crearRegistro/', views.crearRegistro, name='crearRegistro'),
#    path('buscar_mesa/', views.buscar_mesa, name='buscar_mesa'),
#    path('eliminarRegistro/<id_registro_votos>', views.eliminarRegistro, name='eliminarRegistro'),
#]
from django.urls import path
from . import views
from django.contrib.auth.decorators import login_required

urlpatterns = [
    path('crud_escrutinio/', login_required(views.crud_escrutinio), name='crud_escrutinio'),
    path('crearRegistro/', login_required(views.crearRegistro), name='crearRegistro'),
    path('buscar_mesa/', login_required(views.buscar_mesa), name='buscar_mesa'),
    path('eliminarRegistro/<id_registro_votos>/', login_required(views.eliminarRegistro), name='eliminarRegistro'),
]
