"""
URL configuration for Proyecto_IES project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.contrib.auth.decorators import login_required
from django.contrib.auth.views import LogoutView
from elecciones.views import carga_datos
#from crud_escrutinio.views import crud_escrutinio
urlpatterns = [
    path("admin/", admin.site.urls),
    path('login/',include('django.contrib.auth.urls')),
    path('login/', include('login.urls')),
    path('elecciones/carga_datos/', login_required(carga_datos), name='carga_datos'), #FUNCA
    path('crud_escrutinio/', include('crud_escrutinio.urls'), name='crud_escrutinio'), #NO FUNCA
    path('grafico/', include('grafico.urls')), #NO FUNCA
    path('logout/', LogoutView.as_view(next_page='login'), name='logout'),
]
